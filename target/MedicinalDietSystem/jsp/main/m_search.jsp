<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lh
  Date: 2019/4/17
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>药膳家 欢迎您！</title>
    <link rel="icon" href="${context}/static/images/common/网站icon.png" type="image/x-icon">
    <%--引入css,否则没有这个样式--%>
    <link href="${context}/static/plugins/layui/css/layui.css" rel="stylesheet" media="all"/>
    <link href="${context}/static/plugins/layui-ext.css" rel="stylesheet" media="all">
    <link href="${context}/static/plugins/layuiadmin/admin.css" rel="stylesheet" media="all">
    <link href="${context}/static/plugins/layuiadmin/template.css" rel="stylesheet" media="all">
</head>
<body>
<%--####--%>

<%--头部导航快块区域--%>
<div class="layui-fluid" style="height:22px; background-color: #CD853F;">
    <div class="layui-row">
        <div class="layui-col-md9" >
        <span style="margin-left:160px; ">
            <img src="${context}/static/images/common/minilogo.png" class="" height="40" width="100">
        </span>
            <a href="${context}/jsp/main/m_home.jsp"><span style="margin-left:16px; font-size: 16px; color: #FAFAD2">首页</span></a>
            <a href="${context}/main/showAllMedicinalDiet/%25/1"><span style="margin-left:16px;font-size: 16px; color: #FAFAD2">药膳大全</span></a>
            <a href="${context}/jsp/main/m_knowledge.jsp" ><span style="margin-left:16px;font-size: 16px; color: #FAFAD2">药膳百科</span></a>
            <a href="#"><span style="margin-left:16px;font-size: 16px; color: #FAFAD2">帮助</span></a>
        </div>
        <c:choose>
            <c:when test="${SESSION_USER.userNo != null}">
                <%--登录后--%>
                <div class="layui-col-md3" >
                    <a href="${context}/jsp/user/u_personal.jsp">
                        <img src="${context}/static/images/common/用户头像.png" class="layui-nav-img">
                        <span style="color: #e2e2e2; margin-right: 15px">${SESSION_USER.userNo}</span>
                    </a>
                    <a href="${context}/jsp/user/u_personal.jsp">
                        <span style="color: #e2e2e2; margin-right: 15px">个人中心</span>
                    </a>
                    <a class="tips" href="javascript:;" >
                        <span style="color: #e2e2e2">退出</span>
                    </a>
                </div>
            </c:when>
            <c:otherwise>
                <%--登录前--%>
                <div class="layui-col-md3" >
                    <i class="layui-icon layui-icon-login-wechat"></i><a href="/" class="" style="text-indent: 0px; font-size: 16px;color: #FAFAD2;">微信登录</a>&nbsp; &nbsp;&nbsp;
                    <a href="${context}/jsp/user/u_register.jsp" class="" style="font-size: 16px;color: #FAFAD2;">注册</a>&nbsp; &nbsp;&nbsp;
                    <a href="${context}/jsp/user/u_login.jsp" class="" style="font-size: 16px;color: #FAFAD2;">登录</a>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</div>
<%--头部搜索块区域--%>
<div class="layui-fluid" style="background-color: #ffffff;">
    <div class="layui-inline" style="margin-left: 480px">
        <form class="layui-form" style="left: 10px;" action="${context}/main/showMedicinalDietByWords" method="post">
            <div class="layui-inline" >
                <input name="words" autocomplete="off" value="" class="layui-input" style="width: 300px; border:2px solid rgb(255,184,0);" placeholder="请输入药膳名/症状/功能">
            </div>
            <div class="layui-inline" >
                <input name="pageNum" lay-verify="title" type="hidden"  value="1">
            </div>
            <button class="layui-btn layui-btn-warm" style="width: 100px;"><i class="layui-icon layui-icon-search"></i></button>
        </form>
    </div>
</div>
<%--主体区域--%>
<div style="background: #EEE8AA">
    <div class="layui-container" >
        <div class="layui-row">
            <br>
            <%--首部面包屑--%>
            <span class="layui-breadcrumb" lay-separator=">" >
              <a><cite>当前位置</cite></a>
              <a href="${context}/jsp/main/m_home.jsp">首页</a>
              <a href="${context}/main/showMedicinalDietByWords">搜索</a>
              <a><cite>${inputWords}</cite></a>
            </span>
            <%--药膳分类筛选栏--%>
            <div class="layui-col-md12 layui-col-xs12 layui-col-sm12" style="margin-top: 10px; background: #ffffff">
                <br>
                <div class="layui-row ">
                    <div class="layui-col-md12">
                        <label class="layui-form-label">功效分类：</label>
                        <ul>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/解表类/1" class="">解表类</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/清热类/1" class="">清热类</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/泻下类/1" class="">泻下类</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/温里祛寒类/1" class="">温里祛寒类</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/祛风湿类/1" class="">祛风湿类</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/利水祛湿类/1" class="">利水祛湿类</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/化痰止咳平喘类/1" class="">化痰止咳平喘类</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/消食解酒类/1" class="">消食解酒类</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/理气类/1" class="">理气类</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/理血类/1" class="">理血类</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/安神类/1" class="">安神类</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/平肝潜阳类/1" class="">平肝潜阳类</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/固涩类/1" class="">固涩类</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/补益类/1" class="">补益类</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/养生保健类/1" class="">养生保健类</a></li>
                        </ul>
                    </div>
                    <br><hr style="margin-top: 48px; ">
                    <div class="layui-col-md12">
                        <label class="layui-form-label">制法分类：</label>
                        <ul>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/煮/1" class="">煮</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/炖/1" class="">炖</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/蒸/1" class="">蒸</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/煎/1" class="">煎</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/泡/1" class="">泡</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/熬/1" class="">熬</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/炒/1" class="">炒</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/烧/1" class="">烧</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/炸/1" class="">炸</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/其它/1" class="">其它</a></li>
                        </ul>
                    </div>
                    <hr style="margin-top: 50px">
                    <div class="layui-col-md12">
                        <label class="layui-form-label">形态分类：</label>
                        <ul>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/粥食类/1" class="">粥食类</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/菜肴类/1" class="">菜肴类</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/饮料类/1" class="">饮料类</a></li>
                            <li style="margin-top: 8px;float: left;margin-right: 20px"><a href="${context}/main/showAllMedicinalDiet/养生保健类/1" class="">其它</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <%--药膳主体显示栏--%>
            <div class="layui-col-md10 layui-col-xs10 layui-col-sm10">
                <%--排序按钮--%>
                <div class="layui-row" style="background-color: #fff9ec; margin-top: 16px; width: 945px">
                    <ul class="">
                        <li style="margin-top: 10px;float: left;margin-right: 20px; margin-left: 20px"><a href="####" class="current">
                            默认排序<span class="layui-icon layui-icon-triangle-d" style="font-size: 14px; color: #FF4500;"></span></a></li>
                        <li style="margin-top: 10px;float: left;margin-right: 20px; margin-left: 20px"><a href="">
                            按发布时间<span class="layui-icon layui-icon-triangle-d" style="font-size: 14px; color: #FF4500;"></span></a></li>
                        <li style="margin-top: 10px;float: left;margin-right: 20px; margin-left: 20px"><a href="">
                            按热度<span class="layui-icon layui-icon-triangle-d" style="font-size: 14px; color: #FF4500;"></span></a></li>
                        <li style="margin-top: 10px;float: left;margin-right: 20px; margin-left: 20px"><a href="">
                            按人气<span class="layui-icon layui-icon-triangle-d" style="font-size: 14px; color: #FF4500;"></span></a></li>
                        <li style="margin-top: 20px;float: left;margin-right: 20px; visibility: hidden">hidden</li>
                    </ul>
                </div>
                <%--显示药膳--%>
                <div class="layui-row" id="pageMed">
                    <c:choose>
                        <c:when test="${medicinalDietTablePageInfo.list.size() != 0}">
                            <%--status为序号 0 开始--%>
                            <c:forEach items="${medicinalDietTablePageInfo.list}" var="obj" varStatus="status">
                                <div class="layui-col-md3 " style="margin-top: 16px">
                                    <div class="layui-col-sm10" style="width:232px; height:290px; background: #FFFFFF;">
                                        <a  href="${context}/main/showMedDetailByMedId/${obj.medicinalDietId}" title="${obj.medDietName}" class="big">
                                            <img class="img" alt="${obj.medDietName}" width="232px" height="232px" src="${context}${obj.medDietImg}" >
                                            <div >
                                                <div class="i" style="margin-top: 10px; margin-left: 10px" name="${status.index}">
                                                    <div class="c1${status.index}" style="display:inline ">
                                                        <strong>${obj.medDietName}</strong>
                                                        <span style="margin-right: 14px; float:right">${obj.medMakeCate}    <span class="layui-icon layui-icon-face-smile" style="font-size: 14px; color: #FF4500;"></span></span>
                                                        <br>
                                                        <span >热度:
                                                    <span class="layui-icon layui-icon-rate-solid" style="font-size: 14px; color: #FF4500;"></span>
                                                    <span class="layui-icon layui-icon-rate-solid" style="font-size: 14px; color: #FF4500;"></span>
                                                    <span class="layui-icon layui-icon-rate-solid" style="font-size: 14px; color: #FF4500;"></span>
                                                    <span class="layui-icon layui-icon-rate-half" style="font-size: 14px; color: #FF4500;"></span>
                                                </span>
                                                        <span style="line-height:30px; margin-right: 14px; float:right">${obj.medEffiCate}  </span>
                                                    </div>
                                                    <div class="c2${status.index}" style="display: none;">
                                                        <ul>
                                                            <li class="li1" style="width:200px; white-space:nowrap; text-overflow:ellipsis; -o-text-overflow: ellipsis; overflow: hidden;">【来源】${obj.medDietOrigin} </li>
                                                            <li class="li2" style="line-height:30px; width:200px; white-space:nowrap; text-overflow:ellipsis; -o-text-overflow: ellipsis; overflow: hidden;">【功效】 ${obj.medDietEfficacy}</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="layui-col-sm2" ></div>
                                </div>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <%--搜索无记录--%>
                            <div style="margin-top: 10px; font-size: 20px; margin-left: 5px">
                                <span >搜索结果：0（试试缩短搜索关键字吧~）</span>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
                <%--分页--%>
                <div style="margin-left: 320px; margin-top: 20px " >
                    <a href="javascript:void(0);" page="first"><button class="layui-btn layui-btn-warm">首页</button></a>
                    <a href="javascript:void(0);" page="prev"><button class="layui-btn layui-btn-warm">上一页</button></a>
                    <a href="javascript:void(0);" page="next"><button class="layui-btn layui-btn-warm">下一页</button></a>
                    <a href="javascript:void(0);" page="last"><button class="layui-btn layui-btn-warm">尾页</button></a>
                </div>
            </div>
            <%--右侧推荐搜索栏--%>
            <div class="layui-col-md2 layui-col-xs2 layui-col-sm2" style="margin-top: 16px; background-color: #ffffff; height: 343px">
                <div class="layui-fluid" style="height: 10px">
                    <span >大家在搜索....</span>
                </div>
                <hr class="layui-bg-red">
                <ul class="" style="margin-left: 20px">
                <c:forEach items="${searchs}" var="obj" varStatus="status">
                    <a><li class="" style="line-height:30px">${status.index+1}、${obj}</li></a>
                </c:forEach>
            </ul >
            </div>
        </div>
    </div><br><br>
</div>

<%--####--%>
<jsp:include page="/jsp/common/m_tail.jsp" />
<script type="text/javascript" src="${context}/static/plugins/layui/layui.js"></script>
<script type="text/javascript" src="${context}/static/plugins/view/magicalcoder-layuiout.js"></script>
<script>
    //JavaScript代码区域
    layui.use(['element', 'jquery', 'layer'], function(){
        var element = layui.element;
        var jquery,$ = layui.jquery;
        var layer = layui.layer;
        //药膳卡片==============start
        $("#pageMed").on("mouseover",".i", function () {
            $(".i > .c1"+$(this).attr("name")+"").css("display","none");
            $(".i > .c2"+$(this).attr("name")+"").css("display","");
        });
        $("#pageMed").on("mouseout",".i", function () {
            $(".i > .c1"+$(this).attr("name")+"").css("display","");
            $(".i > .c2"+$(this).attr("name")+"").css("display","none");
        });
        //分页事件==============start
        $('a[page]').click(function () {
            var pageNum = 1;
            var currPage = '${medicinalDietTablePageInfo.pageNum}';
            var totalPages = '${medicinalDietTablePageInfo.pages}';
            var inputWords = '${inputWords}'; //输入搜索
            var v = $(this).attr('page');

            switch (v) {
                case "first":
                    pageNum = 1;
                    break;
                case "prev":
                    pageNum = parseInt(currPage) - 1;
                    if(pageNum < 1)
                        pageNum = 1;
                    break;
                case "next":
                    pageNum = parseInt(currPage) + 1;
                    if(pageNum > totalPages)
                        pageNum = totalPages;
                    break;
                case "last":
                    pageNum = totalPages;
                    break;
            }

            //更新隐藏域里面的值和搜索值
            $('input[name=pageNum]').val(pageNum);
            $('input[name=words]').val(inputWords);
            //提交表单
            $('form').submit();
        })
        //退出
        $(".tips").click(function () {
            layer.open({
                title: '提示'
                ,btnAlign: 'c'
                ,offset: '160px'
                ,content: '确认退出？'
                ,btn: ['确认', '取消']
                ,yes: function(index, layero){
                    //按钮【按钮一】的回调
                    window.open('${context}/user/userLoginOut', '_self');
                }
                ,btn2: function(index, layero){
                    //按钮【按钮二】的回调
                    //return false 开启该代码可禁止点击该按钮关闭
                }
            });
        })

        // $(function () {
        //     //主体
        //     $.ajax({})
        // })
    });




</script>
</body>
</html>
