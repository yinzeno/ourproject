
function teamform(){
if(document.form1.name.value===""){
window.alert("请输入医生姓名！");
document.form1.name.focus();
return false;
}

if(document.form1.type.value==="选择"){
window.alert("请选择科室！");
document.form1.type.focus();
return false;
}
if(document.form1.phone.value===""){
window.alert("请输入职称！");
document.form1.phone.focus();
return false;
}
else{
  return true;
}
}

function checkTime(){
if(document.form1.time.value===""){
window.alert("请输入时间！");
document.form1.time.focus();
return false;
}
else{
 return true;
}
}

function checkloginform(){
if(document.form1.username.value===""){
window.alert("请输入真实姓名！");
document.form1.username.focus();
return false;
}if(document.form1.password.value===""){
window.alert("请输入证件号！");
document.form1.password.focus();
return false;
}else{
window.location.href="home.htm";
} 

}

function teamfor(){
if(document.form1.name.value===""){
window.alert("请输入用户名！");
document.form1.name.focus();
return false;
}if(document.form1.password.value===""){
window.alert("请输入密码！");
document.form1.password.focus();
return false;
}else{
window.location.href="order_confirm.htm";
} 

}


function newform(){
if(document.form1.title.value===""){
window.alert("请输入标题！");
document.form1.title.focus();
return false;
}

if(document.form1.link.value===""){
window.alert("请输入链接！");
document.form1.link.focus();
return false;
}
if(document.form1.type.value==="选择"){
window.alert("请选择类型！");
document.form1.type.focus();
return false;
}
else{
  return true;
}
}


function checkregform(){
if (document.form1.trueName.value === "") {
		window.alert("请输入真实姓名！");
		document.form1.trueName.focus();
		return false;
if (document.form1.number.value === "") {
		window.alert("请输入证件号！");
		document.form1.number.focus();
		return false;
	}
	if (!checkEmail(document.phone.email.value)) {
		window.alert("请输入联系方式");
		document.form1.phone.focus();
		return false;
	}
	if (document.form1.address.value === "") {
		window.alert("请输入家庭地址！");
		document.form1.address.focus();
		return false;
	}
	 else
		return true;
}

function checkinfoeditform(){
if(document.form1.passwordold.value===""){
window.alert("请输入原始密码！");
document.form1.passwordold.focus();
return false;
}if(document.form1.passwordnew.value===""){
window.alert("请输入新密码！");
document.form1.passwordnew.focus();
return false;
}if(document.form1.passwordConfirm.value===""){
window.alert("请再次输入新密码！");
document.form1.passwordConfirm.focus();
return false;
}else{
window.location.href="home.htm";
} 
}

function checkcredit(){
var creditVal=trim(document.form1.credit.value);
if(creditVal===""){
		window.alert("请输入积分数！");
		return false;
}	
if(checkIsNum(creditVal)){
	window.alert("您使用了"+creditVal+"个积分！");
	}else{
		window.alert("积分数必须为大于0的整数！");	
		document.form1.credit.value="";
		document.form1.credit.focus();
	}
/*var creditVal=trim(document.form1.credit.value);
var zero=0;
if(creditVal===""){
		return true;
}
if(creditVal!=""&& creditVal<=0){
	window.alert("请输入大于0的数字！");
	document.form1.credit.value="";
	document.form1.credit.focus();
	return false;
	}if(creditVal!=""&& creditVal>0){
		if(!isInteger(creditVal)){
		  window.alert("请输入整数！ ");
		 document.form1.credit.value="";
	      document.form1.credit.focus();
	      return false;
		}if(creditVal.indexOf("0")===zero){
		window.alert("格式不正确！");
		document.form1.credit.value="";
	      document.form1.credit.focus();
		return false;
		}else{
		   window.alert("您使用了 "+creditVal+"个积分！");
	       return true;	
		}	
	
	}
	else{
		window.alert("请输入数字！");
		document.form1.credit.value="";
		document.form1.credit.focus();
		return false;
	}*/
}

function checkitemno(){
	var itemNo1=trim(document.form1.itemNo1.value);
	var itemNo2=trim(document.form1.itemNo2.value);
if(itemNo1===""||itemNo2===""){
		window.alert("请输入商品数量！");
		return false;
}	
if(checkIsNum(itemNo1)&&checkIsNum(itemNo2)){
	window.alert("更新成功！");
	}else{
		window.alert("商品数量必须为大于0的整数！");			
	}
}

function checkaddressdaohang(){
if(document.form1.name.value===""){
window.alert("请输入用户名！");
document.form1.name.focus();
return false;
}if(document.form1.address.value===""){
window.alert("请输入地址！");
document.form1.address.focus();
return false;
}if(document.form1.phone.value===""){
window.alert("请输入手机号码！");
document.form1.phone.focus();
return false;
}if(!checkTel(document.form1.phone.value)){
 window.alert("手机号码格式不对！");
 document.form1.phone.value="";
document.form1.phone.focus();
return false;
}else{
window.location.href="address_daohang.htm";
} 

}

//以下是辅助函数

//判断是不是数字
function isDigit(num) {

    var string="1234567890";

    if (string.indexOf(num) != -1) {

        return true;

    }

    return false;

}

//判断是不是整数
function isInteger(val) {

    for (var i=0; i < val.length; i++) {

    if (!isDigit(val.charAt(i))) { return false; }

    }

    return true;

}
//去左空格; 
function ltrim(s){ 
return s.replace( /^\s*/, ""); 
} 
//去右空格; 
function rtrim(s){ 
return s.replace( /\s*$/, ""); 
} 
//去左右空格; 
function trim(s){ 
return rtrim(ltrim(s)); 
}

//将表单提交的数据去除空格后，判断数据是否为大于0的整数
function checkIsNum(str){
var strTrim=trim(str);
var zero=0;
if(strTrim!=""&& strTrim<=0){
	
	return false;
	}if(strTrim!=""&& strTrim>0){
		if(!isInteger(strTrim)){
         return false;
		}if(strTrim.indexOf("0")===zero){
		
		return false;
		}else{		
	       return true;	
		}	
	
	}else{
			return false;
	}
}
// 判断字符串是否每个字符均为数字
function checkNumStr(msg ){

 var norma = "0123456789"; 

 //msg = trim(msg); 

 for (var i=0; i<msg.length; i++) 

 {

  var temp = "" + msg.substring(i, i+1);

  if (norma.indexOf(temp) <0)

  {

   return  false;

  }

 }

 return true;

 

}



//检查手机号码格式是否正确
function checkTel(tel){
//var str1="13";
//var str2="15";
if(!checkNumStr(tel)){		
		return false;
}//包含不是数字的字符
if(tel.length!=11){
  return false;
}//位数不为11
if(tel.substring(0,2).indexOf("13",0)<0&&tel.substring(0,2).indexOf("15",0)<0){
   return false;//不是以13或者15开头
}else{
   return true;
}

}
//判断邮箱地址是否有效
function checkEmail(email){
var pos1=email.indexOf("@",0);
 var   pos2 = email.indexOf(".",0);
//var   pos3 = email.lastIndexOf("@");
    // var   pos4 = email.lastIndexOf(".");
	if ((pos1 <= 0)||(pos1 === email.length)||(pos2 <= 0)||(pos2 === email.length))                
         return false;
       else
	     return true;

/*if(email.indexOf("@",0)<0){
	return false;
}
if(email.indexOf)
*/
}
}