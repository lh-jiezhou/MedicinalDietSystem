<%--
  Created by IntelliJ IDEA.
  User: ClownJJ
  Date: 2019/4/21
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员 欢迎您！</title>
    <link rel="icon" href="${context}/static/images/common/网站icon.png" type="image/x-icon">
    <%--引入css,否则没有这个样式--%>
    <link href="${context}/static/plugins/layui/css/layui.css" rel="stylesheet" media="all"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <jsp:include page="/jsp/common/a_header.jsp" />

    <div class="layui-body">
        <div class="layui-row" style="margin-top: 3%;padding-left:1%;">
            <div class="layui-col-md6" style="height: 450px;" id="echartsdiv_1"></div>
            <div class="layui-col-md6" style="height: 450px;" id="echartsdiv_2"></div>
        </div>
    </div>

    <div class="layui-footer">
        <center> © 药膳管理系统</center>
    </div>
</div>

<%--####--%>
<script type="text/javascript" src="${context}/static/plugins/layui/layui.js"></script>
<script type="text/javascript" src="${context}/static/plugins/back/js/echarts.min.js"></script>
<script>
    layui.use(['element', 'jquery', 'layer'], function(){
        var element = layui.element;
        var jquery,$ = layui.jquery;
        var layer = layui.layer;

        personinfo = function (name,tel){
            layer.open({
                type: 1,
                area: ['300px','300px'],
                fix: false, //不固定
                maxmin: false,
                shade:0.4,
                title: '管理员信息',
                content: "<div class='pd-10'><table class='table' style='font-size:22px;'><tbody>" +
                    "<tr><th class='text-r'>姓名：</th><td>"+name+"</td></tr>" +
                    "<tr><th class='text-r'>手机：</th><td>"+tel+"</td></tr></tbody></table></div>"
            });
        }

        // 统计图
        var data_echarst_div1 = new Array();
        var data_echarst_div2 =new Array();
        var data_echarst_legend1 =new Array();
        var data_echarst_legend2 =new Array();
        $.ajax({
            url:"${context}/admin/showDiv",
            type:"post",
            contentType:"application/json",
            success:function (data) {
                console.log(data);
                for(var i=0;i<data.countEffiList.length;i++){
                    var effi = data.countEffiList[i];
                    data_echarst_div1[i] = {value:effi.cnt, name:effi.med_effi_cate};
                    data_echarst_legend1[i] = effi.med_effi_cate;
                }
                for(var i=0;i<data.countShapeList.length;i++){
                    var shape = data.countShapeList[i];
                    data_echarst_div2[i] = {value:shape.cnt, name:shape.med_shape_cate};
                    data_echarst_legend2[i] = shape.med_shape_cate;
                }
                var myChart1 = echarts.init(document.getElementById('echartsdiv_1'));
                var option_1 = {
                    title : {
                        text: '药膳功效类统计图',
                        x:'center'
                    },
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a} <br/>{b} : {c} ({d}%)"
                    },
                    legend: {
                        x : 'center',
                        y : 'bottom',
                        data:data_echarst_legend1
                    },
                    toolbox: {
                        show : true,
                        feature : {
                            mark : {show: true},
                            dataView : {show: true, readOnly: false},
                            magicType : {
                                show: true,
                                type: ['pie', 'funnel']
                            },
                            restore : {show: true},
                            saveAsImage : {show: true}
                        }
                    },
                    calculable : true,
                    series : [
                        {
                            name:'半径模式',
                            type:'pie',
                            radius : [20, 110],
                            center : ['50%', 200],
                            roseType : 'radius',
                            width: '40%',
                            max: 40,
                            itemStyle : {
                                normal : {
                                    label : {
                                        show : false
                                    },
                                    labelLine : {
                                        show : false
                                    }
                                },
                                emphasis : {
                                    label : {
                                        show : true
                                    },
                                    labelLine : {
                                        show : true
                                    }
                                }
                            },
                            data:data_echarst_div1
                        }
                    ]
                };
                myChart1.clear();
                myChart1.setOption(option_1);
                var myChart2 = echarts.init(document.getElementById('echartsdiv_2'));
                var option_2 = {
                    title : {
                        text: '药膳形态类统计图',
                        x:'center'
                    },
                    tooltip : {
                        trigger: 'item',
                        formatter: "{a} <br/>{b} : {c} ({d}%)"
                    },
                    legend: {
                        x : 'center',
                        y : 'bottom',
                        data:data_echarst_legend2
                    },
                    toolbox: {
                        show : true,
                        feature : {
                            mark : {show: true},
                            dataView : {show: true, readOnly: false},
                            magicType : {
                                show: true,
                                type: ['pie', 'funnel']
                            },
                            restore : {show: true},
                            saveAsImage : {show: true}
                        }
                    },
                    calculable : true,
                    series : [
                        {
                            name:'面积模式',
                            type:'pie',
                            radius : [30, 110],
                            center : ['50%', 200],
                            roseType : 'area',
                            x: '50%',               // for funnel
                            max: 40,                // for funnel
                            sort : 'ascending',     // for funnel
                            data:data_echarst_div2
                        }
                    ]
                };
                myChart2.clear();
                myChart2.setOption(option_2);
            }
        });

    });
</script>
</body>
</html>