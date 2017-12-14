<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/z_style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="../js/checkform.js">

</script>
<script  src="My97DatePicker/WdatePicker.js"></script>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="admin/top.jsp" frameborder="0" marginheight="0" marginwidth="0" width="770" height="50" scrolling="no"></iframe>
<table width="100%" border="1" cellpadding="1" cellspacing="1" class="yrh">
  <tr>
    <td height="17"><font size="3" >统计查询</font></td>
  </tr>
</table>
<form action="OrderAction?method=orderShowForSearch" method="post" name="form1" onSubmit="return checkuser()">
<table width="100%" class="yrh">
  <tr> <td>开始时间</td> <td >
 <input type="Text"  name="starttime"  onfocus="WdatePicker({isShowClear:false,readOnly:true,dateFmt:'yyyy-MM-dd',maxDate:'%y-%M-%d'})"> 
							</td>      
 <td>结束时间</td> <td >
 <input type="Text"  name="endtime"  onfocus="WdatePicker({isShowClear:false,readOnly:true,dateFmt:'yyyy-MM-dd',maxDate:'%y-%M-%d'})"> 
							</td>  
	<td>医生姓名</td>    
	<td><input type="text" name="name" ></td>    
	<td><input type="submit" value="搜索" /></td>    
  </tr>
  <tr>
  </tr>
</table>
</form>
<table width="770" border="0" cellpadding="0" cellspacing="0" class="main">
  <tr valign="top">
    <td><form action="" method="post" enctype="multipart/form-data" name="form1">
      <table width="100%" border="0" cellpadding="2" cellspacing="1" class="inputTable">
        <tr>
          <td class="inputHeader"><table width="100%" border="0" cellpadding="0" cellspacing="1" class="inputbox">
<tr>

     <td width="5%" align="center" class="inputHeader">编号</td>
            <td width="13%" align="center" class="inputHeader">医生姓名</td>
            <td width="22%" align="center" class="inputHeader">类型</td>
  <td width="22%" align="center" class="inputHeader">时间</td>
            
        </tr>
           <c:set var="num" value="1"></c:set>
        <c:forEach items="${list}" var="list">
        <tr>
          <td width="5%" align="center" class="inputHeader">${num}</td>
            <td width="13%" align="center" class="inputHeader">${list.name}</td>
            <td width="22%" align="center" class="inputHeader">${list.type}</td>
            <td width="22%" align="center" class="inputHeader">${list.time}</td>
          <c:set var="num" value="${num+1}"></c:set>
        </tr>
        </c:forEach>       
           
              </table></td>
        </tr>
      </table>
    </form></td>
  </tr>
</table>




</body>
</html>
