package com.lh.controller;

import com.github.pagehelper.PageInfo;
import com.lh.dto.SearchWordDTO;
import com.lh.pojo.ApplicationCateTable;
import com.lh.pojo.DiseaseCateTable;
import com.lh.pojo.EfficacyCateTable;
import com.lh.pojo.MedicinalDietTable;
import com.lh.dto.MedicinalDietWithImage;
import com.lh.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/main")
public class MedicinalDietTableController {

    //注入service
    @Autowired
    private MedicinalDietTableService medicinalDietTableService;
    @Autowired
    private UserSearchTableService userSearchTableService;
    @Autowired
    private EfficacyCateTableService efficacyCateTableService;
    @Autowired
    private ApplicationCateTableService applicationCateTableService;
    @Autowired
    private UserBrowseTableService userBrowseTableService;
    @Autowired
    private DiseaseCateTableService diseaseCateTableService;


    //搜索（药膳名name|药膳组成constitute|应用efficacy|功效application|方解explain）
    @RequestMapping("/showMedicinalDietByWords")
    public String showMedicinalDietByWords(SearchWordDTO searchWordDTO, Model model){
        System.out.println(searchWordDTO.getPageNum() + "搜索："+searchWordDTO.getWords());
        if(searchWordDTO.getWords() == null) searchWordDTO.setWords("%");
        //药膳分页显示
        PageInfo<MedicinalDietTable> pageInfo = new PageInfo<>();
        pageInfo.setPageSize(8);
        pageInfo.setPageNum(searchWordDTO.getPageNum());
        PageInfo<MedicinalDietTable> medicinalDietTablePageInfo = medicinalDietTableService.selectMedicinalDietByWords(searchWordDTO.getWords(), pageInfo);
        //侧边搜索记录显示
        List<String> searchs = userSearchTableService.selectSearchTable(9);
        //插入新的搜索记录 =========记得传入Session中userId
        if(searchWordDTO.getWords() != "%"&&searchWordDTO.getWords() != ""){
            userSearchTableService.insertSearchTable(1, searchWordDTO.getWords());
        }
        //传入界面
        model.addAttribute("medicinalDietTablePageInfo", medicinalDietTablePageInfo);
        model.addAttribute("searchs", searchs);
        model.addAttribute("inputWords",searchWordDTO.getWords());
        for (int i=0;i<medicinalDietTablePageInfo.getList().size();i++){
            System.out.println("搜索药膳"+(i+1)+": " + medicinalDietTablePageInfo.getList().get(i).getMedDietName() + " ID: "+  medicinalDietTablePageInfo.getList().get(i).getMedicinalDietId());
        }
        return "/main/m_search";
    }


    //药膳大全（超链接调用）
    @RequestMapping("/showAllMedicinalDiet/{words}/{pageNum}")
    public String showAllMedicinalDiet(@PathVariable("words") String words, @PathVariable("pageNum") Integer pageNum, Model model){
        if(words == null) words = "%";
        //药膳大全分页显示
        PageInfo<MedicinalDietTable> pageInfo = new PageInfo<>();
        pageInfo.setPageSize(12);
        pageInfo.setPageNum(pageNum);
        PageInfo<MedicinalDietTable> medicinalDietTablePageInfo = medicinalDietTableService.selectMedicinalDietByWords(words, pageInfo);
        //侧边搜索记录显示
        List<String> searchs = userSearchTableService.selectSearchTable(9);
        //插入新的搜索记录 =========记得传入Session中userId
        if(!words.equals("%")){
            userSearchTableService.insertSearchTable(1, words);
        }
        //传入界面
        if(words.equals("%")) words = "%25";
        model.addAttribute("medicinalDietTablePageInfo", medicinalDietTablePageInfo);
        model.addAttribute("searchs", searchs);
        model.addAttribute("inputWords",words);
        for (int i=0;i<medicinalDietTablePageInfo.getList().size();i++){
            System.out.println("搜索药膳"+(i+1)+": " + medicinalDietTablePageInfo.getList().get(i).getMedDietName());
        }
        return "/main/m_allmedicanal";
    }

    //功效ByEfficacy （功能调理 超链接）
    @RequestMapping("/showMedicinalDietByEfficacy/{efficacyId}/{pageNum}")
    public String showMedicinalDietByEfficacy(@PathVariable("efficacyId") long efficacyId, @PathVariable("pageNum") Integer pageNum, Model model){
        PageInfo<MedicinalDietTable> pageInfo = new PageInfo<>();
        pageInfo.setPageSize(8);
        pageInfo.setPageNum(pageNum);
        //搜索功效类别
        List<EfficacyCateTable> efficacyCateTables = efficacyCateTableService.selectAllEfficacyCate();
        String efficacyName = efficacyCateTableService.selectNameById(efficacyId);
        EfficacyCateTable efficacyCateTable = efficacyCateTableService.selectEfficacyCateById(efficacyId);
        //搜索药膳
        PageInfo<MedicinalDietTable> medicinalDietTablePageInfo = medicinalDietTableService.selectMedicinalDietByEfficacy(efficacyId, pageInfo);

        model.addAttribute("efficacyCateTables", efficacyCateTables);
        model.addAttribute("medicinalDietTablePageInfo", medicinalDietTablePageInfo);
        model.addAttribute("efficacyId",efficacyId);
        model.addAttribute("efficacyName",efficacyName);
        model.addAttribute("efficacyCateTable",efficacyCateTable);

//        for (int i=0;i<efficacyCateTables.size();i++){
//            System.out.println("功效分类"+(i+1)+": " + efficacyCateTables.get(i));
//        }
        for (int i=0;i<medicinalDietTablePageInfo.getList().size();i++){
            System.out.println("功效药膳"+(i+1)+": " + medicinalDietTablePageInfo.getList().get(i).getMedDietName());
        }
        return "/main/m_efficacy";
    }

    //应用ByApplication（疾病调理 ###改改   超链接）
    @RequestMapping("/showMedicinalDietByApplication/{applicationId}/{pageNum}")
    public String showMedicinalDietByApplication(@PathVariable("applicationId") long applicationId, @PathVariable("pageNum") Integer pageNum, Model model){
        PageInfo<MedicinalDietTable> pageInfo = new PageInfo<>();
        pageInfo.setPageSize(8);
        pageInfo.setPageNum(pageNum);
        //搜索应用类别
        List<ApplicationCateTable> applicationCateTables = applicationCateTableService.selectAllApplicationCate();
        String applicationName = applicationCateTableService.selectNameById(applicationId);
        //搜索药膳
        PageInfo<MedicinalDietTable> medicinalDietTablePageInfo = medicinalDietTableService.selectMedicinalDietByApplication(applicationId, pageInfo);

        model.addAttribute("applicationCateTables", applicationCateTables);
        model.addAttribute("medicinalDietTablePageInfo", medicinalDietTablePageInfo);
        model.addAttribute("applicationId",applicationId);
        model.addAttribute("applicationName",applicationName);

        for (int i=0;i<applicationCateTables.size();i++){
            System.out.println("应用分类"+(i+1)+": " + applicationCateTables.get(i));
        }
        for (int i=0;i<medicinalDietTablePageInfo.getList().size();i++){
            System.out.println("应用药膳"+(i+1)+": " + medicinalDietTablePageInfo.getList().get(i).getMedDietName());
        }
        return "/main/m_application";
    }

    //疾病ByDisease（疾病调理）
    @RequestMapping("/showMedicinalDietByDisease/{diseaseId}/{pageNum}")
    public String showMedicinalDietByDisease(@PathVariable("diseaseId") long diseaseId, @PathVariable("pageNum") Integer pageNum, Model model){
        PageInfo<MedicinalDietTable> pageInfo = new PageInfo<>();
        pageInfo.setPageSize(8);
        pageInfo.setPageNum(pageNum);
        //搜索应用类别
        List<DiseaseCateTable> diseaseCateTableList = diseaseCateTableService.selectAllDiseaseCate();
        DiseaseCateTable diseaseCateTable = diseaseCateTableService.selectDiseaseCateById(diseaseId);
        //搜索药膳
//        PageInfo<MedicinalDietTable> medicinalDietTablePageInfo = medicinalDietTableService.selectMedicinalDietByApplication(applicationId, pageInfo);
        PageInfo<MedicinalDietTable> medicinalDietTablePageInfo = medicinalDietTableService.selectMedicinalDietByDisease(diseaseId, pageInfo);

        model.addAttribute("diseaseCateTableList", diseaseCateTableList);
        model.addAttribute("medicinalDietTablePageInfo", medicinalDietTablePageInfo);
        model.addAttribute("diseaseId",diseaseId);
        model.addAttribute("diseaseCateTable",diseaseCateTable);

//        for (int i=0;i<diseaseCateTableList.size();i++){
//            System.out.println("疾病分类"+(i+1)+": " + diseaseCateTableList.get(i));
//        }
        for (int i=0;i<medicinalDietTablePageInfo.getList().size();i++){
            System.out.println("疾病药膳"+(i+1)+": " + medicinalDietTablePageInfo.getList().get(i).getMedDietName());
        }
        return "/main/m_application";
    }


    //首页显示热门药膳
    @RequestMapping("/showMedicinalDietByClick")
    @ResponseBody //返回json,无界面跳转
    public List<MedicinalDietTable> showMedicinalDietByClick(){
        int num = 8; //显示热门数量
        List<MedicinalDietTable> medicinalDietTableList = medicinalDietTableService.selectMedicinalDietByClick(num);
        return medicinalDietTableList;
    }

    //调用 ${context}/main/showMedDetailByMedId/${obj.medicinalDietId}
    //显示药膳详情( 药膳表、图片表、评论表、(用户表))
    @RequestMapping("/showMedDetailByMedId/{medId}")
    public String showMedDetailByMedId(@PathVariable("medId") long medId, HttpSession session, Model model){
        //1、更新药膳表点击量
        medicinalDietTableService.updateMedClick(medId);
        //2、查找：药膳表、图片表
        MedicinalDietWithImage medicinalDietWithImage = medicinalDietTableService.selectDetailOfMedicinalDiet(medId);
        model.addAttribute("medicinalDietWithImage", medicinalDietWithImage);
        //3、查找药膳功效标签
        List<EfficacyCateTable> effiTagList = efficacyCateTableService.selectEfficacyByMedId(medId);
        model.addAttribute("effiTagList", effiTagList);
        //4、若有用户登录 ，USER_ID存在， 更新用户浏览表
        if(session.getAttribute("USER_ID") != null){
            long userId = (long)session.getAttribute("USER_ID");
            userBrowseTableService.insertBrowse(userId, medId);
        }
        return "/main/m_detail";
    }







}
