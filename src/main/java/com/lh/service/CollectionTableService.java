package com.lh.service;

import com.lh.pojo.MedicinalDietTable;

import java.util.List;

public interface CollectionTableService {

    /**
     * 显示用户收藏药膳
     * @param userId
     * @return
     */
    List<MedicinalDietTable> selectCollectionByUserId(long userId);

    /**
     * 添加收藏
     * @param userId
     * @param medId
     * @return
     */
    boolean insertCollection(long userId, long medId);

    /**
     * 取消收藏
     * @param uesrId
     * @param medId
     * @return
     */
    boolean deleteCollection(long uesrId, long medId);
}
