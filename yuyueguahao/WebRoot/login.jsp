<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>����ҽ�ƹҺ�ϵͳ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/checkform.js"></script>


</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="top.jsp" frameborder="0" marginheight="0" marginwidth="0" width="70%" height="250" scrolling="no"></iframe>


<table width="70%" border="0" cellpadding="0" cellspacing="0" class="main">
<tr valign="top">
<td><form action="UserAction?method=login" method="post" name="form1" onSubmit="return checkloginform()">
  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="inputTable">
    <tr>
    
      <td align="center"></td>
    </tr>
    <tr>
      <td class="inputHeader">
	   <table width="100%" border="0" cellpadding="0" cellspacing="0" class="inputbox">
          <tr>
            <td width="7%" class="inputHeader">&nbsp;</td>
            <td width="25%" align="center" class="inputHeader">��ʵ������</td>
            <td width="23%" align="center" class="inputContent"><input type="Text" class="text width100" name="username" onFocus="nextfield='name'" value="" maxlength="25"></td>
            <td width="25%" align="center" class="inputContent">&nbsp;</td>
            <td width="20%" align="center" class="inputContent">&nbsp;</td>
          </tr>
		       <tr>
            <td class="inputHeader">&nbsp;</td>
            <td align="center" class="inputHeader">&nbsp;</td>
           
            <td align="center" class="inputContent"><font color="red"></font>&nbsp;</td>
            <td align="center" class="inputContent">&nbsp;</td>
          </tr>
          <tr>
            <td class="inputHeader"><label></label></td>
            <td align="center" class="inputHeader">֤&nbsp;&nbsp;��&nbsp;&nbsp;�ţ�</td>
            <td align="center" class="inputContent"><input type="password" class="text width100" name="password"  maxlength="25"></td>
            <td align="center" class="inputContent">&nbsp;</td>
            <td align="center" class="inputContent">&nbsp;</td>
          </tr>
          <tr>
            <td class="inputHeader">&nbsp;</td>
            <td align="center" class="inputHeader">&nbsp;</td>
           
            <td align="center" class="inputContent"><font color="red"></font>&nbsp;</td>
            <td align="center" class="inputContent">&nbsp;</td>
          </tr>
          <tr>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputContent"><a href="admin.jsp">��̨��¼</a></td>
            <td align="center" class="inputContent">
             <input type="submit"  value="��¼">	&nbsp;&nbsp;            &nbsp;&nbsp;
             <input type="Reset"  value="����">

           		</td>
            <td class="inputContent"><a href="UserAction?method=register"> </a></td>  <%%>
            <td align="center" class="inputContent">&nbsp;</td>
          </tr>
          
          <tr>
            <td colspan="2" class="inputHeader">&nbsp;</td>
            <td colspan="3" align="center" class="inputContent">&nbsp;</td>
          </tr>
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
