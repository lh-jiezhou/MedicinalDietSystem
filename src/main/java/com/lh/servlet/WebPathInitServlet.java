package com.lh.servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

//2:跟随容器启动
@WebServlet(urlPatterns = {}, loadOnStartup = 2)
public class WebPathInitServlet extends HttpServlet {

    @Override
    public void init(ServletConfig config) throws ServletException{
        //在整体应用上下文当中存储了一个context的值，用它来引用上下文路径。
        config.getServletContext().setAttribute("context",config.getServletContext().getContextPath());
        super.init(config);
    }

}
