package com.lh.service.impl;

import com.lh.mapper.TestQuestionTableMapper;
import com.lh.pojo.TestQuestionTable;
import com.lh.service.TestQuestionTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("testQuestionTableService")
public class TestQuestionTableServiceImpl implements TestQuestionTableService {

    @Autowired
    private TestQuestionTableMapper testQuestionTableMapper;

    //查找题目
    @Override
    public List<TestQuestionTable> selectTestQuestionByTestId(long testId) {
        List<TestQuestionTable> testQuestionTables = testQuestionTableMapper.selectTestQuestionTableByTestId(testId);
        return testQuestionTables;
    }
}
