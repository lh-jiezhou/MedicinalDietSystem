package com.lh.service.impl;

import com.lh.mapper.AdminMedTableMapper;
import com.lh.pojo.AdminMedTable;
import com.lh.pojo.ImageTable;
import com.lh.pojo.MedicinalDietTable;
import com.lh.service.AdminMedTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Map;

@Service("adminMedTableService")
public class AdminMedTableServiceImpl implements AdminMedTableService {
    @Autowired
    private AdminMedTableMapper adminMedTableMapper;

    // 根据id查询管理员信息
    public AdminMedTable selectAdminMedInfoById(String adminMedId){
        return adminMedTableMapper.selectAdminMedInfoById(adminMedId);
    }

    public MedicinalDietTable selectMedicinalDietInfoById(int id){
        return adminMedTableMapper.selectMedicinalDietInfoById(id);
    }

    public List<Map<String,Object>> selectCountEffi(){
        List<Map<String,Object>> list_effi = adminMedTableMapper.selectCountEffi();
        return list_effi;
    }

    public List<Map<String,Object>> selectCountShape(){
        List<Map<String,Object>> list_shape = adminMedTableMapper.selectCountShape();
        return list_shape;
    }

    public String insertMedicinalDietInfo(MedicinalDietTable medicinalDietTable){
        adminMedTableMapper.insertMedicinalDietInfo(medicinalDietTable);
        return "存储成功!";
    }

    public String updateMedicinalDietInfo(MedicinalDietTable medicinalDietTable){
        adminMedTableMapper.updateMedicinalDietInfo(medicinalDietTable);
        return "修改成功!";
    }

    public List<MedicinalDietTable> selectMedicinalDietInfo(String condition){
        List<MedicinalDietTable> list = adminMedTableMapper.selectMedicinalTableInfo(condition);
        return list;
    }

    public List<MedicinalDietTable> selectMedicinalDietPageInfo(int pageF,int pageB,String condition){
        List<MedicinalDietTable> list = adminMedTableMapper.selectMedicinalTablePageInfo(pageF,pageB,condition);
        return list;
    }

    public int deleteMedicinalTableInfo(int id){
        return adminMedTableMapper.deleteMedicinalTableInfo(id);
    }

    public List<ImageTable> selectMedicinalImage(int id){
        return  adminMedTableMapper.selectMedicinalImage(id);
    }

    public int selectImageMaxSequence(int id){
        return adminMedTableMapper.selectImageMaxSequence(id);
    }

    public int insertImageInfo(ImageTable imageTable){
        return adminMedTableMapper.insertImageInfo(imageTable);
    }

    public int deleteImageInfo(int id){
        return adminMedTableMapper.deleteImageInfo(id);
    }
}
