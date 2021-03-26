package com.lh.service;

import com.lh.pojo.MedicinalDietTable;

import java.util.List;

public interface UserBrowseTableService {

    /**
     * 显示浏览记录
     * @param userId
     * @return
     */
    List<MedicinalDietTable> selectBrowse(long userId);
    /**
     * 增加浏览记录
     * @param userId
     * @param medId
     * @return
     */
    boolean insertBrowse(long userId, long medId);
}
