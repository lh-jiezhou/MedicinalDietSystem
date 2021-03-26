package com.lh.mapper;

import com.lh.pojo.TestQuestionTable;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TestQuestionTableMapper {
    //查找题目
    List<TestQuestionTable> selectTestQuestionTableByTestId(@Param("testId") long testId);
}
