<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>ҽԺ�Һ���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/z_style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/checkform.js">
</script>

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="admin/top.jsp" frameborder="0" marginheight="0" marginwidth="0" width="63%" height="50" scrolling="no"></iframe>
<table width="100%" border="1" cellpadding="1" cellspacing="1" class="yrh">
  <tr>
    <td height="10"><font size="4">ҽ����Ϣ�б�</font></td>
  </tr>
</table>
<table width="770" border="1" cellpadding="1" cellspacing="1" class="main">
<tr valign="top">
<td>
  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="inputTable">
 
    <tr>

     <td width="5%" align="center" class="inputHeader">���</td>
            <td width="13%" align="center" class="inputHeader">����</td>
            <td width="13%" align="center" class="inputHeader">ҽԺ</td>
            <td width="22%" align="center" class="inputHeader">����</td>
			<td width="20%" align="center" class="inputHeader">ְ��</td>
            <td width="12%" align="center" class="inputContent">����</td>           
        </tr>
        <c:set var="num" value="0"></c:set>
        <c:forEach items="${list}" var="list">
        <c:set var="num" value="${num+1}"></c:set>
        <tr>
         <td width="5%" align="center" class="inputHeader">${num}</td>
            <td width="13%" align="center" class="inputHeader">${list.name}</td>
            <td width="13%" align="center" class="inputHeader">${list.hospital}</td>

			<td width="20%" align="center" class="inputHeader">${list.type}</td>
<td width="20%" align="center" class="inputHeader">${list.phone}</td>
            <td width="12%" align="center" class="inputContent"><p><a href="DoctorAction?method=editDoctor&id=${list.id}"><img src="picture/edit.gif" alt="�޸�" width="45" height="17" border="0"></a>&nbsp;&nbsp;<a href="DoctorAction?method=deleteDoctor&id=${list.id}" onClick="window.confirm('ȷ��ɾ����')"><img src="picture/delete_item.gif" alt="ɾ��" width="45" height="17" border="0"></a></p></td>
            
        </tr>
        </c:forEach> 
      </table>
</td>
    </tr>
    <tr>
      <td class="inputTitle"><font size="3" color="#CC0000">&nbsp;&nbsp;���ҽ����Ϣ</font></td>
    </tr>
    <tr>
      <td>
      <form action="DoctorAction?method=addDoctor" method="post" name="form1"  onSubmit="return teamform()">
        <table width="100%" border="0" cellpadding="1" cellspacing="1" class="inputbox">
          <tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">ҽ��������</td>
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
           <td width="11%" class="inputHeader">ҽԺ��</td>
            <td width="40%" class="inputContent">
             <select name="hospital">
<option value="ѡ��">- - - - ��ѡ��ҽԺ- - - - </option>
<c:forEach items="${hospitallist}" var="office">
           <option value="${office.name}">${office.name}</option>
         </c:forEach>
</select>
            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>	

<tr>
            <td class="inputHeader">&nbsp;</td>
           <td width="11%" class="inputHeader">���ң�</td>
            <td width="40%" class="inputContent">
             <select name="type">
<option value="ѡ��">- - - - ��ѡ��һ�ֿ���- - - - </option>
<c:forEach items="${officelist}" var="office">
           <option value="${office.name}">${office.name}</option>
         </c:forEach>
</select>
            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>	
           <tr>
            <td class="inputHeader">&nbsp;</td>
           
            <td class="inputContent">&nbsp;</td>
          </tr>
<tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">ְ�ƣ�</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="phone" onFocus="nextfield='password'" maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
<tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">�Һŷѣ�</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="guahaomny"  maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
<tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">ÿ�����ԤԼ������</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="yuyue"  maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
<tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">���䣺</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="age" onFocus="nextfield='password'" maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
<tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">��ҵԺУ��</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="school" onFocus="nextfield='password'" maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
<tr>
            <td width="4%" class="inputHeader">&nbsp;</td>
            <td width="11%" class="inputHeader">��ҽ���ޣ�</td>
            <td width="40%" class="inputContent">
              <input type="Text" class="text width100" name="workyear" onFocus="nextfield='password'" maxlength="25">            </td>
            <td width="45%" class="inputContent">&nbsp;<font color="#CC0000"></font></td>
          </tr>
<tr>
            <td class="inputHeader">&nbsp;</td>
           
            <td class="inputContent">&nbsp;</td>
          </tr>
         


          <tr>
            <td class="inputHeader">&nbsp;</td>
            <td class="inputHeader">ҽ��ר����</td>
            <td class="inputContent">
              <textarea name="introduction" rows="6" cols="50"></textarea>           </td>
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
            <input type="submit" class="bt2" name="button2" value="���">&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="Reset" class="bt2" name="button1" value="����" onClick="clear()"> </td>
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
