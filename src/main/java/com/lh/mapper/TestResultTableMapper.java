package com.lh.mapper;

import com.lh.pojo.TestResultTable;
import org.apache.ibatis.annotations.Param;

public interface TestResultTableMapper {
    //插入
    int insertTestResult(@Param("testId") long testId, @Param("userId") long userId, @Param("physiqueId") long physiqueId, @Param("scoreA") Integer scoreA, @Param("scoreB") Integer scoreB, @Param("scoreC") Integer scoreC, @Param("scoreD") Integer scoreD, @Param("scoreE") Integer scoreE, @Param("scoreF") Integer scoreF, @Param("scoreG") Integer scoreG, @Param("scoreH") Integer scoreH, @Param("scoreI") Integer scoreI);

    //查找（最新）
    TestResultTable selectTestResultByUserId(@Param("userId") long userId);

}
