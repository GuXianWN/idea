package com.guxian.comments.service;

import com.guxian.entity.RespBean;

/**
 * @author Wu Xihao
 * @description 评论服务层接口
 */
public interface CommentService {
    /**
     * 根据评论id进行点赞
     *
     * @param id 评论id
     * @return com.guxian.entity.RespBean
     */
    RespBean updateLikeNum(Integer id, String uid);

    /**
     * 根据评论id进行点踩
     *
     * @param id 评论id
     * @return com.guxian.entity.RespBean
     */
    RespBean updateUNLikeNum(Integer id, String uid);

    /**
     * 添加评论
     *
     * @param content 评论内容
     * @param uid     用户id
     * @return com.guxian.entity.RespBean
     */
    RespBean addComment(String content, Integer ideaId, String uid);


    /**
     * 取消点赞
     *
     * @param id 评论id
     * @return com.guxian.entity.RespBean
     */
    RespBean cancelLike(Integer id, String uid);

    /**
     * 取消点踩
     *
     * @param id 评论id
     * @return com.guxian.entity.RespBean
     */
    RespBean cancelUnlike(Integer id, String uid);
}
