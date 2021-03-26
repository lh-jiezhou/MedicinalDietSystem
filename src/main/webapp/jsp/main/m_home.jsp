<%--
  Created by IntelliJ IDEA.
  User: lh
  Date: 2019/4/8
  Time: 17:30
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
<jsp:include page="/jsp/common/m_header.jsp" />
<!--首页布局-->
<div style="background: #EEE8AA">
    <%--轮播布局--%>
    <div class="layui-container">
        <div class="layui-row">
            <br>
            <label class="layui-form-label" style="width: 100%; text-align: center; font-size: 22px; color: rgb(0, 0, 0);">五月，益气养心，清淡饮食</label>
        </div><br>
        <div class="layui-carousel" mc-attr-autoplay="true" mc-attr-interval="3000" mc-attr-width="100%" lay-anim="" lay-indicator="inside" lay-arrow="hover" style="width: 100%; height: 280px;" mc-attr-arrow="hover" mc-attr-indicator="inside">
            <div carousel-item="" class="">
                <%--图片轮播--%>
                <div class="layui-this layui-row">
                    <img width=100% height=100% alt="" src="${context}/static/images/common/图片轮播_1.png">
                </div>
                <div class="layui-row">
                    <img width=100% height=100% alt="" src="${context}/static/images/common/图片轮播_2.png">
                </div>
                <div class="layui-row">
                    <img width=100% height=100% alt="" src="${context}/static/images/common/图片轮播_3.png">
                </div>
            </div>
        </div>
    </div>
    <%--食材布局--%>
    <div class="layui-container">
        <hr class="" style="color: rgb(255, 140, 0); font-size: 0px; font-weight: bold;">
        <div class="layui-row">
            <label class="layui-form-label" style="width: 100%; text-align: center; font-size: 22px; color: rgb(0, 0, 0);">当季热门食材药材</label>
        </div>
        <div class="layui-tab" style="margin-top:20px; background: #FFFFFF;">
            <ul class="layui-tab-title" >
                <li class="layui-this">水果</li>
                <li class="">蔬菜</li>
                <li class="">药材</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show ">
                    <img width="150px" height="150px" style="margin-left: 5px" title="哈密瓜" src="${context}/static/images/material/f哈密瓜_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="木瓜" src="${context}/static/images/material/f木瓜_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="杨桃" src="${context}/static/images/material/f杨桃_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="椰子" src="${context}/static/images/material/f椰子_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="菠萝" src="${context}/static/images/material/f菠萝_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="西瓜" src="${context}/static/images/material/f西瓜_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="香蕉" src="${context}/static/images/material/f香蕉_0.png">
                </div>
                <div class="layui-tab-item">
                    <img width="150px" height="150px" style="margin-left: 5px" title="丝瓜" src="${context}/static/images/material/v丝瓜_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="杏鲍菇"  src="${context}/static/images/material/v杏鲍菇_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="苦瓜"  src="${context}/static/images/material/v苦瓜_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="茄子"  src="${context}/static/images/material/v茄子_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="西红柿"  src="${context}/static/images/material/v西红柿_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="豇豆"  src="${context}/static/images/material/v豇豆_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="黄瓜"  src="${context}/static/images/material/v黄瓜_0.png">
                </div>
                <div class="layui-tab-item">
                    <img width="150px" height="150px" style="margin-left: 5px" title="巴戟" src="${context}/static/images/material/m巴戟_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="柏子仁" src="${context}/static/images/material/m柏子仁_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="番泻叶" src="${context}/static/images/material/m番泻叶_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="白芍" src="${context}/static/images/material/m白芍_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="百合" src="${context}/static/images/material/m百合_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="茯苓" src="${context}/static/images/material/m茯苓_0.png">
                    <img width="150px" height="150px" style="margin-left: 5px" title="葛根" src="${context}/static/images/material/m葛根_0.png">
                </div>
            </div>
        </div>
    </div>
    <%--药膳布局--%>
    <div class="layui-container" >
        <hr class="" style="color: rgb(255, 140, 0); font-size: 0px; font-weight: bold;">
        <div class="layui-row">
            <label class="layui-form-label" style="width: 100%; text-align: center; font-size: 22px; color: rgb(0, 0, 0);">热门药膳推荐</label>
        </div>
        <%--当季推荐*8--%>
        <div class="layui-row" id="pageMed" style="margin-left: 40px">
            <%--<div class="layui-col-md3 " style="margin-top: 16px">--%>
                <%--<div class="layui-col-sm10" style="width:232px; height:290px; background: #FFFFFF;">--%>
                    <%--<a href="\" title="土豆木耳炒肉" class="big">--%>
                        <%--<img class="img" alt="土豆木耳炒肉" src="http://site.meishij.net/r/162/221/117912/a117912_148179578863385.jpg">--%>
                        <%--<div>--%>
                            <%--<div class="i" style="margin-top: 10px; margin-left: 10px">--%>
                                <%--<div class="c1 " style="display:inline ">--%>
                                    <%--<strong>艾叶生姜煮鸡蛋</strong>--%>
                                    <%--<span style="margin-left: 74px">煮    <span class="layui-icon layui-icon-face-smile" style="font-size: 14px; color: #FF4500;"></span></span>--%>
                                    <%--<br>--%>
                                    <%--<span>热度:--%>
                                        <%--<span class="layui-icon layui-icon-rate-solid" style="font-size: 14px; color: #FF4500;"></span>--%>
                                        <%--<span class="layui-icon layui-icon-rate-solid" style="font-size: 14px; color: #FF4500;"></span>--%>
                                        <%--<span class="layui-icon layui-icon-rate-solid" style="font-size: 14px; color: #FF4500;"></span>--%>
                                        <%--<span class="layui-icon layui-icon-rate-half" style="font-size: 14px; color: #FF4500;"></span>--%>
                                    <%--</span>--%>
                                    <%--<span style="line-height:30px; margin-left: 50px">清热类</span>--%>
                                <%--</div>--%>
                                <%--<div class="c2" style="display: none;">--%>
                                    <%--<ul>--%>
                                        <%--<li class="li1">【来源】《本草汇言》 </li>--%>
                                        <%--<li class="li2" style="line-height:30px; width:200px; white-space:nowrap; text-overflow:ellipsis; -o-text-overflow: ellipsis; overflow: hidden;">【功效】 清热解毒，消痈排脓，利水通淋。</li>--%>
                                    <%--</ul>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</div>--%>
                <%--<div class="layui-col-sm2" >--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--首页热点药膳推荐显示*8--%>
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

        $.ajax({
            url: '${context}/main/showMedicinalDietByClick',
            type: 'post',
            success: function (data) {
                // http://img5.imgtn.bdimg.com/it/u=3873489047,271379718&fm=26&gp=0.jpg
                var htmlCon = "";
                for(var i = 0; i < data.length; i++){
                    htmlCon += '<div class="layui-col-md3 " style="margin-top: 16px">\n' +
                        '                <div class="layui-col-sm10" style="width:232px; height:290px; background: #FFFFFF;">\n' +
                        '                    <a  href="${context}/main/showMedDetailByMedId/'+data[i].medicinalDietId+'" title="'+data[i].medDietName+'" class="big">\n' +
                        '                        <img class="img" alt="'+data[i].medDietName+'" width="232px" height="232px" src="${context}'+data[i].medDietImg+'" >\n' +
                        '                        <div >\n' +
                        '                            <div class="i" style="margin-top: 10px; margin-left: 10px" name="'+i+'"">\n' +
                        '                                <div class="c1'+i+'" style="display:inline ">\n' +
                        '                                    <strong>'+data[i].medDietName+'</strong>\n' +
                        '                                    <span style="margin-right: 14px; float:right">'+data[i].medMakeCate+'    <span class="layui-icon layui-icon-face-smile" style="font-size: 14px; color: #FF4500;"></span></span>\n' +
                        '                                    <br>\n' +
                        '                                    <span >热度:\n' +
                        '                                        <span class="layui-icon layui-icon-rate-solid" style="font-size: 14px; color: #FF4500;"></span>\n' +
                        '                                        <span class="layui-icon layui-icon-rate-solid" style="font-size: 14px; color: #FF4500;"></span>\n' +
                        '                                        <span class="layui-icon layui-icon-rate-solid" style="font-size: 14px; color: #FF4500;"></span>\n' +
                        '                                        <span class="layui-icon layui-icon-rate-half" style="font-size: 14px; color: #FF4500;"></span>\n' +
                        '                                    </span>\n' +
                        '                                    <span style="line-height:30px; margin-right: 14px; float:right">'+data[i].medEffiCate+'</span>\n' +
                        '                                </div>\n' +
                        '                                <div class="c2'+i+'" style="display: none;">\n' +
                        '                                    <ul>\n' +
                        '                                        <li class="li1" style="width:200px; white-space:nowrap; text-overflow:ellipsis; -o-text-overflow: ellipsis; overflow: hidden;">【来源】'+data[i].medDietOrigin+' </li>\n' +
                        '                                        <li class="li2" style="line-height:30px; width:200px; white-space:nowrap; text-overflow:ellipsis; -o-text-overflow: ellipsis; overflow: hidden;">【功效】 '+data[i].medDietEfficacy+'</li>\n' +
                        '                                    </ul>\n' +
                        '                                </div>\n' +
                        '                            </div>\n' +
                        '                        </div>\n' +
                        '                    </a>\n' +
                        '                </div>\n' +
                        '                <div class="layui-col-sm2" >\n' +
                        '                </div>\n' +
                        '            </div>'
                }
                $('#pageMed').html(htmlCon);
            }
        })

        $("#pageMed").on("mouseover",".i", function () {
            $(".i > .c1"+$(this).attr("name")+"").css("display","none");
            $(".i > .c2"+$(this).attr("name")+"").css("display","");
        });
        $("#pageMed").on("mouseout",".i", function () {
            $(".i > .c1"+$(this).attr("name")+"").css("display","");
            $(".i > .c2"+$(this).attr("name")+"").css("display","none");
        });

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

        //导航条
        $("#myTab li:nth-child(1)").prop("class","layui-nav-item layui-this");

        // $(function () { //外层
        //
        // })
    });



</script>
</body>
</html>
