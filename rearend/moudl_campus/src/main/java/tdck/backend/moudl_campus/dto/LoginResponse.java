package tdck.backend.moudl_campus.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class LoginResponse {
    private Integer uid;
    private String username;
    private String email;
    private String phone;
    private String role;
    private String token;
    private String refreshToken;
} 