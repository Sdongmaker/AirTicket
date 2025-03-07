package com.airticket.utils;

import com.wf.captcha.SpecCaptcha;
import com.wf.captcha.base.Captcha;
import org.springframework.stereotype.Component;

import jakarta.servlet.http.HttpSession;

@Component
public class CaptchaUtils {

    private static final String CAPTCHA_SESSION_KEY = "CAPTCHA_CODE";
    
    // 生成验证码
    public String generateCaptcha(HttpSession session, int width, int height) {
        // 创建验证码
        SpecCaptcha captcha = new SpecCaptcha(width, height);
        // 设置验证码类型
        captcha.setCharType(Captcha.TYPE_DEFAULT);
        // 设置长度
        captcha.setLen(4);
        
        // 获取验证码文本
        String code = captcha.text();
        
        // 存入Session
        session.setAttribute(CAPTCHA_SESSION_KEY, code);
        
        // 返回验证码图片Base64编码
        return captcha.toBase64();
    }
    
    // 验证验证码
    public boolean validate(HttpSession session, String inputCode) {
        // 获取Session中的验证码
        String sessionCode = (String) session.getAttribute(CAPTCHA_SESSION_KEY);
        
        // 验证后移除Session中的验证码
        session.removeAttribute(CAPTCHA_SESSION_KEY);
        
        // 验证
        return sessionCode != null && sessionCode.equalsIgnoreCase(inputCode);
    }
} 