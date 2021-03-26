package com.lh.mapper;

import com.lh.pojo.CommentTable;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommentTableMapper {
    //插入
    int insertComment(@Param("commentTable") CommentTable commentTable);
    //查找
    List<CommentTable> selectCommentByMedId(@Param("medId") long medId);
}
