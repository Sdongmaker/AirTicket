package tdck.backend.moudl_campus.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

/**
 * 飞机信息表
 * @TableName airplane
 */
@TableName(value ="airplane")
@Data
public class Airplane {
    /**
     * 飞机ID
     */
    @TableId(type = IdType.AUTO)
    private Integer aid;

    /**
     * 飞机名称
     */
    private String aname;

    /**
     * 评分
     */
    private BigDecimal arate;

    /**
     * 头等舱座位数
     */
    private Integer fClassCnt;

    /**
     * 商务舱座位数
     */
    private Integer bClassCnt;

    /**
     * 经济舱座位数
     */
    private Integer eClassCnt;

    /**
     * 
     */
    private Date createdAt;

    /**
     * 
     */
    private Date updatedAt;
}