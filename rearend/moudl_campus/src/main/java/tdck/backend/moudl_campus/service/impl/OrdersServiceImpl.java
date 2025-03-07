package tdck.backend.moudl_campus.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import tdck.backend.moudl_campus.pojo.Orders;
import tdck.backend.moudl_campus.service.OrdersService;
import tdck.backend.moudl_campus.mapper.OrdersMapper;
import org.springframework.stereotype.Service;

/**
* @author sdongmaker
* @description 针对表【orders(订单信息表)】的数据库操作Service实现
* @createDate 2025-03-07 11:38:25
*/
@Service
public class OrdersServiceImpl extends ServiceImpl<OrdersMapper, Orders>
    implements OrdersService{

}




