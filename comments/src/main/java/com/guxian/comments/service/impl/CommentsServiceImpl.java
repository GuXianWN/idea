package com.guxian.comments.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.guxian.comments.mapper.LikeCommentsMapper;
import com.guxian.common.CommonVar;
import com.guxian.entity.Comments;
import com.guxian.entity.LikeComments;
import com.guxian.entity.RespBean;
import com.guxian.comments.mapper.CommentsMapper;
import com.guxian.comments.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import java.time.LocalDateTime;

@Service
public class CommentsServiceImpl extends ServiceImpl<CommentsMapper, Comments>
        implements CommentService {

    @Autowired
    private CommentsMapper commentsMapper;
    @Autowired
    private LikeCommentsMapper likeCommentsMapper;

    @Override
    public RespBean updateLikeNum(Integer id, String uid) {

        //判断是否可以点赞
        QueryWrapper<LikeComments> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uid", uid);
        queryWrapper.eq("comments_id", id);
        LikeComments one = likeCommentsMapper.selectOne(queryWrapper);
        if (null != one) {
            return RespBean.error("已选择 不能继续操作 可取消后重新选择!");
        }

        //判断评论是否存在
        Comments comments = commentsMapper
                .selectOne(new QueryWrapper<Comments>().eq("id", id));

        Assert.notNull(comments, "没有这个评论!");

        //点赞
        int update = commentsMapper.update(comments, new UpdateWrapper<Comments>()
                .eq("id", id).set("`like`", comments.getLike() + 1));
        LikeComments likeComments = new LikeComments();
        likeComments.setUid(uid)
                .setComments_id(id);
        int result = likeCommentsMapper.insert(likeComments);

        if (update > 0 && result > 0) {
            return RespBean.success("点赞成功!");
        }

        return RespBean.error("点赞失败!");
    }

    @Override
    public RespBean updateUNLikeNum(Integer id, String uid) {
        //判断是否可以点踩
        LikeComments one = likeCommentsMapper.selectOne(new QueryWrapper<LikeComments>()
                .eq("uid", uid).eq("comments_id", id));
        if (null != one) {
            return RespBean.error("已选择 不能继续操作 可取消后重新选择!");
        }

        //判断评论是否存在
        Comments comments = commentsMapper
                .selectOne(new QueryWrapper<Comments>().eq("id", id));

        Assert.notNull(comments, "没有这个评论!");

        //点踩
        UpdateWrapper<Comments> qw = new UpdateWrapper<>();
        qw.eq("id", id);
        qw.set("`unlike`", comments.getUnlike() + 1);
        int update = commentsMapper.update(comments, qw);
        LikeComments likeComments = new LikeComments();
        likeComments.setUid(uid)
                .setComments_id(id);
        int result = likeCommentsMapper.insert(likeComments);
        if (update > 0 && result > 0) {
            return RespBean.success("点踩成功!");
        }

        return RespBean.error("点踩失败!");
    }

    @Override
    public RespBean addComment(String content, Integer ideaId, String uid) {

        LocalDateTime dateTime = LocalDateTime.now();
        Comments comment = new Comments();
        comment.setLike(CommonVar.LIKE)
                .setUnlike(CommonVar.UNLIKE)
                .setCreate_time(dateTime)
                .setContent(content)
                .setReply_id(CommonVar.REPLY_ID)
                .setIdea_id(ideaId)
                .setUid(uid);
        int insert = commentsMapper.insert(comment);
        if (insert > 0) {
            return RespBean.success("评论成功!");
        }
        return RespBean.error("评论失败!");
    }

    @Override
    public RespBean cancelLike(Integer id, String uid) {
        //判断是否有记录
        QueryWrapper<LikeComments> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uid", uid);
        queryWrapper.eq("comments_id", id);
        LikeComments one = likeCommentsMapper.selectOne(queryWrapper);

        if (null == one) {
            return RespBean.error("没有进行点赞 不能对此操作!");
        }

        //删除记录
        int delete = likeCommentsMapper.delete(new QueryWrapper<LikeComments>()
                .eq("uid", uid).eq("comments_id", id));

        //查询评论
        Comments comments = commentsMapper
                .selectOne(new QueryWrapper<Comments>().eq("id", id));
        //取消点赞
        int update = commentsMapper.update(comments, new UpdateWrapper<Comments>()
                .eq("id", id).set("`like`", comments.getLike() - 1));

        if (delete > 0 && update > 0) {
            return RespBean.success("取消点赞");
        }
        return RespBean.error("取消点赞失败");
    }

    @Override
    public RespBean cancelUnlike(Integer id, String uid) {
        //判断是否有记录
        LikeComments one = likeCommentsMapper.selectOne(new QueryWrapper<LikeComments>()
                .eq("uid", uid).eq("comments_id", id));

        if (null == one) {
            return RespBean.error("没有进行点踩 不能对此操作!");
        }

        //删除记录
        int delete = likeCommentsMapper.delete(new QueryWrapper<LikeComments>()
                .eq("uid", uid).eq("comments_id", id));

        //查询评论
        Comments comments = commentsMapper
                .selectOne(new QueryWrapper<Comments>().eq("id", id));
        //取消点踩
        int update = commentsMapper.update(comments, new UpdateWrapper<Comments>()
                .eq("id", id).set("`unlike`", comments.getUnlike() - 1));
        if (delete > 0 && update > 0) {
            return RespBean.success("取消点踩");
        }
        return RespBean.error("取消点踩失败");

    }

}
