<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Sql.*" import="java.util.ArrayList" import="java.util.List"  %> 
<%@page import="org.lxh.smart.SmartUpload" import="Dataset.*" import="Algorithm.*" import="java.util.ArrayList" import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>AHP | 系统效能评估软件系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<link rel="shortcut icon" href="otherResource/theicon.ico" >
    
	<!-- CSS -->
	<link href="white/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="white/css/flexslider.css" rel="stylesheet" type="text/css" />
	<link href="white/css/prettyPhoto.css" rel="stylesheet" type="text/css" />
	<link href="white/css/animate.css" rel="stylesheet" type="text/css" media="all" />
    <link href="white/css/owl.carousel.css" rel="stylesheet">
	<link href="white/css/style.css" rel="stylesheet" type="text/css" />
    
	<!-- FONTS -->
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500italic,700,500,700italic,900,900italic' rel='stylesheet' type='text/css'>
	<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">	
    
	<!-- SCRIPTS -->
	<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <!--[if IE]><html class="ie" lang="en"> <![endif]-->
	
	<script src="white/js/jquery.min.js" type="text/javascript"></script>
	<script src="white/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="white/js/jquery.prettyPhoto.js" type="text/javascript"></script>
	<script src="white/js/jquery.nicescroll.min.js" type="text/javascript"></script>
	<script src="white/js/superfish.min.js" type="text/javascript"></script>
	<script src="white/js/jquery.flexslider-min.js" type="text/javascript"></script>
	<script src="white/js/owl.carousel.js" type="text/javascript"></script>
	<script src="white/js/animate.js" type="text/javascript"></script>
	<script src="white/js/jquery.BlackAndWhite.js" type="text/javascript"></script>
	<script src="white/js/myscript.js" type="text/javascript"></script>
</head>
<body>

<div class="preloader_hide">

	<!-- PAGE -->
	<div id="page" class="single_page">
	
		<!-- HEADER -->
		<header>
			
			<!-- MENU BLOCK -->
			<div class="menu_block">
			
				<!-- CONTAINER -->
				<div class="container clearfix">
					
					<!-- LOGO -->
					<div class="logo pull-left">
						<a href="MainPage.jsp" ><span class="b1">系统</span><span class="b2">效能</span><span class="b3">评估</span><span class="b4">软件</span><span class="b5">系统</span></a>
					</div><!-- //LOGO -->
					
					<!-- MENU -->
					<div class="pull-right">
						<nav class="navmenu center">
							<ul>
								<li class="scroll_btn"><a href="MainPage.jsp#about" >介绍</a></li>
								<li class="scroll_btn"><a href="MainPage.jsp#projects" >工作</a></li>
								<li class="scroll_btn"><a href="MainPage.jsp#group" >小组</a></li>
								<li class="scroll_btn"><a href="MainPage.jsp#team" >相关</a></li>
								<li class="scroll_btn"><a href="#contacts" >其他</a></li>
								<li class="scroll_btn last"><a href="login.jsp" >注销</a></li>
							</ul>
						</nav>
					</div><!-- //MENU -->
				</div><!-- //MENU BLOCK -->
			</div><!-- //CONTAINER -->
		</header><!-- //HEADER -->
		
		<!-- BREADCRUMBS -->
		<section class="breadcrumbs_block clearfix parallax">
			<div class="container center">
				<h2><b>AHP</b> 层次分析法</h2>
				<p>Analytic Hierarchy Process</p>
			</div>
		</section><!-- //BREADCRUMBS -->
		
		
		<!-- BLOG -->
		<section id="blog">
			
			<!-- CONTAINER -->
			<div class="container">
				
				<!-- ROW -->
				<div class="row">
				
					<!-- BLOG BLOCK -->
					<div class="blog_block col-lg-9 col-md-9 padbot50">
						
						<!-- SINGLE BLOG POST -->
						<div class="single_blog_post clearfix" data-animated="fadeInUp">
							<div class="single_blog_post_title">用法 & 介绍</div>
						<!--	<div class="single_blog_post_img"><img src="white/images/blog/3.jpg" alt="" /></div>-->
							
							<div class="single_blog_post_content">
								<p class="margbot50">AHP算法，需要从文件读入重要度。</p>
								<p class="margbot30">The analytic hierarchy process is a structured technique for organizing and analyzing complex decisions, based on mathematics and psychology. It was developed by Thomas L. Saaty in the 1970s and has been extensively studied and refined since then.</p>
								<p class="margbot30">It has particular application in group decision making, and is used around the world in a wide variety of decision situations, in fields such as government, business, industry, healthcare, shipbuilding and education.</p>
								<p class="margbot30">Rather than prescribing a "correct" decision, the AHP helps decision makers find one that best suits their goal and their understanding of the problem. It provides a comprehensive and rational framework for structuring a decision problem, for representing and quantifying its elements, for relating those elements to overall goals, and for evaluating alternative solutions. (wikipedia)</p>
							</div>
							
						</div><!-- //SINGLE BLOG POST -->
						
						<hr class="margbot80">
						
					</div><!-- //BLOG BLOCK -->
					
					
					<!-- SIDEBAR -->
					<div class="sidebar col-lg-3 col-md-3 padbot50">
						
						<hr>
						
						<!-- POPULAR POSTS WIDGET -->
						<div class="sidepanel widget_popular_posts">

							<h3><b>请选择指标体系</b></h3>
							<div class="sidepanel widget_popular_posts">
								<div class="post_item_content_widget">
								
									<%
										Sql sql =  Sql.getInstance();
										ArrayList<String> al = sql.getTreeS();
										int num = al.size();
										String s;
									%>
									
									<form action="SelectServlet" method="get" enctype="multipart/form-data">
									<input type="hidden" name="submitchoice" value="3">
									<table bgcolor="#DEDEDE" border="2" cellspacing="5" cellpadding="5" width="400">
										<thead>
											<tr>
												<th>序号</th>
												<th>指标体系</th>
												<th>.</th>
											</tr>
										</thead>
										<tbody>
<%
										for(int i=0;i<num;i++) {
%>
											<tr>
												<td><%= i%></td>
												<td><%=al.get(i).toString() %></td>
												<td><input type="radio" name="choose_target" value="<%= i%>"></td>
											</tr>
<%
										}
%>
											<tr>
												<td colspan="3"><input type="submit" value="提交"></td>
											</tr>
										</tbody>	
									</table>
									</form>
								</div>
							</div>
						</div><!-- //POPULAR POSTS WIDGET -->
					</div><!-- //SIDEBAR -->
				</div><!-- //ROW -->
			</div><!-- //CONTAINER -->
		</section><!-- //BLOG -->
	</div><!-- //PAGE -->

	
	<!-- CONTACTS -->
	<section id="contacts">
	</section><!-- //CONTACTS -->
	
	<!-- FOOTER -->
	<footer>
			
		<!-- CONTAINER -->
		<div class="container">
			
			<!-- ROW -->
			<div class="row" data-appear-top-offset="-200" data-animated="fadeInUp">
				
				<div class="col-lg-4 col-md-4 col-sm-6 padbot30">
					<h4><b>Special</b> thanks</h4>
					<div class="recent_posts_small clearfix">
						<div class="post_item_img_small">
							<img src="white/images/footer/a.jpg" alt="" />
						</div>
						<div class="post_item_content_small">
							<a class="title" href="http://www.layui.com/" target="_blank">Layui</a>
							<ul class="post_item_inf_small">
								<li>结果展示的进度条</li>
							</ul>
						</div>
					</div>
					<div class="recent_posts_small clearfix">
						<div class="post_item_img_small">
							<img src="white/images/footer/b.jpg" alt="" />
						</div>
						<div class="post_item_content_small">
							<a class="title" href="http://www.treejs.cn/v3/main.php#_zTreeInfo" target="_blank">zTree</a>
							<ul class="post_item_inf_small">
								<li>以树状结构形象显示指标体系</li>
							</ul>
						</div>
					</div>
					<div class="recent_posts_small clearfix">
						<div class="post_item_img_small">
							<img src="white/images/footer/c.jpg" alt="" />
						</div>
						<div class="post_item_content_small">
							<a class="title" href="https://w3layouts.com/" target="_blank">w3layouts</a>
							<ul class="post_item_inf_small">
								<li>精美的网站模板</li>
							</ul>
						</div>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-4 col-sm-6 padbot30 foot_about_block">
					<h4><b>About</b> us</h4>
					<p>We value people over profits, quality over quantity, and keeping it real. As such, we deliver an unmatched working relationship with our clients.</p>
					<p>Life is half spent before we know what it is.</p>
				</div>
				
				<div class="respond_clear"></div>
				
			</div><!-- //ROW -->
		</div><!-- //CONTAINER -->
	</footer><!-- //FOOTER -->

</div>
</body>
</html>