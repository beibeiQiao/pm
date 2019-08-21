<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  <link rel="stylesheet" href="css/main.css" type="text/css"/>
<link rel="stylesheet" href="css/about.css" type="text/css"></link></head>
  
  <body class="about">
  <div class="menu_width">
         <div class="menu">
              <div class="menu_logo"><a href="/"></a></div>
              <ul class="menu_list">
                    <!---当前页面是哪个栏目，只用在li的class里再加个" current "就行了-->
                    <li class="menu_1"><a href="<%=basePath%>ServletQueryAqi?name=station2"><i></i><span>首页</span></a></li>
                    <li class="menu_2"><a href="rank.jsp"><i></i><span>地区数据</span></a></li>
                    <li class="menu_3"><a href="<%=basePath%>ServletQueryAllData?name=station1"><i></i><span>历史数据</span></a></li>
                    <li class="menu_4"><a href="fanghu.jsp"><i></i><span>PM2.5防护</span></a></li>
                    <li class="menu_5"><a class="current"  href="aboutUs.jsp"><i></i><span>关于我们</span></a></li>
                    <div class="clear"></div>
              </ul>
         </div>   
</div>
<!-- 放你的东西 -->
       <section class="banner">
        <div class="container text-center t-white">
            <h1 class="animated">基于机器学习的PM2.5浓度预测</h1>
            <p class="text-lg">预测雾霾，有准备出行</p>
            <p class="info animated ptm">
                本作品旨在解决当前PM2.5预测不准确、区域变化浮动大且监测花费大的问题，<br/>
                结合北京市区域空气质量监测数据，<br/>
				将回归、BP神经网络、循环神经网络(RNN)的等方法运用于PM2.5预测中，<br/>
				将监测站所采集的历史监测数据，使用不同的方法进行训练,得出算法预测PM2.5质量浓度。
            </p>
        </div>
    </section>
     <section class="block culture">
        <div class="container text-center">
            <div class="title mbl">
              <h1>团队创新</h1>
              <small>Team Creativity</small>
            </div>
            <div class="row clearfix">
                <div class="col-md-6 mbs tip1 clearfix">
                    <div class="tip">
                        <span>实时</span>
                        <small>Immediate</small>
                    </div>
                    <div class="content"> 
                        <p class="visible-xs">实时统计北京市各环境监测点数据，<br/>统计分析雾霾发生影响因素</p>
                    </div>
                </div>
                <div class="col-md-6 mbs tip2 clearfix">
                    <div class="tip">
                        <span>预测</span>
                        <small>Forecast</small>
                    </div>
                    <div class="content"> 
                        <p class="hidden-xs">建立包括多元线性回归、BP神经网络<br/>和循环神经网络(RNN)等在内的多种分类模型，<br/>通过交叉验证的方式训练模型并得到预测结果</p>
                    </div>
                </div>
                <div class="col-md-6 tip3 mbs clearfix">
                    <div class="content"> 
                        <p class="visible-xs">以网站可视化界面的形式展现，<br/>生动形象、方便日常生活查看使用</p>
                    </div>
                    <div class="tip">
                        <span> 可视化</span>
                        <small>Visible</small>
                    </div>
                </div>
                <div class="col-md-6 mbs tip4 clearfix">
                    <div class="content"> 
                        <p class="visible-xs">拓展其他神经网络，<br/>研究不同网络中输入的特征因子的选取方法</p>
                    </div>
                    <div class="tip">
                        <span>拓展</span>
                        <small>Expand</small>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="block story">
        <div class="container">
            <div class="title mbl">
              <h1>方案可行性</h1>
              <small>Feasibility of the scheme</small>
            </div>
            <ul>
                <li>
                    <div class="info">
                        <div class="head">
                            <div class="box hz-triangle">
                                <img src="./images/w3.png" alt="多元线性回归"/>
                                <p>多元线性回归</p>
                            </div>
                        </div>
                        <div class="content">多元线性回归模型是计量经济学中最重要的模型之一，它可以刻画被解释变量与多个解释变量之间的线性关系，并通过最小二乘估计来得到各个回归系数，以此来达到对某些经济变量之间进行定量研究的目的。多元线性回归模型发展到如今，其应用领域已不仅限于经济领域，还包括管理、劳动、教育等多个领域。本作品想要利用多元线性回归模型来对PM2．5含量与AQI其它5项分指标及其对应污染物含量之间的关系进行定量研究，因此可以进行 ……</div>
                    </div>
                </li>
                <li>
                    <div class="info right">
                        <div class="head">
                            <div class="box hz-triangle">
                                <img src="./images/w3.png" alt=">B-P 神经网络模型"/>
                                <p>>B-P 神经网络模型</p>
                            </div>
                        </div>
                        <div class="content">B-P 神经网络模型作为最经典的人工神经网络算法，相对其他非线性模型，具有以下优势：<br/>
						①非线性映射，解决了早期 ANN 在多层非线性函数问题上的缺失。<br/>
						②网络具有一定的容错能力。<br/>
						③ BP网络具有自主学习的能力。
						……</div>
                    </div>
                </li>
                <li>
                    <div class="info">
                        <div class="head">
                            <div class="box hz-triangle">
                                <img src="./images/w3.png" alt="循环神经网络"/>
                                <p>循环神经网络</p>
                            </div>
                        </div>
                        <div class="content">循环神经网络RNN在关联上下文方面有很大的作用，尤其擅长针对序列的数据建模。本作品需要利用时间轴上的前后关联信息去预测未来的浓度，而循环神经网络针对时序数据出色的记忆能力可以很好地达到该效果……</div>
                    </div>
                </li>
            </ul>
        </div>
    </section>
<div class="footer_width"  style="margin-top:100px">
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
   
</body>
</html>
