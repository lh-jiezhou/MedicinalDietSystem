<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lh
  Date: 2019/4/18
  Time: 14:25
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
            <%--唐代 孙思邈--%>
            <label class="layui-form-label" style="width: 100%; text-align: center; font-size: 22px; color: rgb(0, 0, 0);">凡欲治疗，先以食疗，食疗不愈，后乃用药</label>
        </div><br>
    </div>

    <div class="layui-container">
        <div class="layui-row">
            <%--头部类别--%>
            <div class="layui-col-md12 layui-col-xs12 layui-col-sm12" style="background-color: #ffffff; height: 90px">
                <dl class="dlCate" >
                    <%--<dt style="font-size: 24px; margin-left: 10px; margin-top: 8px">应用调理</dt>--%>
                    <%--<c:forEach items="${applicationCateTables}" var="obj">--%>
                        <%--<dd class="ddCate" name="${obj.applicationId}" style="float: left; margin-left: 25px; margin-top: 10px; font-size: 17px;">--%>
                            <%--<a href="${context}/main/showMedicinalDietByApplication/${obj.applicationId}/1" title="${obj.applicationName}" name="${obj.applicationId}">${obj.applicationName}</a>--%>
                        <%--</dd>--%>
                    <%--</c:forEach>--%>
                    <dt style="font-size: 24px; margin-left: 10px; margin-top: 8px">疾病调理</dt>
                    <c:forEach items="${diseaseCateTableList}" var="obj">
                        <dd class="ddCate" name="${obj.diseaseId}" style="float: left; margin-left: 25px; margin-top: 10px; font-size: 17px;">
                            <a href="${context}/main/showMedicinalDietByDisease/${obj.diseaseId}/1" title="${obj.diseaseName}" name="${obj.diseaseId}">${obj.diseaseName}</a>
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
                            <dt style="font-size: 18px; margin-left: 10px; margin-top: 2px">症状小百科:</dt>
                            <dd style="float: left; margin-left: 28px; margin-top: 5px; font-size: 15px;width: 1060px">${diseaseCateTable.diseaseInformation}</dd>
                        </dl>
                    </div>
                    <br>
                    <div class="layui-col-md12">
                        <hr>
                        <dl>
                            <dt style="font-size: 18px; margin-left: 10px; margin-top: 2px">饮食适宜:</dt>
                            <dd style="float: left; margin-left: 28px; margin-top: 5px; font-size: 15px;width: 1060px">${diseaseCateTable.diseaseSuitable}</dd>
                        </dl>
                    </div>
                    <div class="layui-col-md12">
                        <hr style="height: 2px">
                        <dl>
                            <dt style="font-size: 18px; margin-left: 10px; margin-top: 2px">饮食注意:</dt>
                            <dd style="float: left; margin-left: 28px; margin-top: 5px; font-size: 15px;width: 1060px">${diseaseCateTable.diseaseTaboo}</dd>
                            <dd style="height: 55px"></dd>
                        </dl>
                    </div>

                </div>
            </div>
            <%--药膳显示--%>
            <div class="layui-col-md12 layui-col-xs12 layui-col-sm12">
                <%--排序按钮 background-color: #fff9ec; --%>
                <div class="layui-row" style="margin-top: 12px; width: 945px">
                    <ul class="">
                        <li style="text-align: center; line-height:42px; font-size: 18px; width:210px; height:40px; margin-top: 10px;float: left; background-color:#ff971b; margin-right: 10px"><a href="####" class="current" style="">
                            ${diseaseCateTable.diseaseName}药膳菜谱</a></li>
                        <li style="text-align: center; line-height:42px; font-size: 18px; width:210px; height:40px; margin-top: 10px;float: left; background-color:#ff971b; margin-right: 10px "><a href="####" class="current" style="">
                            ${diseaseCateTable.diseaseName}食材药材</a></li>
                        <li style="text-align: center; line-height:42px; font-size: 18px; width:210px; height:40px; margin-top: 10px;float: left; background-color:#ff971b; margin-right: 10px"><a href="####" class="current" style="">
                            ${diseaseCateTable.diseaseName}注意适宜</a></li>
                    </ul>
                </div>
                <%--显示药膳--%>
                <div class="layui-row" id="pageMed">
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
            var diseaseId = '${diseaseId}';
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
            $('input[name=diseaseId]').val(diseaseId);
            //提交超链接
            window.open('${context}/main/showMedicinalDietByDisease/'+diseaseId+'/'+pageNum, '_self');
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
        $("#myTab li:nth-child(5)").prop("class","layui-nav-item layui-this");
        // $(function () {
        //     $.ajax({})
        // })
    });
</script>
</body>
</html>