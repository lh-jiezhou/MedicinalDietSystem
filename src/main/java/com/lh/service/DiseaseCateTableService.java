package com.lh.service;

import com.lh.pojo.DiseaseCateTable;

import java.util.List;

public interface DiseaseCateTableService {
    /**
     * 查找所有应用类别
     * @return
     */
    List<DiseaseCateTable> selectAllDiseaseCate();

    /**
     * 通过id搜疾病
     * @param diseaseId
     * @return
     */
    DiseaseCateTable selectDiseaseCateById(long diseaseId);
}
