<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>医院挂号网</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/z_style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/checkform.js">
</script>

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="admin/top.jsp" frameborder="0" marginheight="0" marginwidth="0" width="63%" height="50" scrolling="no"></iframe>
<table width="100%" border="1" cellpadding="1" cellspacing="1" class="yrh">
  <tr>
    <td height="10"><font size="4">医院信息列表</font></td>
  </tr>
</table>
<table width="770" border="1" cellpadding="1" cellspacing="1" class="main">
<tr valign="top">
<td>
  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="inputTable">
 
    <tr>

     <td width="5%" align="center" class="inputHeader">编号</td>
            <td width="13%" align="center" class="inputHeader">医院名称</td>
            <td width="22%" align="center" class="inputHeader">地址</td>
            <td width="12%" align="center" class="inputContent">操作</td>           
        </tr>
        <c:set var="num" value="0"></c:set>
        <c:forEach items="${list}" var="list">
        <c:set var="num" value="${num+1}"></c:set>
        <tr>
         <td width="5%" align="center" class="inputHeader">${num}</td>
            <td width="13%" align="center" class="inputHeader">${list.name}</td>

			<td width="20%" align="center" class="inputHeader">${list.hospitaladress}</td>
            <td width="12%" align="center" class="inputContent"><p><a href="HospitalAction?method=editHospital&id=${list.id}"><img src="picture/edit.gif" alt="修改" width="45" height="17" border="0"></a>&nbsp;&nbsp;<a href="HospitalAction?method=deleteHospital&id=${list.id}" onClick="window.confirm('确定删除？')"><img src="picture/delete_item.gif" alt="删除" width="45" height="17" border="0"></a></p></td>
            
        </tr>
        </c:forEach> 
      </table>
</td>
    </tr>
    <tr>
      <td class="inputTitle"><font size="3" color="#CC0000">&nbsp;&nbsp;添加医院信息</font></td>
    </tr>
    <tr>
      <td>
      <form action="HospitalAction?method=addHospital" method="post" name="form1"  onSubmit="return teamform()">
        <table width="100%" border="0" cellpadding="1" cellspacing="1" class="inputbox">
          <tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">医院名称：</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="name" onFocus="nextfield='password'" maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
    <tr>
            <td class="inputHeader">&nbsp;</td>
           
            <td class="inputContent">&nbsp;</td>
          </tr>

           <tr>
            <td class="inputHeader">&nbsp;</td>
           
            <td class="inputContent">&nbsp;</td>
          </tr>

         


          <tr>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputHeader">医院地址：</td>
            <td class="inputContent">
              <textarea name="hospitaladress" rows="6" cols="50"></textarea>           </td>
            <td class="inputContent">&nbsp;</td>
          </tr>
      <tr>
            <td class="inputHeader">&nbsp;</td>
           
            <td class="inputContent">&nbsp;</td>
          </tr>
           

   
 <tr>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputContent">&nbsp;</td>
            <td class="inputContent">&nbsp;</td>
          </tr>
          <tr>
           <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader"> </td>
            <td width="40%" class="inputContent">
            <input type="submit" class="bt2" name="button2" value="添加">&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="Reset" class="bt2" name="button1" value="重填" onClick="clear()"> </td>
            <td width="45%" class="inputContent">&nbsp;</td>
         
         </tr>
          <tr>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputContent">&nbsp;</td>
            <td class="inputContent">&nbsp;</td>
          </tr>
		   <tr>
            <td class="inputHeader">&nbsp;</td>
            
            <td class="inputHeader">&nbsp;</td>            
            <td class="inputContent">&nbsp;</td>
            
            <td class="inputContent">&nbsp;</td>
          </tr>
          
        </table>
        </form>
        <table width="100%" border="0" cellspacing="1" cellpadding="0">
          <tr>
            <td width="4%" class="inputContent">&nbsp;</td>
            <td width="17%" class="inputHeader">&nbsp;</td>
            <td width="39%" class="inputContent">
         </td>
            <td width="40%" class="inputContent">&nbsp;</td>
          </tr>
        </table></td>
    </tr>
  </table>


<table width="770" border="0" cellpadding="0" cellspacing="0" class="main">
<tr valign="top">
<td>
</td>
</tr>
</table>
</body>
</html>
