package tdck.backend.moudl_campus.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.util.Date;
import lombok.Data;

/**
 * 管理员信息表
 * @TableName manager
 */
@TableName(value ="manager")
@Data
public class Manager {
    /**
     * 管理员ID
     */
    @TableId(type = IdType.AUTO)
    private Integer mid;

    /**
     * 管理员姓名
     */
    private String name;

    /**
     * 管理员账号
     */
    private String account;

    /**
     * 管理员密码
     */
    private String passwd;

    /**
     * 管理员角色
     */
    private Object role;

    /**
     * 账号状态
     */
    private Object status;

    /**
     * 创建时间
     */
    private Date createdAt;

    /**
     * 更新时间
     */
    private Date updatedAt;

    /**
     * 最后登录时间
     */
    private Date lastLogin;

    /**
     * 操作日志
     */
    private String operationLog;
}