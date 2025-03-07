package tdck.backend.moudl_campus.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.math.BigDecimal;
import lombok.Data;

/**
 * 行李信息表
 * @TableName baggage
 */
@TableName(value ="baggage")
@Data
public class Baggage {
    /**
     * 行李记录ID
     */
    @TableId(type = IdType.AUTO)
    private Integer bid;

    /**
     * 用户ID
     */
    private Integer uid;

    /**
     * 航班ID
     */
    private Integer flightId;

    /**
     * 行李件数
     */
    private Integer baggageCount;

    /**
     * 行李总重量（kg）
     */
    private BigDecimal totalWeight;

    /**
     * 超重费用
     */
    private BigDecimal extraFee;
}