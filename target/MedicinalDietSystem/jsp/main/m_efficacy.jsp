<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lh
  Date: 2019/4/18
  Time: 14:24
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

<%--主体部分--%>
<div style="background: #EEE8AA">
    <div class="layui-fluid">
        <div class="layui-row">
            <br>
            <%--金缨的《格言联璧》--%>
            <label class="layui-form-label" style="width: 100%; text-align: center; font-size: 22px; color: rgb(0, 0, 0);">宠辱不惊，肝木自宁；动静以敬，心火自定；饮食有节，脾土安和；调息寡言，肺金自全；恬淡少欲，肾水自足</label>
        </div><br>
    </div>
    <div class="layui-container">
        <div class="layui-row">
            <%--头部类别--%>
            <div class="layui-col-md12 layui-col-xs12 layui-col-sm12" style="background-color: #ffffff; height: 90px">
                <dl class="dlCate" >
                    <dt style="font-size: 24px; margin-left: 10px; margin-top: 8px">五脏调理</dt>
                    <c:forEach items="${efficacyCateTables}" var="obj">
                        <dd class="ddCate" name="${obj.efficacyId}" style="float: left; margin-left: 25px; margin-top: 10px; font-size: 17px;">
                            <a href="${context}/main/showMedicinalDietByEfficacy/${obj.efficacyId}/1" title="${obj.efficacyName}" name="${obj.efficacyId}">${obj.efficacyName}</a>
                        </dd>
                    </c:forEach>
                </dl>
            </div>
            <%--功效小提示（说明，适宜，禁忌）--%>
            <div class="layui-col-md12 layui-col-xs12 layui-col-sm12" style="margin-top: 10px; background: #ffffff">
                <br>
                <div class="layui-row">
                    <div class="layui-col-md12">
                        <dl>
                            <dt style="font-size: 18px; margin-left: 10px; margin-top: 2px">调养小百科:</dt>
                            <dd style="float: left; margin-left: 28px; margin-top: 5px; font-size: 15px;width: 1060px">${efficacyCateTable.efficacyInformation}</dd>
                        </dl>
                    </div>
                    <br>
                    <div class="layui-col-md12">
                        <hr>
                        <dl>
                            <dt style="font-size: 18px; margin-left: 10px; margin-top: 2px">饮食适宜:</dt>
                            <dd style="float: left; margin-left: 28px; margin-top: 5px; font-size: 15px;width: 1060px">${efficacyCateTable.efficacySuitable}</dd>
                            <dd style="height: 55px"></dd>
                        </dl>
                    </div>
                    <%--<hr>--%>
                    <%--<div class="layui-col-md12">--%>
                        <%--<div class="layui-col-md12">--%>
                            <%--<dl class="" >--%>
                                <%--<dt style="font-size: 18px; margin-left: 10px; margin-top: 8px">禁忌食材药材:</dt>--%>
                                <%--<dd class=""  style="float: left; margin-left: 25px; margin-top: 10px; font-size: 15px;">你因该...</dd>--%>
                            <%--</dl>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                </div>
            </div>
            <%--药膳显示--%>
            <div class="layui-col-md12 layui-col-xs12 layui-col-sm12">
                    <%--排序按钮 background-color: #fff9ec; --%>
                    <div class="layui-row" style="margin-top: 16px; width: 945px">
                        <ul class="">
                            <li style="text-align: center; line-height:42px; font-size: 18px; width:150px; height:40px; margin-top: 10px;float: left; background-color:#ff971b; margin-right: 10px"><a href="####" class="current" style="">
                                ${efficacyName}药膳菜谱</a></li>
                            <li style="text-align: center; line-height:42px; font-size: 18px; width:150px; height:40px; margin-top: 10px;float: left; background-color:#ff971b; margin-right: 10px "><a href="####" class="current" style="">
                                ${efficacyName}食材药材</a></li>
                            <li style="text-align: center; line-height:42px; font-size: 18px; width:150px; height:40px; margin-top: 10px;float: left; background-color:#ff971b; margin-right: 10px"><a href="####" class="current" style="">
                                ${efficacyName}注意适宜</a></li>
                        </ul>
                    </div>
                    <%--显示药膳--%>
                    <div class="layui-row" id="pageMed">
                        <%--status为序号 0 开始--%>
                        <c:forEach items="${medicinalDietTablePageInfo.list}" var="obj" varStatus="status">
                            <div class="layui-col-md3 " style="margin-top: 16px">
                                <div class="layui-col-sm10" style="width:232px; height:290px; background: #FFFFFF;">
                                    <a href="${context}/main/showMedDetailByMedId/${obj.medicinalDietId}" title="${obj.medDietName}" class="big">
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
                    </div>
                    <%--分页--%>
                    <div style="margin-left: 320px; margin-top: 20px " >
                        <a href="javascript:void(0);" page="first"><button class="layui-btn layui-btn-warm">首页</button></a>
                        <a href="javascript:void(0);" page="prev"><button class="layui-btn layui-btn-warm">上一页</button></a>
                        <a href="javascript:void(0);" page="next"><button class="layui-btn layui-btn-warm">下一页</button></a>
                        <a href="javascript:void(0);" page="last"><button class="layui-btn layui-btn-warm">尾页</button></a>
                    </div>
                </div>
        </div>

    </div>
    <div style="height: 25px;"></div>
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
        //类别卡片==============start
        $(".dlCate").on("mouseover",".ddCate", function () {
            $(this).css("background-color","#ffd84d");
        });
        $(".dlCate").on("mouseout",".ddCate", function () {
            $(this).css("background-color","#ffffff");
        });
        //分页事件==============start
        $('a[page]').click(function () {
            var pageNum = 1;
            var currPage = '${medicinalDietTablePageInfo.pageNum}';
            var totalPages = '${medicinalDietTablePageInfo.pages}';
            var efficacyId = '${efficacyId}';
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
            $('input[name=efficacyId]').val(efficacyId);
            //提交超链接
            window.open('${context}/main/showMedicinalDietByEfficacy/'+efficacyId+'/'+pageNum, '_self');
        })
        //药膳卡片==============start
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
        $("#myTab li:nth-child(4)").prop("class","layui-nav-item layui-this");

        // $(function () {
        //     $.ajax({})
        // })
    });
</script>
</body>
</html>