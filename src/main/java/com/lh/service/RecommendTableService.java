package com.lh.service;

import java.util.List;

public interface RecommendTableService {
    /**
     * 插入推荐表
     * @param userId
     * @param medId
     * @param recommendBase 推荐依据
     * @return
     */
    boolean insertRecommend(long userId, long medId, long recommendBase);

    /**
     * 查找指定类型的推荐
     * @param userId
     * @param recommendBase
     * @return
     */
    List<Integer> selectRecommendMedId(long userId, long recommendBase);

}
