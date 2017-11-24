<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="js/jqueryui/css/jquery-ui-1.10.2.css" />
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<script src="js/jqueryui/js/jquery-1.9.1.js"></script>
<script src="js/jqueryui/js/jquery-ui-1.10.2.js"></script>
<script src="js/jqueryui/js/datepicker-zh-CN.js"></script>
<script>
$(function() {
	// 初始化日期插件
	$( "#datepicker" ).datepicker({
		showButtonPanel: true,//显示按钮栏
		showOtherMonths: true,//显示其他月份
		changeMonth: true,//显示月份菜单
		changeYear: true,//显示年份菜单
		numberOfMonths: 3,//显示月份数量
		showOn: "button",//显示按钮
		buttonImage: "admin/js/jqueryui/css/images/calendar.gif",//图片地址
		buttonImageOnly: false,//是否按钮只显示为图片
		minDate: -3,//开始日期(当天为0)
		maxDate: "+1Y +1M +1D",//今天之后的天数
	});
	$( "#datepicker" ).datepicker( "option", "zh-CN");
	$( "#datepicker" ).datepicker('setDate', new Date());	//设置初识日期
});
</script>

<title>购物车</title>
</head>
<body>

<div id="wrap">

<div class="logo">
	    <a href="index.action">
	    	<img src="images/logo.gif" border="0" /></a>
    </div>

<div class="center_content">

	<div class="left_content">
	
		<div class="title"><span class="title_icon"><img src="images/bullet1.gif"/></span>我的购物车</div>
		
		<div class="feat_prod_box_details">
		
			<s:if test="#session.indent != null">
			
				<table class="cart_table">
				
					<s:iterator value="#session.indent.itemList">
						<tr class="cart_title">
							<td>
								<a href="detail.action?bookid=${book.id}">
									<img src="../${book.cover}" class="thumb" border="0"/>
								</a>
							</td>
							<td>${book.name}</td>
							<td>${book.price}</td>
							<td>x ${amount}</td>
							<td>${total}</td>
							<td>
								<a href="javascript:buy(${book.id});">[添加]</a>
								<a href="javascript:lessen(${book.id});">[减少]</a>
								<a href="javascript:deletes(${book.id});">[删除]</a>
							</td>
						</tr>			
					</s:iterator>
					
	          		<tr>
			            <td colspan="4" class="cart_total"><span class="red">总价: </span></td>
			            <td><s:property value="#session.indent.total"/></td>
	          		</tr>
	        	</table><br>
	        	
	        	<form action="save.action" method="post" id="form_save_order" >

		        			预约人姓名: <input type="text" name="indent.name" required="required"/>
			        		预约人电话: <input type="text" name="indent.phone" required="required"/>			        		
		        		              预约日期: <input type="text" id="datepicker" name="indent.address"/>

	        		<input type="submit" class="checkout" value="提交预约"/>
	        		
	        	</form><s:actionerror/>
	        	
			
			</s:if>
			
			 <s:actionmessage/>
		
		</div>
		
		
		<div class="clear"></div>
	
	</div>
   
   	<s:action name="right" executeResult="true"/>
   
	<div class="clear"></div>
	
</div>

<jsp:include page="footer.jsp"/>

</div>

</body>
</html>
			