package com.lh.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lh.mapper.MedicinalDietTableMapper;
import com.lh.pojo.MedicinalDietTable;
import com.lh.dto.MedicinalDietWithImage;
import com.lh.service.MedicinalDietTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("medicinalDietTableService")
//标记为组件
public class MedicinalDietTableServiceImpl implements MedicinalDietTableService {

    //注入Mapper
    @Autowired
    private MedicinalDietTableMapper medicinalDietTableMapper;

    //搜索
    @Override
    public PageInfo<MedicinalDietTable> selectMedicinalDietByWords(String words, PageInfo pageInfo) {
        //去第几页，及页码大小
        PageHelper.startPage(pageInfo.getPageNum(), pageInfo.getPageSize());
        List<MedicinalDietTable> medicinalDietTableList = medicinalDietTableMapper.selectMedicinalDietTableByWords(words);
        PageInfo<MedicinalDietTable> medicinalDietTablePageInfo = new PageInfo<>(medicinalDietTableList);
        return medicinalDietTablePageInfo;
    }

    //功效调理
    @Override
    public PageInfo<MedicinalDietTable> selectMedicinalDietByEfficacy(long efficacyId, PageInfo pageInfo) {
        PageHelper.startPage(pageInfo.getPageNum(), pageInfo.getPageSize());
        List<MedicinalDietTable> medicinalDietTableList  = medicinalDietTableMapper.selectMedicinalDietTableByEfficacyId(efficacyId);
        PageInfo<MedicinalDietTable> medicinalDietTablePageInfo = new PageInfo<>(medicinalDietTableList);
        return medicinalDietTablePageInfo;
    }

    //应用调理
    @Override
    public PageInfo<MedicinalDietTable> selectMedicinalDietByApplication(long applicationId, PageInfo pageInfo) {
        PageHelper.startPage(pageInfo.getPageNum(), pageInfo.getPageSize());
        List<MedicinalDietTable> medicinalDietTableList = medicinalDietTableMapper.selectMedicinalDietTableByApplicationId(applicationId);
        PageInfo<MedicinalDietTable> medicinalDietTablePageInfo = new PageInfo<>(medicinalDietTableList);
        return medicinalDietTablePageInfo;
    }

    //药膳大全 (功效、制法、形态)
    @Override
    public List<MedicinalDietTable> selectMedicinalDietByEffiCate(String effiCate) {
        List<MedicinalDietTable> medicinalDietTableList = new ArrayList<>();
        medicinalDietTableList = medicinalDietTableMapper.selectMedicinalDietTableByEffiCate(effiCate);
        return medicinalDietTableList;
    }
    @Override
    public List<MedicinalDietTable> selectMedicinalDietByShapeCate(String shapeCate) {
        List<MedicinalDietTable> medicinalDietTableList = new ArrayList<>();
        medicinalDietTableList = medicinalDietTableMapper.selectMedicinalDietTableByShapeCate(shapeCate);
        return medicinalDietTableList;
    }
    @Override
    public List<MedicinalDietTable> selectMedicinalDietByMakeCate(String makeCate) {
        List<MedicinalDietTable> medicinalDietTableList = new ArrayList<>();
        medicinalDietTableList = medicinalDietTableMapper.selectMedicinalDietTableByMakeCate(makeCate);
        return medicinalDietTableList;
    }

    //药膳详情
    @Override
    public MedicinalDietWithImage selectDetailOfMedicinalDiet(long medId) {
        MedicinalDietWithImage medicinalDietWithImage = medicinalDietTableMapper.selectDetailOfMedicinalDiet(medId);
        return medicinalDietWithImage;
    }

    //显示热门药膳
    @Override
    public List<MedicinalDietTable> selectMedicinalDietByClick(Integer num) {
        List<MedicinalDietTable> medicinalDietTables = medicinalDietTableMapper.selectMedicinalDietTableByClick(num);
        return medicinalDietTables;
    }

    //根据体质推荐关键字搜索，num指定数量
    @Override
    public List<Integer> selectMedIdByRecommendKey(String key, Integer num) {
        List<Integer> medIdList = medicinalDietTableMapper.selectMedIdByRecommendKey(key, num);
        return medIdList;
    }

    //显示推荐
    @Override
    public MedicinalDietTable selectMedById(long medId) {
        return medicinalDietTableMapper.selectMedById(medId);
    }

    @Override
    public boolean updateMedClick(long medId) {
        int row = medicinalDietTableMapper.updateMedClick(medId);
        return row == 1 ? true:false;
    }

    //疾病调理
    @Override
    public PageInfo<MedicinalDietTable> selectMedicinalDietByDisease(long diseaseId, PageInfo<MedicinalDietTable> pageInfo) {
        PageHelper.startPage(pageInfo.getPageNum(), pageInfo.getPageSize());
        List<MedicinalDietTable> medicinalDietTableList = medicinalDietTableMapper.selectMedicinalDietTableByDiseaseId(diseaseId);
        PageInfo<MedicinalDietTable> medicinalDietTablePageInfo = new PageInfo<>(medicinalDietTableList);
        return medicinalDietTablePageInfo;
    }
}
