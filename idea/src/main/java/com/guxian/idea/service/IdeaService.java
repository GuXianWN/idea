package com.guxian.idea.service;

import com.guxian.entity.Idea;
import com.guxian.entity.RespBean;

/**
 * @author Wu Xihao
 * @description 点子服务接口层
 */
public interface IdeaService {

    /**
     * 添加点子
     *
     * @param idea 点子
     * @return com.guxian.entity.RespBean
     */
    RespBean addIdea(Idea idea, String uid);

    /**
     * 删除点子
     *
     * @param id 点子
     * @return com.guxian.entity.RespBean
     */
    RespBean deleteIdea(Integer id);

    /**
     * 修改点子
     *
     * @param idea 点子
     * @return com.guxian.entity.RespBean
     */
    RespBean updateIdea(Idea idea);

    /**
     * 获取指定条件的点子
     *
     * @return com.guxian.entity.RespBean
     */
    RespBean getAllIdea(String search);

    /**
     * 获取用户的点子
     *
     * @param uid 用户id
     * @return com.guxian.entity.RespBean
     */
    RespBean getUserIdea(String uid);


    /**
     * 更新idea的浏览量 喜欢 踩
     *
     * @param idea idea
     * @return com.guxian.entity.RespBean
     */
    RespBean updateIdeaTLD(Idea idea);

    RespBean randomIdea();
}
