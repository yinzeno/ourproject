<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>�û�ע��</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/checkform.js"></script>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="top.jsp" frameborder="0" marginheight="0" marginwidth="0" width="70%" height="150" scrolling="no"></iframe>


<table width="70%" border="0" cellpadding="0" cellspacing="0" class="main">
<tr valign="top">
<td><form action="UserAction?method=register" method="post"  name="form1" onSubmit="return checkregform()">
  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="inputTable">
    <tr>
    
    </tr>
    <tr>
      <td align="center">
        <table width="100%" border="0" cellpadding="0" cellspacing="1" class="inputbox">
          <tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="17%" class="inputHeader">��ʵ������</td>
            <td width="38%" class="inputContent">
              <input type="Text" class="text width100" name="trueName"  maxlength="25">
            </td>
            <td width="41%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
                         <tr>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputHeader"></td>
            <td class="inputContent">
            <font color="red"></font>      
            </td>          
          </tr> 
          <tr>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputHeader">���֤�ţ�</td>
            <td class="inputContent">
              <input type="Text"  name="number"  maxlength="25"  class="text width100">
            </td>
            <td class="inputContent"> <font color="#CC0000"></font></td>
          </tr>
                         <tr>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputHeader"></td>
            <td class="inputContent">
            <font color="red"></font>      
            </td>          
          </tr> 
          <tr>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputHeader">�Ա�</td>
            <td class="inputContent">
              <input type="text"  name="phone"   maxlength="25"  class="text width100">
            </td>
            <td class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
                         <tr>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputHeader"></td>
            <td class="inputContent">
            <font color="red"></font>      
            </td>          
          </tr> 
          <tr>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputHeader">���䣺</td>
            <td class="inputContent">
              <input type="text"  name="address"  maxlength="25"  class="text width100">
            </td>
            <td class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
                    <tr>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputHeader"></td>
            <td class="inputContent">
            <font color="red"></font>      
            </td>          
          </tr> 
          <tr>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputHeader"></td>
            <td class="inputContent">
           <input type="submit"  value="ע��" > 
           &nbsp;&nbsp;&nbsp;&nbsp;
          <input type="Reset"  value="����" >
    &nbsp;&nbsp;&nbsp;&nbsp;
  
              <a href="index.jsp">����</a>
              
            </td>
            
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
