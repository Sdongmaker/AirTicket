package tdck.backend.moudl_campus.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * 订单状态字典表
 * @TableName order_status
 */
@TableName(value ="order_status")
@Data
public class OrderStatus {
    /**
     * 状态编码
     */
    @TableId
    private Integer code;

    /**
     * 状态名称
     */
    private String name;
}