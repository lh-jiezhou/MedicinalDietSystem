package com.lh.mapper;

import com.lh.pojo.MedicinalDietTable;
import com.lh.dto.MedicinalDietWithImage;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MedicinalDietTableMapper {

    //通过搜索内容查找 （药膳名name|药膳组成constitute|应用efficacy|功效application|方解explain）
    List<MedicinalDietTable> selectMedicinalDietTableByWords(@Param("words") String words);
    //通过功效分类查找 @Param("name"),name在sql语句中使用
    List<MedicinalDietTable> selectMedicinalDietTableByEfficacyId(@Param("efficacyId") long efficacyId);
    //通过应用分类查找
    List<MedicinalDietTable> selectMedicinalDietTableByApplicationId(@Param("applicationId") long applicationId);

    //（主页）通过专业分类查找，med_effi_cate
    List<MedicinalDietTable> selectMedicinalDietTableByEffiCate(@Param("effiCate") String effiCate);
    //（主页）通过形态分类查找，med_shape_cate
    List<MedicinalDietTable> selectMedicinalDietTableByShapeCate(@Param("shapeCate") String shapeCate);
    //（主页）通过制作分类查找，med_make_cate
    List<MedicinalDietTable> selectMedicinalDietTableByMakeCate(@Param("makeCate") String makeCate);


    //显示单个药膳详情
    MedicinalDietWithImage selectDetailOfMedicinalDiet(@Param("medId") long medId);
    //显示热门药膳
    List<MedicinalDietTable> selectMedicinalDietTableByClick(@Param("num") Integer num);


    //根据体质推荐关键字搜索，num指定数量
    List<Integer> selectMedIdByRecommendKey(@Param("key") String key, @Param("num") Integer num);


    MedicinalDietTable selectMedById(@Param("medId") long medId);

    int updateMedClick(@Param("medId") long medId);

    //通过疾病分类查找
    List<MedicinalDietTable> selectMedicinalDietTableByDiseaseId(@Param("diseaseId") long diseaseId);
}
