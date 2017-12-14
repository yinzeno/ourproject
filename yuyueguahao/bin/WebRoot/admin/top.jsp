<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../css/z_style.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="770" border="0" cellpadding="0" cellspacing="0" class="pagetop" >
<tr>
<td><table width="100%" border="0" cellspacing="0" cellpadding="0" class="pagetopLine">
  <tr>
    <td><img src="../picture/space.gif" width="1" height="1"></td>
  </tr>
</table><table width="100%" border="0" cellpadding="0" cellspacing="0" class="pagetop">
 
<tr>	
<td width="124"></td>
<td align="right" valign="top" class="help">${name } 医生已登录   </td>
</tr>
</table>
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td height="25" class="menuMain">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td class="menuMain1"><table width="750" height="16" border="0" cellpadding="0" cellspacing="0">
              <tr align="center">
                
                 <td width="95" class="menuLinkbg"><a href="../DoctorAction?method=doctorShow" class="menuLink" target="_parent">医生信息管理</a></td>
               <td width="2"><img src="../picture/menu_l.gif" width="2" height="23"></td>
                 <td width="81" class="menuLinkbg"><a href="../HospitalAction?method=hospitalShow" class="menuLink" target="_parent">医院信息管理</a></td>
               <td width="2"><img src="../picture/menu_l.gif" width="2" height="23"></td>
                 <td width="81" class="menuLinkbg"><a href="../OfficeAction?method=officeShow" class="menuLink" target="_parent">科室信息管理</a></td>
               <td width="2"><img src="../picture/menu_l.gif" width="2" height="23"></td>
                <td width="85" class="menuLinkbg"><a href="../UserAction?method=userShow" class="menuLink" target="_parent">用户信息管理</a></td>
                <td width="2"><img src="../picture/menu_l.gif" width="2" height="23"></td>
                <td width="85" class="menuLinkbg"><a href="../OrderAction?method=orderShowForOne" class="menuLink" target="_parent">患者签到管理</a></td>
                <td width="2"><img src="../picture/menu_l.gif" width="2" height="23"></td>
				 <td width="85" class="menuLinkbg"><a href="../OrderAction?method=orderShowForSearch" class="menuLink" target="_parent">统计查询管理</a></td>
				 <td width="2"><img src="../picture/menu_l.gif" width="2" height="23"></td>
				 <td width="85" class="menuLinkbg"><a href="../AdminAction?method=adminAdd" class="menuLink" target="_parent">登录信息管理</a></td>
				 <td width="2"><img src="../picture/menu_l.gif" width="2" height="23"></td>
               
                 <td width="82" align="left" class="menuLinkbg">&nbsp;</td>
              </tr>
            </table>            
            </td>
          </tr>
    </table></td>
    </tr>
</table>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">

  </table><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="3" background="../picture/whole_line.gif"><img src="../pictures/space.gif" width="1" height="1"></td>
          </tr>
  </table></td>
</tr>
</table>

</body>
</html>