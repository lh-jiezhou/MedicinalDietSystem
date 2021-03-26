package com.lh.service;

import com.lh.pojo.AdminMedTable;
import com.lh.pojo.ImageTable;
import com.lh.pojo.MedicinalDietTable;
import java.util.List;
import java.util.Map;


public interface AdminMedTableService {
    AdminMedTable selectAdminMedInfoById(String adminMedId);

    String insertMedicinalDietInfo(MedicinalDietTable medicinalDietTable);

    String updateMedicinalDietInfo(MedicinalDietTable medicinalDietTable);

    MedicinalDietTable selectMedicinalDietInfoById(int id);

    List<Map<String,Object>> selectCountEffi();

    List<Map<String,Object>> selectCountShape();

    List<MedicinalDietTable> selectMedicinalDietInfo(String condition);

    List<MedicinalDietTable> selectMedicinalDietPageInfo(int pageF, int pageB, String condition);

    int deleteMedicinalTableInfo(int id);

    List<ImageTable> selectMedicinalImage(int id);

    int selectImageMaxSequence(int id);

    int insertImageInfo(ImageTable imageTable);

    int deleteImageInfo(int id);
}
