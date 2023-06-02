package com.guxian.idea.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.guxian.common.CommonVar;
import com.guxian.entity.Idea;
import com.guxian.entity.RespBean;
import com.guxian.idea.mapper.IdeaMapper;
import com.guxian.idea.service.IdeaService;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import java.time.LocalDateTime;
import java.util.List;

/**
 * @author Wu Xihao
 * @description idea实现类
 */
@Service
public class IdeaServiceImpl extends ServiceImpl<IdeaMapper, Idea>
        implements IdeaService {

    @Autowired
    private IdeaMapper ideaMapper;

    @Override
    public RespBean addIdea(Idea idea, String uid) {
        Assert.notNull(idea.getDetailed(), "标题不能为空!");
        Idea ide = new Idea();
        ide.setUserId(uid)
                .setDetailed(idea.getDetailed())
                .setLike(CommonVar.LIKE)
                .setTraffic(CommonVar.TRAFFIC)
                .setCreateTime(LocalDateTime.now())
                .setDislike(CommonVar.DISLIKE)
                .setDescription(idea.getDescription())
                .setCategory(idea.getCategory())
                .setCid(idea.getCid());
        int insert = ideaMapper.insert(ide);
        if (insert > 0) {
            return RespBean.success("添加成功");
        }
        return RespBean.error("添加失败");
    }

    @Override
    public RespBean deleteIdea(Integer id) {
        int delete = ideaMapper.deleteById(id);
        if (delete > 0) {
            return RespBean.success("删除成功");
        }
        return RespBean.error("删除失败");
    }

    @Override
    public RespBean updateIdea(Idea idea) {
        Idea id = ideaMapper.selectById(idea.getId());
        Assert.notNull(id, "不存在这个idea!");
        //用户可更新的
        id.setDescription(idea.getDescription())
                .setCategory(idea.getCategory())
                .setDetailed(idea.getDetailed());

        int update = ideaMapper.updateById(id);
        if (update > 0) {
            return RespBean.success("更新成功");
        }
        return RespBean.error("更新失败");
    }

    @Override
    public RespBean getAllIdea(String search) {
        List<Idea> ideas = null;

        if (search != null && !search.equals("")) {
            QueryWrapper<Idea> qw = new QueryWrapper<>();
            qw.like("detailed", search)
                    .or()
                    .like("description", search);
            ideas = ideaMapper.selectList(qw);
            return new RespBean().data("idea", ideas);
        }
        ideas = ideaMapper.selectList(null);
        return new RespBean().data("idea", ideas);
    }

    @Override
    public RespBean getUserIdea(String uid) {

        List<Idea> user_id = ideaMapper
                .selectList(new QueryWrapper<Idea>().eq("user_id", uid));

        if (null != user_id) {
            return new RespBean().data("idea", user_id);
        }
        return RespBean.success("您还没有发布过idea!");
    }

    Idea ide = null;

    @Override
    public RespBean updateIdeaTLD(Idea idea) {
        if (null != idea) {
            //获取idea
            ide = ideaMapper.selectById(idea.getId());
            if (null != idea.getLike()) {
                ide.setTraffic(ide.getLike() + 1);
            }
            if (null != idea.getDislike()) {
                ide.setTraffic(ide.getDislike() + 1);
            }
            ideaMapper.updateById(idea);
            return RespBean.success("点击成功");
        }
        return RespBean.error("不能重复点击!");
    }

    //随机推送
    @Override
    public RespBean randomIdea() {
        return RespBean.success(null).data("ideas",ideaMapper.randomIdea());
    }
}
