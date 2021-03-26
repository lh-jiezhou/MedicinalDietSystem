package com.lh.controller;

import com.lh.pojo.MedicinalDietTable;
import com.lh.service.UserBrowseTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/browse")
public class UserBrowseTableController {

    @Autowired
    private UserBrowseTableService userBrowseTableService;

    //个人中心 == 显示浏览记录（无分页）
    @RequestMapping("/showBrowseMed")
    public String showBrowseMed(Model model, HttpSession session){
        long userId = (long)session.getAttribute("USER_ID");
        List<MedicinalDietTable> medicinalDietTables = userBrowseTableService.selectBrowse(userId);
        model.addAttribute("medicinalDietTables", medicinalDietTables);
        for (int i=0;i<medicinalDietTables.size();i++){
            System.out.println("热门药膳"+(i+1)+": " + medicinalDietTables.get(i).getMedDietName());
        }
        return "/user/u_browse";
    }
    //个人中心 == 清空浏览记录


}
