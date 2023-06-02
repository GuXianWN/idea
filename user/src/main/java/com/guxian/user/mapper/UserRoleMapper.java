package com.guxian.user.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.guxian.entity.UserRole;
import org.apache.ibatis.annotations.Mapper;

/**
* @author GuXian
* @description 针对表【user_role】的数据库操作Mapper
* @createDate 2022-04-19 12:51:59
* @Entity com.guxian.user.entity.UserRole
*/
@Mapper
public interface UserRoleMapper extends BaseMapper<UserRole> {

}




