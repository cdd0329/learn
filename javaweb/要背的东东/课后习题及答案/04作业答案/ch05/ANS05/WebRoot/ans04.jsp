<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script type="text/javascript">
function usu(){
var yf1=document.getElementById("yf").value;
var sf1=document.getElementById("sf").value;
var x=sf1-yf1;
var num100=parseInt(x/100);
x=x%100;
var num50=parseInt(x/50);
x=x%50;
var num20=parseInt(x/20);
x=x%20;
var num10=parseInt(x/10);
x=x%10;
var num5=parseInt(x/5);
x=x%5;
var num1=x;
var str="";
if(num100>0){
str=str+"100元："+num100+"张.   ";
}
if(num50>0){
str=str+"50元："+num50+"张.   ";
}
if(num20>0){
str=str+"20元："+num20+"张.   ";
}
if(num10>0){
str=str+"10元："+num10+"张.   ";
}
if(num5>0){
str=str+"5元："+num5+"张.   ";
}
if(num1>0){
str=str+"1元："+num1+"张.   ";
}
alert(str);
document.getElementById("jg").html=str;
}</script>
</head>
<body>
应付：<input type="text" id="yf"/>
实付：<input type="text" id="sf"/>
<input type="button" value="确认" onclick="usu()"/>
找零：<div id="jg"></div>
</body>
</html>