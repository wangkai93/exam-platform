<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'exam.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <LINK rel="stylesheet" href="./webep/css/style.css" type="text/css">
  </head>
  
  <body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <SCRIPT language="JavaScript1.2" src="./webep/js/coolmenus4.js"></SCRIPT>
    <SCRIPT language="JavaScript1.2" src="./webep/js/cm_addins.js"></SCRIPT>
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="pagetop">
					<TR>
						<TD width="420" nowrap class="headerLogo"><IMG src="./webep/logo.gif"><IMG src="./webep/logo_js.gif">
						</TD>
						<TD class="welcome">
						</TD>
						<TD width="187" align="right" nowrap class="headerHelp">
							<TABLE border="0" cellpadding="4" cellspacing="2">
								<TR>
									<TD align="center" class="sys"><A href="./Index.htm" class="syslink">退出登录</A> <A href="password.htm" class="syslink">修改密码</A>
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
					<TR>
						<TD height="24" class="menuMain">
							<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
								<TR>
									<TD>	&nbsp;
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD height="2" class="menuBl1"><IMG src="../webep/space.gif" width="1" height="1"></TD>
					</TR>
					<TR>
						<TD height="3" class="menuBl2"><IMG src="../webep/space.gif" width="1" height="1"></TD>
					</TR>
				</TABLE>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
					<TR>
						<TD><IMG src="../webep/space.gif" width="778" height="1"></TD>
					</TR>
				</TABLE>
<P>
<SCRIPT language=JavaScript1.2>showMenu("","../../exam-platform",2);
</SCRIPT>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#999999">
					<TR>
						<TD><IMG src="../webep/space.gif" width="1" height="1"></TD>
					</TR>
				</TABLE>
			</TD>
		</TR>
	</TABLE><BR>
	<TABLE width="750" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD width="20">	&nbsp;
			</TD>
			<TD align="left" valign="top">
				<TABLE border="8" class="top" width="98%">
					<TR>
						<TD class="FormTitle" height="2" width="100%"><B>试卷预览(题目总数：50)</B>
						</TD>
					</TR>
					
					<TR bordercolor="#ffffff" >
						<TD height="400">
							<TABLE border="0" width="100%">
								<TR>
									<TD valign="top" height="500" width="100%">
		   <!-- 页面载入 -->		       <jsp:include page="examPage.jsp" flush="true" />
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD><IMG src="../webep/space.gif" width="1" height="1"></TD>
					</TR>
					<tr>
					<td align="right">
					<INPUT type="Button" class="button" name="commit" value=" 重新生成 " onclick="save()">
	                <INPUT type="Button" class="button" name="commit" value=" 打 印 " >
	                <INPUT type="Button" class="button" name="commit" value=" 返回 " onclick="javascript:history.back(-1)">
					</td></tr>
				</TABLE>
			</TD>
		</TR>
	
	</TABLE><BR>
 									
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD class="pagefootTl"><IMG src="../webep/space.gif" width="778" height="1"></TD>
		</TR>
		<TR>
			<TD height="25" class="pagefoot"><FONT face="Arial, Helvetica, sans-serif">&copy;</FONT> 2005-2007  版权所有 软通动力信息技术有限公司 Powered by 软通动力武汉开发中心
			</TD>
		</TR>							
	</TABLE>

  </body>
</html>
<SCRIPT language="JavaScript">function save()
{	
	if(confirm("确定要重新生成吗？"))
	{
		alert("重新生成成功！"); 
		document.location.href='examProject/exam.jsp';
	}
}
function commit()
{	
	if(confirm("确定提交答卷吗？"))
	{
		alert("答卷提交成功！"); 
		document.location.href='./login_s.htm'; 
	}
}
</SCRIPT>