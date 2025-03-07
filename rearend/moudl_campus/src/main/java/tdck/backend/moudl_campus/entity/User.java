package tdck.backend.moudl_campus.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

@Data
@TableName("users")
public class User {
    @TableId(value = "uid", type = IdType.AUTO)
    private Integer uid;
    
    private String username;
    private String password;
    private String email;
    private String phone;
    private String role;
    private String status;
    private Date createdAt;
    private Date updatedAt;
} 