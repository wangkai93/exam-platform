<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <table border="1" bordercolor="red">
 <s:iterator var="tp" value="tps">
  <tr>
     <td><s:property value="#tp.policyId"/></td>
     <td><s:property value="#tp.tbThemeType.thetypeName"/></td>
     <td><s:property value="#tp.tbThemeArea.theareaName"/></td>
     <td><s:property value="#tp.tbThemeDifficulty.thedifName"/></td>
     <td><s:property value="#tp.examMode."/></td>
     <td><s:property value="#tp.polId."/></td>
     <td><s:property value="#tp.polOnescore"/></td>
     <td><s:property value="#tp.polThemecount."/></td>
     <td><s:property value="#tp.polReworkmode"/></td>
     </tr>
 </s:iterator>
 </table>
</body>
</html>