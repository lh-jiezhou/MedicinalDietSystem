package com.lh.service.impl;

import com.lh.mapper.TestResultTableMapper;
import com.lh.pojo.TestResultTable;
import com.lh.service.TestResultTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("testResultTableService")
public class TestResultTableServiceImpl implements TestResultTableService {

    @Autowired
    private TestResultTableMapper testResultTableMapper;

    //插入测试结果
    @Override
    public boolean insertTestResult(long testId, long userId, long physiqueId, List<Integer> trueScore) {
        //分数
        Integer scoreA = trueScore.get(0);
        Integer scoreB = trueScore.get(1);
        Integer scoreC = trueScore.get(2);
        Integer scoreD = trueScore.get(3);
        Integer scoreE = trueScore.get(4);
        Integer scoreF = trueScore.get(5);
        Integer scoreG = trueScore.get(6);
        Integer scoreH = trueScore.get(7);
        Integer scoreI = trueScore.get(8);

        int row = testResultTableMapper.insertTestResult(testId, userId, physiqueId, scoreA, scoreB, scoreC, scoreD, scoreE, scoreF, scoreG, scoreH, scoreI);
        return row == 1 ? true:false;
    }
    //查找测试结果（最新）
    @Override
    public TestResultTable selectTestResultByUserId(long userId) {
        TestResultTable testResultTable = testResultTableMapper.selectTestResultByUserId(userId);
        return testResultTable;
    }
}
