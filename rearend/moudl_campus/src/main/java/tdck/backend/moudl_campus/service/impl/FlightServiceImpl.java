package tdck.backend.moudl_campus.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import tdck.backend.moudl_campus.pojo.Flight;
import tdck.backend.moudl_campus.service.FlightService;
import tdck.backend.moudl_campus.mapper.FlightMapper;
import org.springframework.stereotype.Service;

/**
* @author sdongmaker
* @description 针对表【flight(航班信息表)】的数据库操作Service实现
* @createDate 2025-03-07 11:37:51
*/
@Service
public class FlightServiceImpl extends ServiceImpl<FlightMapper, Flight>
    implements FlightService{

}




