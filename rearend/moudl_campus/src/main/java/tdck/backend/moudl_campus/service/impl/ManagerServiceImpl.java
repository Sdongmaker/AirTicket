package tdck.backend.moudl_campus.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import tdck.backend.moudl_campus.pojo.Manager;
import tdck.backend.moudl_campus.service.ManagerService;
import tdck.backend.moudl_campus.mapper.ManagerMapper;
import org.springframework.stereotype.Service;

/**
* @author sdongmaker
* @description 针对表【manager(管理员信息表)】的数据库操作Service实现
* @createDate 2025-03-07 11:38:05
*/
@Service
public class ManagerServiceImpl extends ServiceImpl<ManagerMapper, Manager>
    implements ManagerService{

}




