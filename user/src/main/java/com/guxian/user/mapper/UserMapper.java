package com.guxian.user.mapper;

import com.guxian.entity.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
* @author GuXian
* @description 针对表【user】的数据库操作Mapper
* @createDate 2022-04-16 14:20:28
* @Entity com.guxian.user.entity.User
*/
@Mapper
public interface UserMapper extends BaseMapper<User> {

}




