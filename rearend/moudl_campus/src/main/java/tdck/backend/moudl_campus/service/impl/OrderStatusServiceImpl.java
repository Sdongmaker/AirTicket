package tdck.backend.moudl_campus.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import tdck.backend.moudl_campus.pojo.OrderStatus;
import tdck.backend.moudl_campus.service.OrderStatusService;
import tdck.backend.moudl_campus.mapper.OrderStatusMapper;
import org.springframework.stereotype.Service;

/**
* @author sdongmaker
* @description 针对表【order_status(订单状态字典表)】的数据库操作Service实现
* @createDate 2025-03-07 11:38:18
*/
@Service
public class OrderStatusServiceImpl extends ServiceImpl<OrderStatusMapper, OrderStatus>
    implements OrderStatusService{

}




