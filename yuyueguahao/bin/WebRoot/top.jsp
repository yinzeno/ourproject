<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>

  </head>
  
  <body bgcolor="#FFFFFF"><br/><br/><br/><br/><br/>
  <div align="center">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" >
    <tr>
      <td align="center"><h2><font color=blue>您好，欢迎使用网上医疗挂号系统</font></h2></td>
    </tr>
  </table>
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td><img src="picture/top.jpg"></td>
    </tr>
  </table>
  </div>
  </body>
</html>
