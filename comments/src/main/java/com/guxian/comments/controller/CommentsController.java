package com.guxian.comments.controller;

import com.guxian.authority.utils.JwtUtils;
import com.guxian.entity.RespBean;
import com.guxian.comments.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Wu Xihao
 * @description 评论控制器
 */
@RestController
@RequestMapping("/comments")
public class CommentsController {

    @Autowired
    private CommentService commentService;
    @Autowired
    private JwtUtils jwtUtils;

    @GetMapping("/addLikeNum/{id}")
    public RespBean addLikeNum(@PathVariable("id") Integer id, HttpServletRequest request) {

        String uid = jwtUtils.getUserIdByRequest(request).toString();
        return commentService.updateLikeNum(id, uid);
    }

    @GetMapping("/addUNLikeNum/{id}")
    public RespBean addUNLikeNum(@PathVariable("id") Integer id, HttpServletRequest request) {

        String uid = jwtUtils.getUserIdByRequest(request).toString();
        return commentService.updateUNLikeNum(id, uid);
    }

    @PostMapping("/addComments")
    public RespBean addComments(@RequestParam("content") String content, @RequestParam("ideaId") Integer ideaId, HttpServletRequest request) {

        String uid = jwtUtils.getUserIdByRequest(request).toString();
        return commentService.addComment(content, ideaId, uid);
    }


    @GetMapping("/cancelLike/{id}")
    public RespBean cancelLike(@PathVariable("id") Integer id, HttpServletRequest request) {

        String uid = jwtUtils.getUserIdByRequest(request).toString();
        return commentService.cancelLike(id, uid);
    }

    @GetMapping("/cancelUnlike/{id}")
    public RespBean cancelUnlike(@PathVariable("id") Integer id, HttpServletRequest request) {

        String uid = jwtUtils.getUserIdByRequest(request).toString();
        return commentService.cancelUnlike(id, uid);
    }


}
