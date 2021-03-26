<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lh
  Date: 2019/4/18
  Time: 11:51
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
    <%--视频--%>
    <link href="${context}/static/plugins/videoJs/video-js.min.css" rel="stylesheet">
    <style type="text/css">
        #iTag a{  /*1、默认连接状态（未访问）*/
            color: #ffffb6;
        }
        /*#iTag a:hover{  !*3、鼠标悬浮状态*!*/
            /*color: #ffffff;*/
        /*}*/
        #iTag li{
            text-align: center;
            line-height: 34px;
            font-size: 16px;
            width: 80px;
            height: 35px;
            float: left;
            background-color: #ffc537;
            margin-right: 10px
        }
        /*视频*/
        .m {
            width: 960px;
            height: 400px;
            margin-left: auto;
            margin-right: auto;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<%--####--%>
<jsp:include page="/jsp/common/m_header.jsp" />
<%--主体部分--%>
<div style="background: #EEE8AA">
    <div class="layui-container">
        <%--药膳首部面包屑--%>
        <div class="layui-row" >
            <br><br>
            <span class="layui-breadcrumb" lay-separator=">" >
              <a style="font-size: 18px"><cite >当前位置</cite></a>
              <a style="font-size: 18px" href="${context}/jsp/main/m_home.jsp">药膳大全</a>
              <a><cite style="font-size: 16px" >${medicinalDietWithImage.medDietName}</cite></a>
            </span>
        </div><br>
        <%--药膳基本信息--%>
        <div class="layui-row" style="background-color:#ffffff;" >
            <div class="layui-col-md3">
                <%--药膳图片--%>
                <img style="width: 300px; height: 340px;" src="${context}${medicinalDietWithImage.medDietImg}" >
            </div>
            <div class="layui-col-md9">
                <div class="layui-row" style="margin-left: 50px">
                    <%--药膳名--%>
                    <div class="layui-col-md12" style="margin-top: 20px; ">
                        <span style="font-size: 30px; letter-spacing:3px">
                            ${medicinalDietWithImage.medDietName}
                        </span>
                        <span style="font-size: 19px; float: right; margin-right: 100px; margin-top: 8px">
                            收藏
                            <span id="myCollection" class="layui-icon layui-icon-rate" style="font-size: 24px; color: #ffc91d;" ></span>
                            &nbsp;&nbsp;分享
                            <span class="layui-icon layui-icon-share" style="font-size: 24px; color: #ffcb38;"></span>
                            <%--&nbsp;&nbsp;热度: 12--%>
                            <%--<span class="layui-icon layui-icon-rate" style="font-size: 24px; color: #ffc91d;"></span>--%>
                        </span>
                    </div>
                    <div class="layui-col-md12" style="margin-top: 16px; ">
                        <ul id="iTag">
                            <c:forEach items="${effiTagList}" var="obj">
                                <%--<li class="iLi"><a href="${context}/main/showMedicinalDietByEfficacy/${obj.efficacyId}/1" >${obj.efficacyName}</a></li>--%>
                                <li class="iLi"><a href="##" >${obj.efficacyName}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="layui-col-md12" >
                        <hr class="layui-bg-orange" style="width: 700px;">
                    </div>
                    <div class="layui-col-md12" style="width: 700px; margin-top: 5px">
                        <span style="font-size: 15px; letter-spacing:1px; line-height: 24px;">
                            【来源】: ${medicinalDietWithImage.medDietOrigin}
                        </span>
                    </div>
                    <div class="layui-col-md12" style="margin-top: 2px; width: 680px">
                        <span style="font-size: 15px; letter-spacing:1px; line-height: 24px;">
                            【功效】: ${medicinalDietWithImage.medDietEfficacy}
                        </span>
                    </div>
                    <div class="layui-col-md12" style="margin-top: 2px; width: 680px">
                        <span style="font-size: 15px; letter-spacing:1px; line-height: 24px;">
                            【应用】: ${medicinalDietWithImage.medDietApplication}
                        </span>
                    </div>
                    <div class="layui-col-md12" style="margin-top: 2px; width: 680px">
                        <span style="font-size: 15px; letter-spacing:1px; line-height: 24px;">
                            【使用注意】: ${medicinalDietWithImage.medDietPrecautions}
                        </span>
                    </div>
                </div>
            </div>
        </div><br>
        <%--药膳组成，方解，流程--%>
        <div class="layui-row" >
            <%--详情信息位--%>
            <div class="layui-col-md9 layui-col-xs9 layui-col-sm9" style="margin-top: 10px">
                <%--组成，方解--%>
                <div class="layui-row" style="background-color:#ffffff; width: 98%">
                    <br>
                    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 3px;">
                        <legend>方解</legend>
                    </fieldset>
                    <div style="font-size: 15px;letter-spacing:1px;line-height: 24px;width: 90%; margin-left: 40px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${medicinalDietWithImage.medDietExplain}
                    </div>
                    <fieldset class="layui-elem-field layui-field-title" >
                        <legend>组成</legend>
                    </fieldset>
                    <div style="font-size: 15px;letter-spacing:1px;line-height: 24px;width: 90%; margin-left: 40px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${medicinalDietWithImage.medDietConstitute}
                    </div>
                    <fieldset class="layui-elem-field layui-field-title" >
                        <legend>简要流程</legend>
                    </fieldset>
                    <div style="font-size: 15px;letter-spacing:1px;line-height: 24px;width: 90%; margin-left: 40px">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        ${medicinalDietWithImage.medDietPreparation}
                    </div>
                    <div style="height: 12px"></div>
                </div>
                <%--制作流程--%>
                <div class="layui-row" style="background-color:#ffffff; width: 98%">
                    <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief" >
                        <ul class="layui-tab-title " >
                            <li class="layui-this" style="font-size: 17px"><a href="##">详细制作流程</a></li>
                            <li style="font-size: 17px">药膳评论(2)</li>
                            <li style="font-size: 17px">查看制作视频</li>
                        </ul>
                        <div class="layui-tab-content">
                            <%--流程--%>
                            <div class="layui-tab-item layui-show">
                                <c:forEach items="${medicinalDietWithImage.imageTables}" var="obj">
                                    <div class="layui-row">
                                        <c:if test="${obj.imageExplain == null}">
                                            <span>暂无（建议参考上方简要流程或查看制作视频）</span>
                                        </c:if>
                                        <div style="margin-top:30px; margin-left: 10px; font-size: 20px; ">${obj.imageExplain}</div>
                                        <c:if test="${obj.imageAddress != null && obj.imageAddress !=''}">
                                            <img style="margin-top:12px; margin-left: 80px; width: 600px; height: 280px;" src="${obj.imageAddress}" >
                                        </c:if>
                                    </div>
                                </c:forEach><br>
                                <%--<div class="layui-row">--%>
                                    <%--<div style="margin-top:30px; margin-left: 10px; font-size: 20px; ">第一步：川芎、白芷、红枣和生姜洗净</div>--%>
                                    <%--<img style="margin-top:12px; margin-left: 80px; width: 600px; height: 280px;" src="https://s1.st.meishij.net/rs/151/106/13651651/n13651651_155455262905720.jpg" >--%>
                                <%--</div>--%>
                            </div>
                            <%--评论--%>
                            <div class="layui-tab-item">
                                <form class="layui-form" style="left: 10px;" action="" method="post">
                                    <div class="layui-row">
                                        <div class="layui-col-md1" style="margin-left: 15px">
                                            <img src="${context}/static/images/common/用户头像.png" style="width: 50px; height: 50px">
                                        </div>
                                        <div class="layui-col-md10" >
                                            <div class="layui-form-item layui-form-text" style="margin-left: -100px">
                                                <div class="layui-input-block" style="width: 500px">
                                                    <textarea id="myComText" placeholder="发表你的观点..." class="layui-textarea"></textarea>
                                                </div>
                                            </div>
                                            <div class="layui-form-item">
                                                <div class="layui-input-block" style="float: right; margin-right: 180px">
                                                    评分：<div id="test3" style="margin-top: 5px"></div>
                                                    &nbsp;&nbsp;&nbsp;
                                                    <button id="myComment" class="layui-btn layui-btn-warm" style="width: 100px;">发表</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="layui-row" style="margin-left: 80px">
                                        <div class="layui-col-md1">
                                            <img src="${context}/static/images/common/用户评论_1.png" style="width: 50px; height: 50px">
                                        </div>
                                        <div class="layui-col-md10">
                                            <div class="layui-row" >
                                                <div class="layui-col-md12">
                                                    <span style="font-size: 16px">很好吃，养生美食呀！</span>
                                                </div>
                                                <div class="layui-col-md12">
                                                    <span style="font-size: 12px; line-height: 40px">2019年4月29日15:17:53</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="layui-col-md1">
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="layui-row" style="margin-left: 80px">
                                        <div class="layui-col-md1">
                                            <img src="${context}/static/images/common/用户评论_2.png" style="width: 50px; height: 50px">
                                        </div>
                                        <div class="layui-col-md10">
                                            <div class="layui-row" >
                                                <div class="layui-col-md12">
                                                    <span style="font-size: 16px">中医药文化博大精深，这个药膳很好吃！</span>
                                                </div>
                                                <div class="layui-col-md12">
                                                    <span style="font-size: 12px; line-height: 40px">2019年4月29日15:17:53</span>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="layui-col-md1">
                                        </div>
                                    </div>
                                </form>


                            </div>
                            <%--视频--%>
                            <div class="layui-tab-item">
                                <div class="layui-row">
                                    <fieldset class="layui-elem-field layui-field-title" >
                                        <legend>${medicinalDietWithImage.medDietName}制作视频</legend>
                                    </fieldset>
                                    <div class="m">
                                        <video id="my-video" class="video-js" controls preload="auto" width="800" height="400"
                                               poster="${context}${medicinalDietWithImage.medVideoImg}" data-setup="{}">
                                            <source src="${context}${medicinalDietWithImage.medDietVideo}" type="video/mp4">
                                            <%--<source src="${context}/static/video/oceans.webm" type="video/webm">--%>
                                            <%--<source src="${context}/static/video/oceans.ogv" type="video/ogg">--%>
                                            <p class="vjs-no-js"> To view this video please enable JavaScript, and consider upgrading to a web browser that <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a> </p>
                                        </video>
                                        <script src="${context}/static/plugins/videoJs/video.min.js"></script>
                                        <script type="text/javascript">
                                            //设置中文
                                            videojs.addLanguage('zh-CN', {
                                                "Play": "播放",
                                                "Pause": "暂停",
                                                "Current Time": "当前时间",
                                                "Duration": "时长",
                                                "Remaining Time": "剩余时间",
                                                "Stream Type": "媒体流类型",
                                                "LIVE": "直播",
                                                "Loaded": "加载完毕",
                                                "Progress": "进度",
                                                "Fullscreen": "全屏",
                                                "Non-Fullscreen": "退出全屏",
                                                "Mute": "静音",
                                                "Unmute": "取消静音",
                                                "Playback Rate": "播放速度",
                                                "Subtitles": "字幕",
                                                "subtitles off": "关闭字幕",
                                                "Captions": "内嵌字幕",
                                                "captions off": "关闭内嵌字幕",
                                                "Chapters": "节目段落",
                                                "Close Modal Dialog": "关闭弹窗",
                                                "Descriptions": "描述",
                                                "descriptions off": "关闭描述",
                                                "Audio Track": "音轨",
                                                "You aborted the media playback": "视频播放被终止",
                                                "A network error caused the media download to fail part-way.": "网络错误导致视频下载中途失败。",
                                                "The media could not be loaded, either because the server or network failed or because the format is not supported.": "视频因格式不支持或者服务器或网络的问题无法加载。",
                                                "The media playback was aborted due to a corruption problem or because the media used features your browser did not support.": "由于视频文件损坏或是该视频使用了你的浏览器不支持的功能，播放终止。",
                                                "No compatible source was found for this media.": "无法找到此视频兼容的源。",
                                                "The media is encrypted and we do not have the keys to decrypt it.": "视频已加密，无法解密。",
                                                "Play Video": "播放视频",
                                                "Close": "关闭",
                                                "Modal Window": "弹窗",
                                                "This is a modal window": "这是一个弹窗",
                                                "This modal can be closed by pressing the Escape key or activating the close button.": "可以按ESC按键或启用关闭按钮来关闭此弹窗。",
                                                ", opens captions settings dialog": ", 开启标题设置弹窗",
                                                ", opens subtitles settings dialog": ", 开启字幕设置弹窗",
                                                ", opens descriptions settings dialog": ", 开启描述设置弹窗",
                                                ", selected": ", 选择",
                                                "captions settings": "字幕设定",
                                                "Audio Player": "音频播放器",
                                                "Video Player": "视频播放器",
                                                "Replay": "重播",
                                                "Progress Bar": "进度小节",
                                                "Volume Level": "音量",
                                                "subtitles settings": "字幕设定",
                                                "descriptions settings": "描述设定",
                                                "Text": "文字",
                                                "White": "白",
                                                "Black": "黑",
                                                "Red": "红",
                                                "Green": "绿",
                                                "Blue": "蓝",
                                                "Yellow": "黄",
                                                "Magenta": "紫红",
                                                "Cyan": "青",
                                                "Background": "背景",
                                                "Window": "视窗",
                                                "Transparent": "透明",
                                                "Semi-Transparent": "半透明",
                                                "Opaque": "不透明",
                                                "Font Size": "字体尺寸",
                                                "Text Edge Style": "字体边缘样式",
                                                "None": "无",
                                                "Raised": "浮雕",
                                                "Depressed": "压低",
                                                "Uniform": "均匀",
                                                "Dropshadow": "下阴影",
                                                "Font Family": "字体库",
                                                "Proportional Sans-Serif": "比例无细体",
                                                "Monospace Sans-Serif": "单间隔无细体",
                                                "Proportional Serif": "比例细体",
                                                "Monospace Serif": "单间隔细体",
                                                "Casual": "舒适",
                                                "Script": "手写体",
                                                "Small Caps": "小型大写字体",
                                                "Reset": "重启",
                                                "restore all settings to the default values": "恢复全部设定至预设值",
                                                "Done": "完成",
                                                "Caption Settings Dialog": "字幕设定视窗",
                                                "Beginning of dialog window. Escape will cancel and close the window.": "开始对话视窗。离开会取消及关闭视窗",
                                                "End of dialog window.": "结束对话视窗"
                                            });
                                            var myPlayer = videojs('my-video');
                                            videojs("my-video").ready(function(){
                                                var myPlayer = this;
                                                // myPlayer.play();//自动播放
                                            });

                                        </script>
                                    </div>
                                    <%--<div style="margin-left: 30px">--%>
                                        <%--<img width="700" src="https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=414221427,4216327747&fm=26&gp=0.jpg"/>--%>
                                    <%--</div>--%>
                                    <%--<div style="width: 20px"></div>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%--推荐及广告位--%>
            <div class="layui-col-md3 layui-col-xs3 layui-col-sm3" style="margin-top: 10px">
                <div class="layui-row" style="background-color:#ffffff">
                    <br>
                    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 3px">
                        <legend>相似药膳</legend>
                    </fieldset>
                    <div class="layui-carousel" mc-attr-autoplay="true" mc-attr-interval="3000" mc-attr-width="100%" lay-anim="" lay-indicator="inside" lay-arrow="hover" style="width: 100px; height: 250px;" mc-attr-arrow="hover" mc-attr-indicator="inside">
                        <div carousel-item="" class="">
                            <%--图片轮播--%>
                            <div class="layui-this layui-row">
                                <img width=100% height=100% title="防风粥" src="${context}/static/images/medicinaldiet/防风粥_0.png"></a>
                            </div>
                            <div class="layui-row">
                                <img width=100% height=100% title="艾叶生姜煮蛋" src="${context}/static/images/medicinaldiet/艾叶生姜煮蛋_0.png"></a>
                            </div>
                            <div class="layui-row">
                                <img width=100% height=100% title="金钱草饮" src="${context}/static/images/medicinaldiet/金钱草饮_0.png"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><br>
    </div>
</div>
<%--####--%>
<jsp:include page="/jsp/common/m_tail.jsp" />
<script type="text/javascript" src="${context}/static/plugins/layui/layui.js"></script>
<script type="text/javascript" src="${context}/static/plugins/view/magicalcoder-layuiout.js"></script>
<script>
    //JavaScript代码区域
    layui.use(['element', 'jquery', 'layer', 'rate'], function(){
        var element = layui.element;
        var jquery,$ = layui.jquery;
        var layer = layui.layer;
        var rate = layui.rate;
        //半星效果
        rate.render({
            elem: '#test3'
            // ,value: 2.5 //初始值
            // ,half: true //开启半星
        })
        //药膳关键字
        $("#iTag").on("mouseover",".iLi", function () {
            $(this).css("background-color","#ffa625");
        });
        $("#iTag").on("mouseout",".iLi", function () {
            $(this).css("background-color","#ffc537");
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

        $("#myCollection").click(function () {
            $.ajax({
                url: '${context}/collection/addCollectionMed/'+'${medicinalDietWithImage.medicinalDietId}',
                type: 'post',
                success: function (data) {
                    if(data) {
                        alert("收藏成功");
                        $("#myCollection").addClass("layui-icon-rate-solid").removeClass("layui-icon-rate");
                    }else {
                        alert("请先登录");
                    }
                }
            })

        })

        <%--$("#myComment").click(function () {--%>
            <%--$.ajax({--%>
                <%--url: '${context}/collection/addCollectionMed/'+'${medicinalDietWithImage.medicinalDietId}',--%>
                <%--type: 'post',--%>
                <%--success: function (data) {--%>
                    <%--if(data) {--%>
                        <%--alert("收藏成功");--%>
                        <%--$("#myCollection").addClass("layui-icon-rate-solid").removeClass("layui-icon-rate");--%>
                    <%--}else {--%>
                        <%--alert("请先登录");--%>
                    <%--}--%>
                <%--}--%>
            <%--})--%>

        <%--})--%>

        // $(function () {
        //     $.ajax({})
        // })
    });
</script>
</body>
</html>