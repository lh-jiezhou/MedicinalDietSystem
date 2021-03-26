package com.lh.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RecommendTableMapper {
    //插入
    int insertRecommend(@Param("userId") long userId, @Param("medId") long medId, @Param("recommendBase") long recommendBase);

    //查找
    List<Integer> selectRecommendMedId(@Param("userId") long userId, @Param("recommendBase") long recommendBase);
}
