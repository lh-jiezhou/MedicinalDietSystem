package com.lh.service.impl;

import com.lh.mapper.CommentTableMapper;
import com.lh.pojo.CommentTable;
import com.lh.service.CommentTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("commentTableService")
public class CommentTableServiceImpl implements CommentTableService {

    @Autowired
    private CommentTableMapper commentTableMapper;

    //添加评论
    @Override
    public boolean insertComment(CommentTable commentTable) {
        int row = commentTableMapper.insertComment(commentTable);
        return row == 1 ? true:false;
    }

    //显示评论
    @Override
    public List<CommentTable> selectCommentByMedId(long medId) {
        List<CommentTable> commentTables = commentTableMapper.selectCommentByMedId(medId);
        return commentTables;
    }
}
