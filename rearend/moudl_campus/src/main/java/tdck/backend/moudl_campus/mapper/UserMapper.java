package tdck.backend.moudl_campus.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import tdck.backend.moudl_campus.entity.User;

@Mapper
public interface UserMapper extends BaseMapper<User> {
    
    @Select("SELECT * FROM users WHERE username = #{username}")
    User selectByUsername(String username);
} 