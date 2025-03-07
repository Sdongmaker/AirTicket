package com.airticket.service.impl;

import com.airticket.dto.LoginRequest;
import com.airticket.dto.LoginResponse;
import com.airticket.entity.User;
import com.airticket.exception.BusinessException;
import com.airticket.mapper.UserMapper;
import com.airticket.service.AuthService;
import com.airticket.utils.CaptchaUtils;
import com.airticket.utils.JwtUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.servlet.http.HttpSession;
import org.springframework.util.StringUtils;

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
        User user = userMapper.selectByUsername(loginRequest.getUsername());
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