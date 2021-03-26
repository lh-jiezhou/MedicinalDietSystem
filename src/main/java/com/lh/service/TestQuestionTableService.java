package com.lh.service;

import com.lh.pojo.TestQuestionTable;

import java.util.List;

public interface TestQuestionTableService {

    /**
     * 查找试卷题目
     * @param testId
     * @return
     */
    List<TestQuestionTable> selectTestQuestionByTestId(long testId);

}
