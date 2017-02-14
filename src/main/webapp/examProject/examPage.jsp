<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>iSoftStone培训中心考试平台</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <LINK rel="stylesheet" href="../webep/css/style.css" type="text/css">
  </head>
  
  <body>
        <% int i=1;%>
    <ul style="background-color:#F0F8FF" >
      <s:iterator value="" var="vo">
         <li style="background-color:#C5E7F8"><STRONG>第
             <%=i%>
                                  题</STRONG></li><br>
         <s:checkboxlist list="" name="answer<%=i%>" />
        
             <%i++;%>             
      </s:iterator>
    </ul>
    
  </body>
</html>
