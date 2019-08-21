<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
   List daydataList=(List)request.getAttribute( "daydataList"); 
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <link rel="stylesheet" href="css/main.css" type="text/css"></link>
  <link rel="stylesheet" href="css/table.css" type="text/css"></link>
  <link rel="stylesheet" href="css/graph.css" type="text/css"></link>
  <script type="text/javascript" src="js/echarts.js"></script>
  <script type="text/javascript" src="js/china.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/beijing.js"></script></head>
  
  <body>
  <div class="menu_width">
         <div class="menu">
              <div class="menu_logo"><a href="/"></a></div>
              <ul class="menu_list">
                    <!---当前页面是哪个栏目，只用在li的class里再加个" current "就行了-->
                    <li class="menu_1"><a href="<%=basePath%>ServletQueryAqi?name=station1"><i></i><span>首页</span></a></li>
                    <li class="menu_2"><a  class="current"  href="<%=basePath%>ServletQueryDay"><i></i><span>地区数据</span></a></li>
                    <li class="menu_3"><a href="<%=basePath%>ServletQueryAllData?name=station1"><i></i><span>历史数据</span></a></li>
                    <li class="menu_4"><a href="fanghu.jsp"><i></i><span>PM2.5防护</span></a></li>
                    <li class="menu_5"><a href="aboutUs.jsp"><i></i><span>关于我们</span></a></li>
                    <div class="clear"></div>
              </ul>
         </div>   
</div>
<div class="main_width">
    <div class="main">
        <!--监测点数据-->
         <div class="panel_graph ui-switchable" data-widget-cid="widget-2">
             <p class="pg_title">各个监测站点的数据</p>
             <div class="pg_area ui-switchable-content">
             
             <div  style="height:560px;" class="pg_content" >
             <div style="width:960px;height:550px;margin-left:10px;"  id="xxx"></div>
            <!-- <div style="width:450px;height:300px;margin-left:30px;" id="hhh"></div> -->
             </div>
             </div>            
             </div>

                <div class="panel_jiance">
                  <p class="pg_title">北京 各监测点实时数据</p> 
                  <div class="pj_area ui-switchable" data-widget-cid="widget-1">
                          
                           
                          <!--详细数据开始-->
                          <div class="pj_area_data ui-switchable-content">
                                 <div class="pj_area_data_title">
                                    <span class="pjadt_location">监测站点</span>
                                       <span class="pjadt_aqi ">AQI</span>
                                       <span class="pjadt_quality">空气质量状况</span>
                                       <span class="pjadt_wuranwu">首要污染物</span>
                                       <span class="pjadt_pm25">PM2.5浓度</span>
                                       <span class="pjadt_pm10">PM10浓度</span>
                                       <div class="clear"></div>
                                 </div>
                                 <ul class="pj_area_data_details ui-switchable-panel">
                                                                        <li class="pj_area_data_item pj_area_data_item_darkbg">
                                        <b></b>
                                        <a class="pjadt_location"  href="<%=basePath%>ServletQueryAllData?name=station1">万寿西宫</a>
                                        <span class="pjadt_aqi">${daydataList[0].AQI}<i class=""></i></span>
                                        <span class="pjadt_quality"><em class="pjadt_quality_bglevel_4">优良</em></span>
                                        <a class="pjadt_wuranwu"  target="_blank">细颗粒物(PM10)</a>
                                        <span class="pjadt_pm25">${daydataList[0].PM25}<em>μg/m³</em><i class=""></i></span>
                                        <span class="pjadt_pm10">${daydataList[0].PM10} <em>μg/m³</em><i class=""></i></span>
                                        <div class="clear"></div>
                                    </li>
                                                                        <li class="pj_area_data_item pj_area_data_item_darkbg">
                                        <b></b>
                                        <a class="pjadt_location"  href="<%=basePath%>ServletQueryAllData?name=station2">定陵</a>
                                        <span class="pjadt_aqi">${daydataList[1].AQI}<i class=""></i></span>
                                        <span class="pjadt_quality"><em class="pjadt_quality_bglevel_1">优</em></span>
                                        <a class="pjadt_wuranwu"  title="—" target="_blank">—</a>
                                        <span class="pjadt_pm25">${daydataList[1].PM25} <em>μg/m³</em><i class=""></i></span>
                                        <span class="pjadt_pm10">${daydataList[1].PM10} <em>μg/m³</em><i class=""></i></span>
                                        <div class="clear"></div>
                                    </li>
                                        <li class="pj_area_data_item pj_area_data_item_darkbg">
                                        <b></b>
                                        <a class="pjadt_location"  href="<%=basePath%>ServletQueryAllData?name=station3">东四</a>
                                        <span class="pjadt_aqi">${daydataList[2].AQI}<i class=""></i></span>
                                        <span class="pjadt_quality"><em class="pjadt_quality_bglevel_4">优</em></span>
                                        <a class="pjadt_wuranwu" title="" target="_blank">—</a>
                                        <span class="pjadt_pm25">${daydataList[2].PM25} <em>μg/m³</em><i class=""></i></span>
                                        <span class="pjadt_pm10">${daydataList[2].PM10} <em>μg/m³</em><i class=""></i></span>
                                        <div class="clear"></div>
                                    </li>
                                                                        <li class="pj_area_data_item pj_area_data_item_darkbg">
                                        <b></b>
                                        <a class="pjadt_location"  href="<%=basePath%>ServletQueryAllData?name=station4">天坛</a>
                                        <span class="pjadt_aqi">${daydataList[3].AQI}<i class=""></i></span>
                                        <span class="pjadt_quality"><em class="pjadt_quality_bglevel_4">优良</em></span>
                                        <a class="pjadt_wuranwu" title="细颗粒物(PM2.5)" target="_blank">细颗粒物(PM10)</a>
                                        <span class="pjadt_pm25">${daydataList[3].PM25}<em>μg/m³</em><i class=""></i></span>
                                        <span class="pjadt_pm10">${daydataList[3].PM10}<em>μg/m³</em><i class=""></i></span>
                                        <div class="clear"></div>
                                    </li>
                                                                        <li class="pj_area_data_item pj_area_data_item_darkbg">
                                        <b></b>
                                        <a class="pjadt_location"  href="<%=basePath%>ServletQueryAllData?name=station5">农展馆</a>
                                        <span class="pjadt_aqi">${daydataList[4].AQI}<i class=""></i></span>
                                        <span class="pjadt_quality"><em class="pjadt_quality_bglevel_3">优良</em></span>
                                        <a class="pjadt_wuranwu"  target="_blank">细颗粒物(PM10)</a>
                                        <span class="pjadt_pm25">${daydataList[4].PM25} <em>μg/m³</em><i class=""></i></span>
                                        <span class="pjadt_pm10">${daydataList[4].PM10} <em>μg/m³</em><i class=""></i></span>
                                        <div class="clear"></div>
                                    </li>
                                                                        <li class="pj_area_data_item pj_area_data_item_darkbg">
                                        <b></b>
                                        <a class="pjadt_location"  href="<%=basePath%>ServletQueryAllData?name=station6">官园</a>
                                        <span class="pjadt_aqi">${daydataList[5].AQI}<i class=""></i></span>
                                        <span class="pjadt_quality"><em class="pjadt_quality_bglevel_4">优良</em></span>
                                        <a class="pjadt_wuranwu" title="细颗粒物(PM2.5)" target="_blank">细颗粒物(PM10)</a>
                                        <span class="pjadt_pm25">${daydataList[5].PM25} <em>μg/m³</em><i class=""></i></span>
                                        <span class="pjadt_pm10">${daydataList[5].PM10} <em>μg/m³</em><i class=""></i></span>
                                        <div class="clear"></div>
                                    </li>
                                                                        <li class="pj_area_data_item pj_area_data_item_darkbg">
                                        <b></b>
                                        <a class="pjadt_location"  href="<%=basePath%>ServletQueryAllData?name=station7">海淀区万柳</a>
                                        <span class="pjadt_aqi">${daydataList[6].AQI}<i class=""></i></span>
                                        <span class="pjadt_quality"><em class="pjadt_quality_bglevel_3">优良</em></span>
                                        <a class="pjadt_wuranwu" title="细颗粒物(PM2.5)" target="_blank">细颗粒物(PM10)</a>
                                        <span class="pjadt_pm25">${daydataList[6].PM25} <em>μg/m³</em><i class=""></i></span>
                                        <span class="pjadt_pm10">${daydataList[6].PM10} <em>μg/m³</em><i class=""></i></span>
                                        <div class="clear"></div>
                                    </li>
                                                                        <li class="pj_area_data_item pj_area_data_item_darkbg">
                                        <b></b>
                                        <a class="pjadt_location" href="<%=basePath%>ServletQueryAllData?name=station8">顺义新城</a>
                                        <span class="pjadt_aqi">${daydataList[7].AQI}<i class=""></i></span>
                                        <span class="pjadt_quality"><em class="pjadt_quality_bglevel_3">优良</em></span>
                                        <a class="pjadt_wuranwu"  target="_blank">细颗粒物(PM10)</a>
                                        <span class="pjadt_pm25">${daydataList[7].PM25} <em>μg/m³</em><i class=""></i></span>
                                        <span class="pjadt_pm10">${daydataList[7].PM10}<em>μg/m³</em><i class=""></i></span>
                                        <div class="clear"></div>
                                    </li>
                                                                        <li class="pj_area_data_item pj_area_data_item_darkbg">
                                        <b></b>
                                        <a class="pjadt_location"  href="<%=basePath%>ServletQueryAllData?name=station9">怀柔镇</a>
                                        <span class="pjadt_aqi">${daydataList[8].AQI}<i class=""></i></span>
                                        <span class="pjadt_quality"><em class="pjadt_quality_bglevel_3">优</em></span>
                                        <a class="pjadt_wuranwu" title="细颗粒物(PM2.5)" target="_blank"></a>
                                        <span class="pjadt_pm25">${daydataList[8].PM25} <em>μg/m³</em><i class=""></i></span>
                                        <span class="pjadt_pm10">${daydataList[8].PM10}<em>μg/m³</em><i class=""></i></span>
                                        <div class="clear"></div>
                                    </li>
                                                                        <li class="pj_area_data_item pj_area_data_item_darkbg">
                                        <b></b>
                                        <a class="pjadt_location"  href="<%=basePath%>ServletQueryAllData?name=station10">昌平镇</a>
                                        <span class="pjadt_aqi">${daydataList[9].AQI}<i class=""></i></span>
                                        <span class="pjadt_quality"><em class="pjadt_quality_bglevel_2">优</em></span>
                                        <a class="pjadt_wuranwu"  title="颗粒物(PM10)" target="_blank"></a>
                                        <span class="pjadt_pm25">${daydataList[9].PM25} <em>μg/m³</em><i class=""></i></span>
                                        <span class="pjadt_pm10">${daydataList[9].PM10} <em>μg/m³</em><i class=""></i></span>
                                        <div class="clear"></div>
                                    </li>
                                                                        <li class="pj_area_data_item pj_area_data_item_darkbg">
                                        <b></b>
                                        <a class="pjadt_location"  href="<%=basePath%>ServletQueryAllData?name=station11">奥体中心</a>
                                        <span class="pjadt_aqi">${daydataList[10].AQI}<i class=""></i></span>
                                        <span class="pjadt_quality"><em class="pjadt_quality_bglevel_3">优良</em></span>
                                        <a class="pjadt_wuranwu"  title="细颗粒物(PM2.5)" target="_blank">细颗粒物(PM10)</a>
                                        <span class="pjadt_pm25">${daydataList[10].PM25} <em>μg/m³</em><i class=""></i></span>
                                        <span class="pjadt_pm10">${daydataList[10].PM10} <em>μg/m³</em><i class=""></i></span>
                                        <div class="clear"></div>
                                    </li>
                                                                        <li class="pj_area_data_item pj_area_data_item_darkbg">
                                        <b></b>
                                        <a class="pjadt_location"  href="<%=basePath%>ServletQueryAllData?name=station12">古城</a>
                                        <span class="pjadt_aqi">${daydataList[11].AQI}<i class=""></i></span>
                                        <span class="pjadt_quality"><em class="pjadt_quality_bglevel_2">优良</em></span>
                                        <a class="pjadt_wuranwu"  target="_blank">细颗粒物(PM10)</a>
                                        <span class="pjadt_pm25">${daydataList[11].PM25} <em>μg/m³</em><i class=""></i></span>
                                        <span class="pjadt_pm10">${daydataList[11].PM10} <em>μg/m³</em><i class=""></i></span>
                                        <div class="clear"></div>
                                    </li>
                                                                     </ul>
                                 
                          
                          </div>
                  </div>
                      
        </div>
       
    </div>
</div>
<div class="footer_width">
       <div class="footer">
                <div class="footer_left">
                <div class="footer_left_links">
                <dl class="footer_left_item1"> 
                   <dt>快捷导航</dt>
                 <dd>
                    <a href="rank.jsp">PM2.5实时查询</a><br>
                  <a href="rank.jsp">北京污染地图</a><br>
                  <a href="fanghu.jsp">PM2.5百科</a><br>
                 </dd>
              </dl>
               <dl class="footer_left_item2"> 
                   <dt>PM2.5资讯</dt>
                 <dd>
                  <a href="<%=basePath%>ServletQueryAllData?name=station1" target="_blank">历史数据</a><br>
                  <a href="fanghu.jsp" target="_blank">PM2.5防护</a><br>
                  <a href="aboutUs.jsp" target="_blank">关于我们</a><br>
                 </dd>
              </dl>
               
              <div class="clear"></div>
            </div>
                                               </div>
          
          <div class="footer_right">
                   <a class="footer_logo" href=""></a>
				<p class="footer_aboutus"></p>
               <p class="footer_email">意见建议：412854858@qq.com</p>
               
          </div>
          <div class="clear"></div>
     </div>
</div>
</div>
<script type="text/javascript">
         // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('xxx'));

        // 指定图表的配置项和数据
var geoCoordMap = {
    "东四":[116.417,39.929],
    "天坛":[116.407,39.886],
    "官园":[116.339,39.929],
    "万寿西宫":[116.352,39.878],
    "奥体中心":[116.397,39.982],
    "农展馆":[116.461,39.937],
    "万柳":[116.287,39.987],
    "北部新区":[116.174,40.09],
    "植物园":[116.207,40.002],
    "丰台花园":[116.279,39.863],
    "云岗":[116.146,39.9824],
    "古城":[116.184,39.914],
    "房山":[116.136,39.742],
    "大兴":[116.404,39.718],
    "亦庄":[116.506,39.795],
    "通州":[116.663,39.886],
    "顺义":[116.655,40.127],
    "昌平":[116.23,40.217],
    "门头沟":[116.106,39.937],
    "平谷":[117.1,40.143],
    "怀柔":[116.628,40.328],
    "密云":[116.832,40.37],
    "延庆":[115.972,40.453],
};

var locValue = [
                {name: "东四", value: 49},
                {name: "天坛", value: 44},
                {name: "官园", value: 52},
                {name: "万寿西宫", value: 50},
                {name: "奥体中心", value: 58},
                {name: "农展馆", value: 47},
                {name: "万柳", value: 63},
                {name: "北部新区", value: 55},
                {name: "植物园", value: 55},
                {name: "丰台花园", value: 54},
                {name: "云岗", value: 74},
                {name: "古城", value: 55},
                {name: "房山", value: 55},
                {name: "大兴", value: 44},
                {name: "亦庄", value: 23},
                {name: "通州", value: 44},
                {name: "顺义", value: 57},
                {name: "昌平", value: 62},
                {name: "门头沟", value: 57},
                {name: "平谷", value: 57},
                {name: "怀柔", value: 61},
                {name: "密云", value: 55},
                {name: "延庆", value: 87}
]
var convertData = function (data) {
        var res = [];
        for (var i = 0; i < data.length; i++) {
            var geoCoord = geoCoordMap[data[i].name];
            if (geoCoord) {
                res.push({
                    name: data[i].name,
                    value: geoCoord.concat(data[i].value)
                });
            }
        }
        return res;
    };
    option = {
    backgroundColor: '#404a59',
    title: {
        subtext: 'data from PM25.in',
        sublink: 'http://www.pm25.in',
        left: 'center',
        textStyle: {
            color: '#fff'
        }
    },
    tooltip: {
        trigger: 'item'
    },
    legend: {
        orient: 'vertical',
        top: 'bottom',
        left: 'right',
        data:['pm2.5'],
        textStyle: {
            color: '#fff'
        }
    },
    visualMap: {
        min: 0,
        max: 300,
        splitNumber: 5,
        color: ['#d94e5d','#eac736','#50a3ba'],
        textStyle: {
            color: '#fff'
        }
    },
    geo: {
        map: '北京',
        label: {
            emphasis: {
                show: false
            }
        },
        itemStyle: {
            normal: {
                areaColor: '#323c48',
                borderColor: '#111'
            },
            emphasis: {
                areaColor: '#2a333d'
            }
        }
    },
    series: [
        {
            name: 'pm2.5',
            type: 'scatter',
            coordinateSystem: 'geo',
            data: convertData(locValue),
            symbolSize: 12,
            scaleLimit: { min: 0.8, max: 1.9 },//缩放
            label: {
                normal: {
                    show: false
                },
                emphasis: {
                    show: false
                }
            },
            itemStyle: {
                emphasis: {
                    borderColor: '#fff',
                    borderWidth: 1
                }
            }
        }
    ]
}

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
    <!--  
    <script type="text/javascript">
    var myChart = echarts.init(document.getElementById('hhh'));
    var option = {
                    //标题配置信息
                    title: {
                        text: "空气质量AQI指数",
                        textStyle: {
                            color: "#628d58",
                            fontWeight: "bolder"
                        },
                        left: "center"
                    },
                    xAxis: {
                        type: "category",
                        data: [
                            "万寿西宫",
                            "定陵",
                            "东四",
                            "天坛",
                            "农展馆",
                            "官园",
                            "万柳",
                            "顺义",
                            "怀柔",
                            "昌平",
                            "奥体中心",
                            "古城",
                        ],
                        axisLabel :{
                interval:0,rotate:40
            },
                        itemStyle: {
                            narmal: {
                                color: "orange"
                            }
                        }
                    },
                    yAxis: {
                        type: "value"
                    },
                    series: [
                        {
                            data: [
                                163,
                                47,
                                169,
                                153,
                                145,
                                158,
                                117,
                                138,
                                140,
                                52,
                                138,
                                93
                            ],
                            type: "bar",
                            barWidth: "70%",
                            itemStyle: {
                                normal: {
                                    //每根柱子颜色设置
                                    color: function(params) {
                                        let colorList = [
                                            "#eac736",
                                            "#50a3ba",
                                            "#eac736",
                                            "#eac736",
                                            "#eac736",
                                            "#eac736",
                                            "#9acd32",
                                            "#eac736",
                                            "#eac736",
                                            "#50a3ba",
                                            "#eac736",
                                            "#9acd32",
                                       
                     
                                        ];
                                        return colorList[params.dataIndex];
                                    }
                                }
                            },
                            //柱状图上显示数据
                            label: {
                                show: "true",
                                position: "top",
                                color: "#FFF",
                                fontWeight: "bolder",
                                backgroundColor: "auto",
                                fontSize: "20"
                            },
                            //平均值
                            markLine: {
                                data: [{ type: "average", name: "平均值" }]
                            }
                        }
                    ]
                };
                myChart.setOption(option);
    
    </script>-->
  </body>
</html>
