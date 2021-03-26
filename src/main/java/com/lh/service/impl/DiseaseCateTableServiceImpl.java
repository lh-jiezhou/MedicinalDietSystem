package com.lh.service.impl;

import com.lh.mapper.DiseaseCateTableMapper;
import com.lh.pojo.DiseaseCateTable;
import com.lh.service.DiseaseCateTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("diseaseCateTableService")
public class DiseaseCateTableServiceImpl implements DiseaseCateTableService {

    @Autowired
    private DiseaseCateTableMapper diseaseCateTableMapper;

    @Override
    public List<DiseaseCateTable> selectAllDiseaseCate() {
        List<DiseaseCateTable> diseaseCateTables = diseaseCateTableMapper.selectAllDiseaseCateTable();
        return diseaseCateTables;
    }

    @Override
    public DiseaseCateTable selectDiseaseCateById(long diseaseId) {
        DiseaseCateTable diseaseCateTable = diseaseCateTableMapper.selectDiseaseCateById(diseaseId);
        return diseaseCateTable;
    }
}
