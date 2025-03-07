package tdck.backend.moudl_campus.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import tdck.backend.moudl_campus.exception.BusinessException;
import tdck.backend.moudl_campus.utils.JwtUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component
public class JwtAuthenticationInterceptor implements HandlerInterceptor {
    
    @Autowired
    private JwtUtils jwtUtils;
    
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        // 放行登录相关接口
        String requestURI = request.getRequestURI();
        if (requestURI.contains("/api/auth/") || requestURI.contains("/api/captcha")) {
            return true;
        }
        
        // 检查token
        String token = request.getHeader("Authorization");
        if (token != null && token.startsWith("Bearer ")) {
            token = token.substring(7);
            if (jwtUtils.validateToken(token)) {
                // token有效，将用户信息放入请求属性中
                String username = jwtUtils.extractUsername(token);
                request.setAttribute("username", username);
                return true;
            }
        }
        
        // token无效，抛出异常
        throw new BusinessException(401, "认证失败，请重新登录");
    }
} 