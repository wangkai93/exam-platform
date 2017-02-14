<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<script language="JavaScript">
window.focus();
</script>


<script language="JavaScript">
function keyDown(DnEvents) 
{ 
	k =  window.event.keyCode;
	if (k == 27)
	{  
		try
		{
			parent.opener.document.all.examClass.focus();
			self.close();	
		}
		catch(e)
		{}
	}
}
document.onkeydown = keyDown;
</script>	

<script language=javascript>
//初始化
 window.onload()
{
	try
	{
	    rdo1.focus();
	    rdo1.checked = true;
	}
	catch(e)
	{}
}
</script>
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
   <link rel="stylesheet" href="./webep/css/style.css" type="text/css">
  </head>
  
  <body bgcolor="#FFFFFF" leftmargin="5" topmargin="5" marginwidth="5" marginheight="5">
   
   <table width="100%" border="1" name="table" class="ItemList" cellspacing="1">
    <tr bordercolor="#999999">
      	<td width="3%" height="26" class="ItemTitle">&nbsp;</td>
		<td class="ItemTitle">
			<div align="center"><b>用户姓名</b></div>
		</td>
		<td class="ItemTitle">
			<div align="center"><b>性别</b></div>
		</td>
		<td class="ItemTitle">
			<div align="center"><b>E-mail地址</b></div>
		</td>
		<td class="ItemTitle">
			<div align="center"><b>用户类型</b></div>
		</td>
		<td class="ItemTitle">
			<div align="center"><b>录入日期</b></div>
		</td>
		
    </tr>
    <!--用户列表 -->
   <s:iterator>
    <tr bordercolor="#999999">
	  <td class="ItemBody"><input type="radio" name="rdo" id="rdo1" onkeydown='if(event.keyCode==13) self.close();'></td>
      	<td class="ItemBody"><A href="#" onClick='self.close();'>
      	         <div align="center"><s:property value="userName"/></div></A></td>
		<td class="ItemBody"><div align="center"><s:property value="userSex"/></div></td>
		<td class="ItemBody"><div align="center"><s:property value="userEmail"/></div></td>
		<td class="ItemBody"><div align="center"><s:property value="userType"/></div></td>
		<td class="ItemBody"><div align="center"><s:property value="userIndate"/></div></td>
    </tr>
    </s:iterator>
    <tr>
	<TABLE>
	<TR align="right" class="ItemBody" >
	<TD colSpan=9 height=1>
	     <s:form action="examPlanMangerAction!getUsers" method="post">
            <TABLE border=0 cellPadding=0 cellSpacing=3 class=SearchBar 
            height=20 width="135%">
              <TR>
                <TD height=20 width=1100>
                    <DIV align=right> 
                      <P><B>第 
                        <input type="text" name="QueryPageNo" size="3" class="SearchBar_Page">
                                                                        页 / 共
                          <s:property value=""/>
                                                                            页 
                        <input type="submit" name="btnGo" value="go" class="SearchBar_Btn"><!-- 提交 -->
                        <!--首页 -->
                        <a href="<%=basePath%>examPlanMangerAction!getUsers.action?name=btnFirst" style="text-decoration:none">|&lt;</a>
                        <!--上一页 -->
                        <a href="<%=basePath%>examPlanMangerAction!getUsers.action?name=btnPrevious" style="text-decoration:none">&lt;</a>
                        <!--下一页 -->
                        <a href="<%=basePath%>examPlanMangerAction!getUsers.action?name=btnNext" style="text-decoration:none">&gt;</a>
                        <!--尾页 -->
                        <a href="<%=basePath%>examPlanMangerAction!getUsers.action?name=btnEnd" style="text-decoration:none">&gt;|</a>
                   <SPAN class=SearchBar></SPAN></B></P>
                  </DIV></TD></TR>
                  </TABLE>
               </s:form>
				  </TD>
					</TR>
					</TABLE>
					</tr>
</table>
  </body>
</html>
