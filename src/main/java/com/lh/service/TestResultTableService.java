package com.lh.service;

import com.lh.pojo.TestResultTable;

import java.util.List;

public interface TestResultTableService {

    /**
     * 插入用户测试结果（暂时不插入 用户倾向的体质）
     * @param testId
     * @param userId
     * @param physiqueId
     * @param trueScore
     * @return
     */
    boolean insertTestResult(long testId, long userId, long physiqueId, List<Integer> trueScore);

    /**
     * 查找用户体质 仅根据userId显示最新测试结果（降序查找即为最新结果）
     * @param userId
     * @return
     */
    TestResultTable selectTestResultByUserId(long userId);


}
