package com.airticket.service;

import com.airticket.dto.LoginRequest;
import com.airticket.dto.LoginResponse;

public interface AuthService {
    LoginResponse login(LoginRequest loginRequest, String captchaRequired);
    
    boolean validateCaptcha(String captcha);
} 