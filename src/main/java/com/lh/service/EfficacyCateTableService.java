package com.lh.service;

import com.lh.pojo.EfficacyCateTable;

import java.util.List;

public interface EfficacyCateTableService {

    /**
     * 查找所有功效类别
     * @return
     */
    List<EfficacyCateTable> selectAllEfficacyCate();

    /**
     * 通过id搜名字（暂时）
     * @param efficacyId
     * @return
     */
    String selectNameById(long efficacyId);

    /**
     * 查找药膳的功效标签
     * @param medId
     * @return
     */
    List<EfficacyCateTable> selectEfficacyByMedId(long medId);

    /**
     * 通过id搜功效
     * @param efficacyId
     * @return
     */
    EfficacyCateTable selectEfficacyCateById(long efficacyId);
}
