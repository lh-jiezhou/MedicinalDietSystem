package com.lh.mapper;

import com.lh.pojo.EfficacyCateTable;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EfficacyCateTableMapper {

    //显示功效类别
    List<EfficacyCateTable> selectAllEfficacyCateTable();
    //通过id搜名字（暂时）
    String selectNameById(@Param("efficacyId") long efficacyId);
    //搜索药膳功效标签
    List<EfficacyCateTable> selectEfficacyByMedId(@Param("medId") long medId);
    //通过id搜功效
    EfficacyCateTable selectEfficacyCateById(@Param("efficacyId") long efficacyId);
}
