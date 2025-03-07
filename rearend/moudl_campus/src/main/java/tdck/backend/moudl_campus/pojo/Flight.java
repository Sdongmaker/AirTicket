package tdck.backend.moudl_campus.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.util.Date;
import lombok.Data;

/**
 * 航班信息表
 * @TableName flight
 */
@TableName(value ="flight")
@Data
public class Flight {
    /**
     * 航班ID
     */
    @TableId(type = IdType.AUTO)
    private Integer fid;

    /**
     * 飞机ID
     */
    private Integer aid;

    /**
     * 起飞地点
     */
    private String startPoint;

    /**
     * 降落地点
     */
    private String endPoint;

    /**
     * 起飞时间
     */
    private Date startTime;

    /**
     * 降落时间
     */
    private Date endTime;

    /**
     * 飞行距离（km）
     */
    private Integer distance;

    /**
     * 
     */
    private Date createdAt;

    /**
     * 
     */
    private Date updatedAt;
}