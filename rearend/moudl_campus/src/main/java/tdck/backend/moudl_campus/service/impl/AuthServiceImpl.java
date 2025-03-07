package tdck.backend.moudl_campus.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import tdck.backend.moudl_campus.dto.LoginRequest;
import tdck.backend.moudl_campus.dto.LoginResponse;
import tdck.backend.moudl_campus.entity.User;
import tdck.backend.moudl_campus.exception.BusinessException;
import tdck.backend.moudl_campus.mapper.UserMapper;
import tdck.backend.moudl_campus.service.AuthService;
import tdck.backend.moudl_campus.utils.CaptchaUtils;
import tdck.backend.moudl_campus.utils.JwtUtils;

import javax.servlet.http.HttpSession;

@Service
public class AuthServiceImpl implements AuthService {
    
    @Autowired
    private UserMapper userMapper;
    
    @Autowired
    private JwtUtils jwtUtils;
    
    @Autowired
    private CaptchaUtils captchaUtils;
    
    @Autowired
    private HttpSession session;
    
    @Override
    public LoginResponse login(LoginRequest loginRequest, String captchaRequired) {
        // 判断是否需要验证码
        if ("true".equals(captchaRequired)) {
            if (!StringUtils.hasText(loginRequest.getCaptcha())) {
                throw new BusinessException("验证码不能为空");
            }
            
            // 验证验证码
            if (!captchaUtils.validate(session, loginRequest.getCaptcha())) {
                throw new BusinessException("验证码错误或已过期");
            }
        }
        
        // 查询用户
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("username", loginRequest.getUsername());
        User user = userMapper.selectOne(queryWrapper);
        
        if (user == null) {
            throw new BusinessException("用户不存在");
        }
        
        // 验证密码 (实际应用中应该使用加密算法)
        if (!user.getPassword().equals(loginRequest.getPassword())) {
            // 记录登录失败次数，用于判断是否需要验证码
            Integer failCount = (Integer) session.getAttribute("loginFailCount_" + loginRequest.getUsername());
            failCount = failCount == null ? 1 : failCount + 1;
            session.setAttribute("loginFailCount_" + loginRequest.getUsername(), failCount);
            
            throw new BusinessException("密码错误");
        }
        
        // 检查用户状态
        if ("禁用".equals(user.getStatus())) {
            throw new BusinessException("账号已被禁用，请联系管理员");
        }
        
        if ("待审核".equals(user.getStatus())) {
            throw new BusinessException("账号正在审核中，请稍后尝试");
        }
        
        // 登录成功，清除登录失败次数
        session.removeAttribute("loginFailCount_" + loginRequest.getUsername());
        
        // 生成token
        String token = jwtUtils.generateToken(user.getUsername(), user.getUid(), user.getRole());
        String refreshToken = jwtUtils.generateRefreshToken(user.getUsername());
        
        // 构建返回结果
        return LoginResponse.builder()
                .uid(user.getUid())
                .username(user.getUsername())
                .email(user.getEmail())
                .phone(user.getPhone())
                .role(user.getRole())
                .token(token)
                .refreshToken(refreshToken)
                .build();
    }
    
    @Override
    public boolean validateCaptcha(String captcha) {
        return captchaUtils.validate(session, captcha);
    }
} 