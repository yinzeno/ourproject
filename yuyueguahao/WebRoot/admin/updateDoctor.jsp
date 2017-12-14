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
<script language="javascript" src="js/checkform.js">

</script>

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="admin/top.jsp" frameborder="0" marginheight="0" marginwidth="0" width="63%" height="50" scrolling="no"></iframe>
<table width="100%" border="1" cellpadding="1" cellspacing="1" class="yrh">
  
</table>
<table width="770" border="1" cellpadding="1" cellspacing="1" class="main">
<tr valign="top">

    </tr>
    <tr>
      <td class="inputTitle"><font size="3" color="#CC0000">&nbsp;&nbsp;修改医生信息</font></td>
    </tr>
    <tr>
      <td>
          <form action="DoctorAction?method=updateDoctor" method="post" name="form1" onSubmit="return teamform()">
       <table width="100%" border="0" cellpadding="1" cellspacing="1" class="inputbox">
          <tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">医生姓名：</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="name" onFocus="nextfield='password'" value="${map.name}" maxlength="25">        
               <input type="hidden" class="text width100" name="id" onFocus="nextfield='password'" value="${map.id}" maxlength="25">           </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
    <tr>
            <td class="inputHeader">&nbsp;</td>
           
            <td class="inputContent">&nbsp;</td>
          </tr>

<tr>
            <td class="inputHeader">&nbsp;</td>
           <td width="11%" class="inputHeader">医院：</td>
            <td width="40%" class="inputContent">
             <select name="hospital">
<option value="选择">- - - - 请选择医院- - - - </option>
<c:forEach items="${hospitallist}" var="office">
           <option value="${office.name}" <c:if test="${map.hospital ==office.name }"> selected="selected"</c:if>  >${office.name}</option>
         </c:forEach>
</select>
            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>	
<tr>
            <td class="inputHeader">&nbsp;</td>
           <td width="11%" class="inputHeader">科室：</td>
            <td width="40%" class="inputContent">
            <select name="type">
			<c:forEach items="${officelist}" var="office">
           <option value="${office.name}"   <c:if test="${map.type ==office.name }"> selected="selected"</c:if>  >${office.name}</option>
        	 </c:forEach>
		</select>
            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>	
 <tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">职称：</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="phone" onFocus="nextfield='password'" value="${map.phone}" maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
 <tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">挂号费：</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="guahaomny"  value="${map.guahaomny}" maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
 <tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">最大预约人数：</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="yuyue"  value="${map.yuyue}" maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
          
          <tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">年龄：</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="age" onFocus="nextfield='password'" value="${map.age}"  maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
<tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">毕业院校：</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="school" onFocus="nextfield='password'" value="${map.school}"  maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
<tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">从医年限：</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="workyear" onFocus="nextfield='password'"  value="${map.workyear}"  maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
          
          
<tr>
            <td class="inputHeader">&nbsp;</td>
           
            <td class="inputContent">&nbsp;</td>
          </tr>
         


          <tr>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputHeader">医生专长：</td>
            <td class="inputContent">
              <textarea name="introduction" rows="6" cols="50">${map.introduction}</textarea>           </td>
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
            <input type="submit" class="bt2" name="button2" value="修改">&nbsp;&nbsp;&nbsp;&nbsp;
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
