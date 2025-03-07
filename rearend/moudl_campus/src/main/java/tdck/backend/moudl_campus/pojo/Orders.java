package tdck.backend.moudl_campus.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

/**
 * 订单信息表
 * @TableName orders
 */
@TableName(value ="orders")
@Data
public class Orders {
    /**
     * 订单ID
     */
    @TableId(type = IdType.AUTO)
    private Integer oid;

    /**
     * 订单状态（引用order_status表）
     */
    private Integer status;

    /**
     * 航班ID
     */
    private Integer fid;

    /**
     * 用户ID
     */
    private Integer uid;

    /**
     * 票价
     */
    private BigDecimal prices;

    /**
     * 出行日期
     */
    private Date days;
}