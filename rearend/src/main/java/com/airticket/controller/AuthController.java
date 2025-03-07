package com.airticket.controller;

import com.airticket.common.Result;
import com.airticket.dto.LoginRequest;
import com.airticket.dto.LoginResponse;
import com.airticket.service.AuthService;
import com.airticket.utils.CaptchaUtils;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/auth")
public class AuthController {
    
    @Autowired
    private AuthService authService;
    
    @Autowired
    private CaptchaUtils captchaUtils;
    
    @Autowired
    private HttpSession session;
    
    /**
     * 用户登录
     */
    @PostMapping("/login")
    public Result<LoginResponse> login(@Valid @RequestBody LoginRequest loginRequest) {
        // 检查是否需要验证码
        String captchaRequired = "false";
        Integer failCount = (Integer) session.getAttribute("loginFailCount_" + loginRequest.getUsername());
        if (failCount != null && failCount >= 3) {
            captchaRequired = "true";
        }
        
        LoginResponse loginResponse = authService.login(loginRequest, captchaRequired);
        return Result.success("登录成功", loginResponse);
    }
    
    /**
     * 获取验证码
     */
    @GetMapping("/captcha")
    public Result<Map<String, String>> getCaptcha() {
        String base64Captcha = captchaUtils.generateCaptcha(session, 120, 40);
        Map<String, String> result = new HashMap<>();
        result.put("captchaImg", base64Captcha);
        return Result.success(result);
    }
    
    /**
     * 刷新Token
     */
    @PostMapping("/refresh-token")
    public Result<Map<String, String>> refreshToken(@RequestParam String refreshToken) {
        // 这里应该验证refreshToken，并生成新的accessToken
        // 简化实现
        Map<String, String> result = new HashMap<>();
        result.put("accessToken", "newToken");
        return Result.success(result);
    }
    
    /**
     * 检查用户是否需要验证码
     */
    @GetMapping("/need-captcha")
    public Result<Boolean> needCaptcha(@RequestParam String username) {
        Integer failCount = (Integer) session.getAttribute("loginFailCount_" + username);
        boolean needCaptcha = failCount != null && failCount >= 3;
        return Result.success(needCaptcha);
    }
    
    /**
     * 退出登录
     */
    @PostMapping("/logout")
    public Result<Void> logout() {
        // 清除session
        session.invalidate();
        return Result.success("退出成功", null);
    }
} 