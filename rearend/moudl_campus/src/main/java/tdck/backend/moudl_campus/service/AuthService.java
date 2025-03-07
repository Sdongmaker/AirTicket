package tdck.backend.moudl_campus.service;

import tdck.backend.moudl_campus.dto.LoginRequest;
import tdck.backend.moudl_campus.dto.LoginResponse;

public interface AuthService {
    LoginResponse login(LoginRequest loginRequest, String captchaRequired);
    
    boolean validateCaptcha(String captcha);
} 