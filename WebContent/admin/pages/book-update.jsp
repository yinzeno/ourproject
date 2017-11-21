<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="js/jqueryui/css/jquery-ui-1.10.2.css" />
<script src="js/jqueryui/js/jquery-1.9.1.js"></script>
<script src="js/jqueryui/js/jquery-ui-1.10.2.js"></script>
<script src="js/jqueryui/js/datepicker-zh-CN.js"></script>
</head>
<body>
	
	<form action="bookUpdate.action" method="post" enctype="multipart/form-data">

		<input type="hidden" name="page" value="${param.page}"/>
		
		<input type="hidden" name="book.id" value="${book.id}"/>
		<input type="hidden" name="book.cover" value="${book.cover}"/>

		照片：<img src="../${book.cover}" width="150px" height="150px">
		<br>
		修改: <input type="file" name="photo" size="12"/><br>
		姓名：<input type="text" name="book.name" value="${book.name}" required="required"/><br>
		挂号费：<input type="text" name="book.price" value="${book.price}" required="required"/><br>
		介绍：<input type="text" name="book.intro" value="${book.intro}" required="required"/><br>
		性别：<input type="text" name="book.auther" value="${book.auther}"/><br>
		职称：<input type="text" name="book.press" value="${book.press}"/><br>
		出诊日期：<input type="text" id="datepicker" name="book.pubdate" value="${book.pubdate}"/><br>
		科室分类:  <select name="book.category.id">
							<s:iterator value="categoryList">
								<option value="<s:property value="id"/>" <s:if test="book.category.id==id">selected="selected"</s:if>><s:property value="name"/></option>
							</s:iterator>
					   </select>
		<input type="submit" value="修改"/>
		
	</form>
	
</body>
</html>
