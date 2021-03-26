package com.lh.controller;

import com.lh.pojo.MedicinalDietTable;
import com.lh.service.CollectionTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/collection")
public class CollectionTableController {

    @Autowired
    private CollectionTableService collectionTableService;

    //个人中心 == 显示收藏记录（无分页）
    @RequestMapping("/showCollectionMed")
    public String showCollectionMed(HttpSession session, Model model){
        long userId = (long)session.getAttribute("USER_ID");
        List<MedicinalDietTable> medicinalDietTables = collectionTableService.selectCollectionByUserId(userId);
        model.addAttribute("medicinalDietTables", medicinalDietTables);
        return "/user/u_collection";
    }

    //取消收藏

    //添加收藏
    @RequestMapping("/addCollectionMed/{medId}")
    @ResponseBody //返回json,无界面跳转
    public boolean addCollectionMed(@PathVariable("medId") long medId, HttpSession session){
        if(session.getAttribute("USER_ID") == null){
            return false;
        }
        long userId = (long)session.getAttribute("USER_ID");
        System.out.println("用户ID: "+ userId + "药膳ID: " + medId);
        boolean result = collectionTableService.insertCollection(userId, medId);
        return result; //是否收藏成功
    }
}
