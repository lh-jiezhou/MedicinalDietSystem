package com.lh.controller;

import com.lh.pojo.AdminMedTable;
import com.lh.pojo.ImageTable;
import com.lh.pojo.MedicinalDietTable;
import com.lh.service.AdminMedTableService;
import com.lh.service.MedicinalDietTableService;
import net.sf.json.JSONObject;
import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.*;

@Controller
@RequestMapping("/admin")
public class AdminMedTableController {
    @Autowired
    private AdminMedTableService adminMedTableService;

    // 登录
    @RequestMapping(value = "/login",produces="text/html;charset=utf-8")
    @ResponseBody
    public String login(@RequestBody Map<String,String> map,HttpSession session){
        System.out.println(map.get("adminMedId"));
        AdminMedTable adminMedTable = adminMedTableService.selectAdminMedInfoById(map.get("adminMedId"));
        if(!(adminMedTable==null)){
            if (adminMedTable.getAdminMedPwd().equals(map.get("adminPwd"))) {
                session.setAttribute("SESSION_AdminMed", adminMedTable);
                return "success";
            }
            return "密码错误!";
        }else{
            return "账号不存在!";
        }
    }

    // 注销
    @RequestMapping(value = "/logout",produces="text/html;charset=utf-8")
    public String logout(HttpSession session){
        session.invalidate(); // 清空session
        System.out.println("logout");
        return "redirect:/jsp/admin/am_login.jsp";
    }

    // 显示首页图表
    @RequestMapping(value = "/showDiv",produces = "application/json;charset=utf-8")
    @ResponseBody
    public Map<String,Object> showDiv(){
        List<Map<String,Object>> countEffiList = adminMedTableService.selectCountEffi();
        List<Map<String,Object>> countShapeList = adminMedTableService.selectCountShape();
        System.out.println(countEffiList);
        Map<String,Object> map = new HashedMap();
        map.put("countEffiList",countEffiList);
        map.put("countShapeList",countShapeList);
        System.out.println(map);
        return map;
    }

    // 药膳管理
    @RequestMapping(value = "/showMedicinalJsp")
    public String showMedicinalJsp(Model model){
        List<MedicinalDietTable> list = adminMedTableService.selectMedicinalDietInfo("");
        int max=0;
        int maxPage=0;
        if (list.size()>15){
            max = 15;
            maxPage = list.size()%15==0?list.size()/15:list.size()/15+1;
        }else{
            max = list.size();
            maxPage = 1;
        }
        model.addAttribute("MedicinalDietTableList",list.subList(0,max));
        model.addAttribute("maxPage",maxPage);
        model.addAttribute("condition","");
        return "/admin/am_medicinal_diet";
    }

    // 根据id 查询药膳信息
    @RequestMapping(value = "/selectMedicinalDietInfoById/{id}")
    public String selectMedicinalDietInfoById(@PathVariable("id") String id, Model model){
        MedicinalDietTable medicinalDietTable = adminMedTableService.selectMedicinalDietInfoById(Integer.parseInt(id));
        model.addAttribute("MedicinalDietTable",medicinalDietTable);
        return "/admin/am_medicinal_diet_query";
    }

    // 显示药膳信息编辑页面
    @RequestMapping(value = "/editMedicinalDietJsp/{id}")
    public String editMedicinalDietJsp(@PathVariable("id") String id, Model model){
        MedicinalDietTable medicinalDietTable = adminMedTableService.selectMedicinalDietInfoById(Integer.parseInt(id));
        model.addAttribute("MedicinalDietTable",medicinalDietTable);
        return "/admin/am_medicinal_diet_edit";
    }

    // 药膳信息编辑
    @RequestMapping(value = "/editMedicinalInfo",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String editMedicinalInfo(@RequestBody Map<String,String> map,HttpSession session){
        MedicinalDietTable medicinalDietTable = new MedicinalDietTable();
        medicinalDietTable.setMedicinalDietId(Integer.parseInt(map.get("medicinalDietId")));
        medicinalDietTable.setMedDietName(map.get("medDietName"));
        medicinalDietTable.setMedDietOrigin(map.get("medDietOrigin"));
        medicinalDietTable.setMedDietConstitute(map.get("medDietConstitute"));
        medicinalDietTable.setMedDietApplication(map.get("medDietApplication"));
        medicinalDietTable.setMedDietEfficacy(map.get("medDietEfficacy"));
        medicinalDietTable.setMedEffiCate(map.get("medEffiCate"));
        medicinalDietTable.setMedDietPreparation(map.get("medDietPreparation"));
        medicinalDietTable.setMedDietExplain(map.get("medDietExplain"));
        medicinalDietTable.setMedShapeCate(map.get("medShapeCate"));
        medicinalDietTable.setMedMakeCate(map.get("medMakeCate"));
        medicinalDietTable.setMedicinalPubId(((AdminMedTable)session.getAttribute("SESSION_AdminMed")).getAdminMedId());
        medicinalDietTable.setMedDietPrecautions(map.get("medDietPrecautions"));
        return adminMedTableService.updateMedicinalDietInfo(medicinalDietTable);
    }

    // 查询发布者信息
    @RequestMapping(value = "/showPublisherInfo",produces = "application/json;charset=utf-8")
    @ResponseBody
    public Map<String,String> showPublisherInfo(@RequestBody Map<String,String> map){
        AdminMedTable adminMedTable = adminMedTableService.selectAdminMedInfoById(map.get("id"));
        Map<String,String> returnMap = new HashedMap();
        if (adminMedTable!=null){
            returnMap.put("name",adminMedTable.getAdminMedName());
            returnMap.put("tel",adminMedTable.getAdminMedTel());
        }else{
            returnMap.put("name","None");
            returnMap.put("tel","None");
        }
        return returnMap;
    }

    //药膳信息添加
    @RequestMapping(value = "/addMedicinalInfo",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String addMedicinalInfo(@RequestBody Map<String,String> map,HttpSession session){
        MedicinalDietTable medicinalDietTable = new MedicinalDietTable();
        medicinalDietTable.setMedDietName(map.get("medDietName"));
        medicinalDietTable.setMedDietOrigin(map.get("medDietOrigin"));
        medicinalDietTable.setMedDietConstitute(map.get("medDietConstitute"));
        medicinalDietTable.setMedDietApplication(map.get("medDietApplication"));
        medicinalDietTable.setMedDietEfficacy(map.get("medDietEfficacy"));
        medicinalDietTable.setMedEffiCate(map.get("medEffiCate"));
        medicinalDietTable.setMedDietPreparation(map.get("medDietPreparation"));
        medicinalDietTable.setMedDietExplain(map.get("medDietExplain"));
        medicinalDietTable.setMedShapeCate(map.get("medShapeCate"));
        medicinalDietTable.setMedMakeCate(map.get("medMakeCate"));
        System.out.println("lh测试"+ ((AdminMedTable)session.getAttribute("SESSION_AdminMed")).getAdminMedId());
        medicinalDietTable.setMedicinalPubId(((AdminMedTable)session.getAttribute("SESSION_AdminMed")).getAdminMedId());
        medicinalDietTable.setMedDietPrecautions(map.get("medDietPrecautions"));
        adminMedTableService.insertMedicinalDietInfo(medicinalDietTable);
        return "成功存储信息!";
    }

    //药膳信息查询
    @RequestMapping(value = "/selectMedDietByCondition",produces = "application/json;charset=utf-8")
    @ResponseBody
    public Map<String,Object> selectMedDietByCondition(@RequestBody Map<String,String> map){
        List<MedicinalDietTable> list= adminMedTableService.selectMedicinalDietInfo(map.get("condition"));
        int max=0;
        int maxPage=0;
        if (list.size()>15){
            max = 15;
            maxPage = list.size()%15==0?list.size()/15:list.size()/15+1;
        }else{
            max = list.size();
            maxPage = 1;
        }
        Map<String,Object> returnMap = new HashedMap();
        returnMap.put("MedicinalDietTableList",list.subList(0,max));
        returnMap.put("maxPage",maxPage);
        returnMap.put("condition",map.get("condition"));
        return returnMap;
    }

    // 分页、条件查询
    @RequestMapping(value = "/selectMedDietByPageOrConditon")
    @ResponseBody
    public Map<String,List<MedicinalDietTable>> selectMedDietByPageOrConditon(@RequestBody Map<String,String> map){
        List<MedicinalDietTable> list= adminMedTableService.selectMedicinalDietPageInfo(Integer.parseInt(map.get("page"))*15,15,map.get("condition"));
        Map<String,List<MedicinalDietTable>> returnMap = new HashedMap();
        returnMap.put("MedicinalDietTableList",list);
        return returnMap;
    }

    // 药膳信息删除
    @RequestMapping(value = "/deleteMedicinalInfo",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String deleteMedicinalInfo(@RequestBody Map<String,String> map){
        for (String id :map.get("id").split(";")){
            adminMedTableService.deleteMedicinalTableInfo(Integer.parseInt(id));
        }
        return "成功删除";
    }

    // 药膳制作流程查询
    @RequestMapping(value = "/selectMedicinalImage",produces = "application/json;charset=utf-8")
    @ResponseBody
    public Map<String,Object> selectMedicinalImage(@RequestBody Map<String,String> map){
        List<ImageTable> imageTable = adminMedTableService.selectMedicinalImage(Integer.parseInt(map.get("id")));
        for(ImageTable table:imageTable){
            System.out.println(table.getImageExplain());
        }
        Map<String,Object> returnMap = new HashedMap();
        returnMap.put("ImageTableList",imageTable);
        return returnMap;
    }

    // 添加制作流程 上传图片
    @RequestMapping(value = "/uploadImg",produces = "application/json;charset=utf-8")
    @ResponseBody
    public JSONObject uploadImg(@RequestParam("file") MultipartFile file) throws IOException {
        JSONObject json = new JSONObject();
        String path = "G:\\ideaProjects\\MedicinalDietSystem\\src\\main\\webapp\\static\\images\\";
        File dir = new File(path, file.getOriginalFilename());
        if (!dir.exists()) {
            dir.mkdirs();
            json.put("msg","上传成功");
            json.put("code",0);
            json.put("src",file.getOriginalFilename());
        } else {
            json.put("msg","上传失败");
            json.put("code",1);
        }
        file.transferTo(dir);
        return json;
    }

    // 添加制作流程
    @RequestMapping(value = "/addImagesInfo",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String addImagesInfo(@RequestBody Map<String,String> map){
        int maxSequence = adminMedTableService.selectImageMaxSequence(Integer.parseInt(map.get("goodsId")));
        ImageTable imageTable = new ImageTable();
        imageTable.setGoodsId(Integer.parseInt(map.get("goodsId")));
        imageTable.setGoodsCategory(1);
        imageTable.setImageAddress(map.get("srcs"));
        imageTable.setImageSequence(maxSequence+Integer.parseInt(map.get("explains").split("\\.")[0]));
        imageTable.setImageExplain(map.get("explains"));
        adminMedTableService.insertImageInfo(imageTable);
        return "添加成功!";
    }

    // 删除制作流程
    @RequestMapping(value = "/deleteImageInfo",produces = "text/html;charset=utf-8")
    @ResponseBody
    public String deleteImageInfo(@RequestBody Map<String,String> map){
        adminMedTableService.deleteImageInfo(Integer.parseInt(map.get("id")));
        return  "成功删除制作流程!";
    }
}
