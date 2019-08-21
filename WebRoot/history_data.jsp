<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>历史数据</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
<link rel="stylesheet" href="css/main.css" type="text/css" />
<link rel="stylesheet" href="css/graph.css" type="text/css"></link>
<link rel="stylesheet" href="css/table.css" type="text/css"></link>
<link rel="stylesheet" href="css/calendar.css" type="text/css"></link>
<script type="text/javascript" src="js/echarts.js"></script>
<style type="text/css">
#ul  li a {
	display: inline-block;
	text-decoration: none;
	color: #000;
}
</style>

</head>

<body>
	<div class="menu_width">
		<div class="menu">
			<div class="menu_logo">
				<a href="/"></a>
			</div>
			<ul class="menu_list">
				<!---当前页面是哪个栏目，只用在li的class里再加个" current "就行了-->
				<li class="menu_1"><a href="<%=basePath%>ServletQueryAqi?name=station1"><i></i><span>首页</span> </a>
				</li>
				<li class="menu_2"><a   href="<%=basePath%>ServletQueryDay"><i></i><span>地区数据</span>
				</a>
				</li>
				<li class="menu_3"><a
					href="<%=basePath%>ServletQueryAllData?name=station1"
					class="current"><i></i><span>历史数据</span> </a>
				</li>
				<li class="menu_4"><a href="fanghu.jsp"><i></i><span>PM2.5防护</span> </a>
				</li>
				<li class="menu_5"><a href="aboutUs.jsp"><i></i><span>关于我们</span> </a>
				</li>
				<div class="clear"></div>
			</ul>
		</div>
	</div>
	<div class="main_width">
		<div class="main">
			<div class="panel_graph ui-switchable" data-widget-cid="widget-2">
				<p class="pg_title" style="display:inline-block;">历史数据</p>
				<input id="ipt" type="text" placeholder="请选择监测点" />
				<ul id="ul"
					style="margin-left:100px;list-style:none;width:150px;border:1px solid #000;display:none;">
					<li><a href="<%=basePath%>ServletQueryAllData?name=station1">万寿西宫</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAllData?name=station2">定陵</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAllData?name=station3">东四</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAllData?name=station4">天坛</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAllData?name=station5">农展馆</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAllData?name=station6">官园</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAllData?name=station7">海淀区万柳</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAllData?name=station8">顺义新城</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAllData?name=station9">怀柔镇</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAllData?name=station10">昌平镇</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAllData?name=station11">奥体中心</a>
					</li>
					<li><a href="<%=basePath%>ServletQueryAllData?name=station12">古城</a>
					</li>
				</ul>
				<script type="text/javascript">
	var ipt=document.getElementById('ipt');
	var ul=document.getElementById('ul');
	var lis=ul.children;
	ipt.onfocus=function(){
		ul.style.display='block';
	}
	ipt.onblur=function(){
		setTimeout(function(){
			ul.style.display='none';
		},200)
		
	}
	//模拟option点击事件
	for(var i=0;i<lis.length;i++){
		lis[i].onclick=function(){
			ipt.value=this.innerText;
		}
	}
  </script>

				<div class="pg_area ui-switchable-content">

					<div style="height:560px;" class="pg_content">
						<div style="width:960px;height:550px;margin-left:10px;" id="g1"></div>
					</div>
				</div>
			</div>
			<div class="panel_graph ui-switchable" data-widget-cid="widget-2">
				<p class="pg_title">数据统计</p>
				<div class="pg_area ui-switchable-content">

					<div style="height:560px;" class="pg_content">
						<div style="width:960px;height:550px;margin-left:10px;" id="g3"></div>
					</div>
				</div>
				<div class="pg_area ui-switchable-content">

					<div style="height:358px;width:450px;display:inline-block;float:left;" class="pg_content">
						<div
							style="display:inline-block;width:440px;height:300px;margin-left:10px;"
							id="g2"></div>
						<div
							style="display:inline-block;width:470px;height:300px;margin-left:10px;"
							id="g4"></div>
					</div>
					<!--日历-->
					<div style="display:inline-block;" id="rili">
						<div id="calendar"></div>
					</div>
				</div>
			</div>
			<!--  <div id="g1" style="width: 600px;height:400px;"></div>-->
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


	<script type="text/javascript">
         var myChart = echarts.init(document.getElementById('g1'));
         var arr = new Array();
         var arr2 = new Array();
         var arr3 = new Array();
         var arr4 = new Array();
         var index =0 ;
         <c:forEach items="${dataList}" var="datas">
               var i = index++;
               arr[i] = ${datas.AQI};
               arr2[i] = ${datas.PM25};
               arr3[i] = ${datas.PM10};
               arr4[i] = ${datas.SO2};
         </c:forEach>
var option = {
          title: {
              text: '${dataList[1].station}近一个月数据'
          },
          tooltip: {
              trigger: 'axis'
          },
          legend: {
              data:['AQI','PM25','PM10','SO2']
          },
          toolbox: {
              show : true,
              feature : {
              mark : {show: true},
              dataView : {show: true, readOnly: false},
              magicType : {show: true, type: ['line', 'bar']},
              restore : {show: true},
              saveAsImage : {show: true}
              }
          },
          xAxis : [
              {
                  type : 'category',
                  data : [
                      <c:forEach items="${dataList}" var="g">
                      ["${g.time}"],
                      </c:forEach>
                  ]
              }
          ],
          yAxis : [
              {
                  type : 'value'
              }
          ],
          series : [
              {
                  name:'AQI',
                  type:'line',
                  data: arr,
                  makePoint:{
				    data:[
					  {type:'max',name:'最大值'},
					  {type:'min',name:'最小值'}
					]
				  },
				   markLine:{
				    data:[
					  {type:'average',name:'平均值'}
					]
				  }
              },
               {
                  name:'PM25',
                  type:'line',
                  data: arr2,
                  makePoint:{
				    data:[
					  {type:'max',name:'最大值'},
					  {type:'min',name:'最小值'}
					]
				  },
				   markLine:{
				    data:[
					  {type:'average',name:'平均值'}
					]
				  }
              },
              {
                  name:'PM10',
                  type:'line',
                  data: arr3,
                  makePoint:{
				    data:[
					  {type:'max',name:'最大值'},
					  {type:'min',name:'最小值'}
					]
				  },
				   markLine:{
				    data:[
					  {type:'average',name:'平均值'}
					]
				  }
              },
              {
                  name:'SO2',
                  type:'line',
                  data: arr4,
                  makePoint:{
				    data:[
					  {type:'max',name:'最大值'},
					  {type:'min',name:'最小值'}
					]
				  },
				   markLine:{
				    data:[
					  {type:'average',name:'平均值'}
					]
				  }
              },
          ]
      };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>

	<script type="text/javascript">
    var myChart = echarts.init(document.getElementById('g2'));

    var arr = new Array();
    var you = 0;
    var liang = 0;
    var qing = 0;
    var mid = 0;
    var zhong = 0;
    var yan = 0;
    var index =0;
    <c:forEach items="${dataList}" var="datas">
               var i = index++;
               arr[i] = ${datas.AQI};
              if(arr[i]>=0&&arr[i]<=50) you++;
              else if(arr[i]>=51&&arr[i]<=100) liang++;
              else if(arr[i]>=101&&arr[i]<=150) qing++;
              else if(arr[i]>=151&&arr[i]<=200) mid++;
              else if(arr[i]>=201&&arr[i]<=300) zhong++;
              else yan++;
         </c:forEach>
         
         var option={
                title : {
                text: '近一月空气质量等级天数统计',
                x:'center'
                },
                 tooltip : {
                 trigger: 'item',
                 formatter: "{a} <br/>{b} : {c} ({d}%)"
                  },
                   legend: {
                   orient : 'vertical',
                   x : 'left',
                  data:['优','良','轻度污染','中度污染','重度污染','严重污染']
                 },
                 color:['#68cb00', '#f6e200','#fb890f','#df2d00','#b414bb','#6f0474'],
                 toolbox: {
                    show : true,
                    feature : {
                    mark : {show: true},
                    dataView : {show: true, readOnly: false},
                    
                  restore : {show: true},
                  saveAsImage : {show: true}
                 }
              },
              calculable : true,
              series : [
                   {
                      name:'空气质量等级',
                      type:'pie',
                      radius : '55%',
                      center: ['50%', '60%'],
                      data:[
                              {value:you, name:'优'},
                              {value:liang, name:'良'},
                              {value:qing, name:'轻度污染'},
                              {value:mid, name:'中度污染'},
                             {value:zhong, name:'重度污染'},
                             {value:yan, name:'严重污染'},
                            ]
                      }
                 ]
                
         };
           myChart.setOption(option);
    </script>

	<script type="text/javascript">
    var myChart = echarts.init(document.getElementById('g3'));

    var arr = new Array();
    var you =new Array();
    var liang =new Array();
    var qing = new Array();
    var mid =new Array();
    var zhong = new Array();
    var yan =new Array();
   
    <c:forEach items="${dataList}" var="datas">
               var i = index++;
               arr[i] = ${datas.AQI};
              if(arr[i]>=0&&arr[i]<=50){
               you.push([
                    ${datas.time},${datas.AQI}
                ]);
               }
             else if(arr[i]>=51&&arr[i]<=100){
              liang.push([
                    ${datas.time},${datas.AQI}
                ]);
               }
              else if(arr[i]>=101&&arr[i]<=150) {
               qing.push([
                    ${datas.time},${datas.AQI}
                ]);
               }
              else if(arr[i]>=151&&arr[i]<=200) {
               mid.push([
                    ${datas.time},${datas.AQI}
                ]);
               }
              else if(arr[i]>=201&&arr[i]<=300) {
               zhong.push([
                    ${datas.time},${datas.AQI}
                ]);
               }
              else {
               yan.push([
                    ${datas.time},${datas.AQI}
                ]);
               }
         </c:forEach>
         
         var option={
                title : {
                text: '近一月空气质量等级分布',
                },
                 tooltip : {
                    trigger: 'axis',
                  },
                  
                   legend: {
                  data:['优','良','轻度污染','中度污染','重度污染','严重污染']
                 },
                 color:['#68cb00', '#f6e200','#fb890f','#df2d00','#b414bb','#6f0474'],
                 toolbox: {
                          show : true,
                          feature : {
                          mark : {show: true},
                          dataZoom : {show: true},
                          dataView : {show: true, readOnly: false},
                          restore : {show: true},
                          saveAsImage : {show: true}
                        }
                 },
                  xAxis : [
                        {
                      type : 'value',
                      scale:true,
                       axisLabel : {
                                formatter: '{value}'
                        }
                     }
                  ],
                  yAxis : [
                     {            
                     type : 'value',
                     scale:true,
                     axisLabel : {
                           formatter: '{value}'
                    }
                    }
                 ],
                 series:[
                     {
                        name:'优',
                        type:'scatter',
                        data:you,
                        markPoint : {
                        data : [
                                 {type : 'max', name: '最大值'},
                                 {type : 'min', name: '最小值'}
                               ]
                         }
                     },
                     
                     {
                        name:'良',
                        type:'scatter',
                        data:liang,
                        markPoint : {
                        data : [
                                 {type : 'max', name: '最大值'},
                                 {type : 'min', name: '最小值'}
                               ]
                         }
                     },
                     
                     {
                        name:'轻度污染',
                        type:'scatter',
                        data:qing,
                        markPoint : {
                        data : [
                                 {type : 'max', name: '最大值'},
                                 {type : 'min', name: '最小值'}
                               ]
                         }
                     },
                     
                     {
                        name:'中度污染',
                        type:'scatter',
                        data:mid,
                        markPoint : {
                        data : [
                                 {type : 'max', name: '最大值'},
                                 {type : 'min', name: '最小值'}
                               ]
                         }
                     },
                     
                     {
                        name:'重度污染',
                        type:'scatter',
                        data:zhong,
                        markPoint : {
                        data : [
                                 {type : 'max', name: '最大值'},
                                 {type : 'min', name: '最小值'}
                               ]
                         }
                     },
                     
                     {
                        name:'严重污染',
                        type:'scatter',
                        data:yan,
                        markPoint : {
                        data : [
                                 {type : 'max', name: '最大值'},
                                 {type : 'min', name: '最小值'}
                               ]
                         }
                     },
                     
                 ]
                
         };
           myChart.setOption(option);
    </script>
    <script type="text/javascript" src="js/calendar.js"></script>
</body>
</html>
