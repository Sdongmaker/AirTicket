package tdck.backend.moudl_campus.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import tdck.backend.moudl_campus.pojo.Users;
import tdck.backend.moudl_campus.service.UsersService;
import tdck.backend.moudl_campus.mapper.UsersMapper;
import org.springframework.stereotype.Service;

/**
* @author sdongmaker
* @description 针对表【users(用户信息表)】的数据库操作Service实现
* @createDate 2025-03-07 11:38:32
*/
@Service
public class UsersServiceImpl extends ServiceImpl<UsersMapper, Users>
    implements UsersService{

}




