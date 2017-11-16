<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>

<div class="right_content">
	
	<s:if test="#session.indent!=null">
		<div class="cart">
			<div class="title">
				<a href="cart.action"><img src="images/cart.gif" alt="购物车" title="购物车"/></a>
			</div>
			<div class="home_cart_content">
					<span>共<s:property value="#session.indent.amount"/>本 | 总价: $<s:property value="#session.indent.total"/></span>
			</div>
			<s:if test="#session.indent!=null">
				<a href="cart.action" class="view_cart">查看购物车</a> 
			</s:if>
		</div>
	</s:if>

	
	<div class="title"><span class="title_icon"><img src="images/bullet3.gif"/></span>医院简介</div>
	<div class="about">
		<p>
			<img src="images/about.gif" class="right" /> 
			哈尔滨工业大学医院始建于一九六一年，历经四十多年的发展历程，现已成为一所具有一定规模、技术力量较强、仪器设备精良、诊查项目齐全的二级综合医院，同时也是省、市医保定点医院及我市唯一的一家铁路医保定点二级医院。 医院共有职工200余人，其中副主任医师以上40余人，担负着全校9000余教职员工和30000余学生及周边社区居民的医疗保健任务。为方便师生员工及周边社区病员的就医治疗，根据一、二校区的地理分布，设立了一校区医院和二校区医院，您可以就近治疗或根据病情择院就医，医院随时提供24小时的昼夜医疗救治。 
		</p>
	</div>
	
	
	<div class="right_box">
	
		<div class="title"><span class="title_icon"><img src="images/bullet4.gif"/></span> </div>
		
		<s:iterator var="special" value="saleList">
			<div class="new_prod_box"> <a href="detail.action?bookid=${id}">${name}</a>
				<div class="new_prod_bg">
					<span class="new_icon"><img src="images/promo_icon.gif"/></span> 
					<a href="detail.action?bookid=${id}"><img src="../${cover}" class="thumb" border="0" /></a>
				</div>
			</div>
		</s:iterator>

	</div>


	<div class="right_box">
	
		<div class="title"><span class="title_icon"><img src="images/bullet5.gif"/></span>科室分类</div>
		<ul class="list">
			<s:iterator var="category" value="categoryList">
				<li><a href="category.action?categoryid=<s:property value="id"/>"><s:property value="name"/></a></li>
			</s:iterator>
		</ul>
		
	</div>
</div>
    
</body>
</html>