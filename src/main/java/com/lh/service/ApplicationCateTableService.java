package com.lh.service;

import com.lh.pojo.ApplicationCateTable;

import java.util.List;

public interface ApplicationCateTableService {

    /**
     * 查找所有应用类别
     * @return
     */
    List<ApplicationCateTable> selectAllApplicationCate();

    /**
     * 通过id搜名字（暂时）
     * @param applicationId
     * @return
     */
    String selectNameById(long applicationId);
}
