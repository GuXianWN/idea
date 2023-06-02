package com.guxian.idea.controller;

import com.guxian.authority.utils.JwtUtils;
import com.guxian.entity.Idea;
import com.guxian.entity.RespBean;
import com.guxian.idea.service.IdeaService;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Wu Xihao
 * @description idea控制器
 */
@Setter(onMethod_ = @Autowired)
@RestController
@RequestMapping("/idea")
public class IdeaController {

    private IdeaService ideaService;
    private JwtUtils jwtUtils;

    @GetMapping("/random")
    public RespBean randomIdea() {
        return ideaService.randomIdea();
    }

    @PostMapping("/addIdea")
    public RespBean addIdea(@RequestBody Idea idea, HttpServletRequest request) {

        String uid = jwtUtils.getUserIdByRequest(request).toString();
        return ideaService.addIdea(idea, uid);
    }

    @GetMapping("/deleteIdea/{ideaId}")
    public RespBean deleteIdea(@PathVariable("ideaId") Integer ideaId) {

        return ideaService.deleteIdea(ideaId);
    }

    @PostMapping("/updateIdea")
    public RespBean updateIdea(@RequestBody Idea idea) {
        return ideaService.updateIdea(idea);
    }


    @PostMapping("/getAllIdea")
    public RespBean getAllIdea(@RequestParam(value = "search",required = false) String search) {

        return ideaService.getAllIdea(search);
    }

    @GetMapping("/getUserIdea")
    public RespBean getUserIdea(HttpServletRequest request) {

        String uid = jwtUtils.getUserIdByRequest(request).toString();
        return ideaService.getUserIdea(uid);
    }

}
