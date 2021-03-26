package com.lh.service.impl;

import com.lh.mapper.EfficacyCateTableMapper;
import com.lh.pojo.EfficacyCateTable;
import com.lh.service.EfficacyCateTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("efficacyCateTableService")
public class EfficacyCateTableServiceImpl implements EfficacyCateTableService {

    @Autowired
    private EfficacyCateTableMapper efficacyCateTableMapper;

    //显示所有功效类
    @Override
    public List<EfficacyCateTable> selectAllEfficacyCate() {
        List<EfficacyCateTable> efficacyCateTables = efficacyCateTableMapper.selectAllEfficacyCateTable();
        return efficacyCateTables;
    }

    //查找功效类名
    @Override
    public String selectNameById(long efficacyId) {
        String efficacyName = efficacyCateTableMapper.selectNameById(efficacyId);
        return efficacyName;
    }

    //查找药膳功效标签
    @Override
    public List<EfficacyCateTable> selectEfficacyByMedId(long medId) {
        List<EfficacyCateTable> effiTagList = efficacyCateTableMapper.selectEfficacyByMedId(medId);
        return effiTagList;
    }

    @Override
    public EfficacyCateTable selectEfficacyCateById(long efficacyId) {
        EfficacyCateTable efficacyCateTable = efficacyCateTableMapper.selectEfficacyCateById(efficacyId);
        return efficacyCateTable;
    }
}
