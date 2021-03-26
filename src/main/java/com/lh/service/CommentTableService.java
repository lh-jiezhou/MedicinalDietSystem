package com.lh.service;

import com.lh.pojo.CommentTable;

import java.util.List;

public interface CommentTableService {

    /**
     * 添加评论
     * @param commentTable
     * @return
     */
    boolean insertComment(CommentTable commentTable);

    /**
     * 显示药膳评论
     * @param medId
     * @return
     */
    List<CommentTable> selectCommentByMedId(long medId);
}
