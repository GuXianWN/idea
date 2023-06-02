package com.guxian.idea.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.guxian.entity.Idea;
import com.guxian.entity.RespBean;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Wu Xihao
 * @description idea接口
 */
@Repository
public interface IdeaMapper extends BaseMapper<Idea> {
    @Select("select * from idea order by rand() limit 5")
    List<Idea> randomIdea();
}
