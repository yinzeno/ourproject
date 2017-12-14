<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>医院网上挂号系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/checkform.js"></script>


</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="top2.jsp" frameborder="0" marginheight="0" marginwidth="0" width="70%" height="150" scrolling="no"></iframe>


<table width="70%" border="0" cellpadding="0" cellspacing="0" class="main">
<tr valign="top">
<td><form action="DoctorAction?method=select" method="post" name="form1" onSubmit="return checkuser()">
  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="inputTable">
    <tr>
    
      <td align="center"><font color="red">(*输入医生姓名或者科室*)</font><input type="text" name="infor"/><input type="submit" value="查询">&nbsp;&nbsp;&nbsp;<a href="DoctorAction?method=allDoctor">全部医生信息</a></td>
    </tr>
    
    <tr>
      <td class="inputHeader">
	   <table width="100%" border="0" cellpadding="0" cellspacing="1" class="inputbox">
          <tr>
            <td width="20%" align="center" class="inputHeader">医生姓名</td>
            <td width="20%" align="center" class="inputHeader">所在医院</td>
            <td width="13%" align="center" class="inputContent">所在科室</td>
              <td width="13%" align="center" class="inputContent">最多挂号人数</td>
         
          
            <td width="15%" align="center" class="inputContent">操作</td>        
          </tr>
          <c:forEach items="${list}" var="list">
		     <tr>
            <td width="20%" align="center" class="inputHeader"><a href="DoctorAction?method=infor&id=${list.id}" target="_blank">${list.name }</a></td>
            <td width="20%" align="center" class="inputContent">${list.hospital}</td>
            <td width="13%" align="center" class="inputContent">${list.type}</td>
            <td width="13%" align="center" class="inputContent">${list.yuyue}</td>
        
            <td width="15%" align="center" class="inputContent">
        
        
            <a href="DoctorAction?method=order&id=${list.id}">预约</a>
      
            </td>        
            
          </tr>  
          </c:forEach>
        </table>
        
	  </td>
    </tr>
   
  </table>
  </form>  
</td>
</tr>
</table>
</body>
</html>
