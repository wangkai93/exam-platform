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
    
    <title>iSoftStone培训中心考试平台</title>
    
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
  
 <BODY bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<SCRIPT language="JavaScript1.2" src="./webep/js/coolmenus4.js"></SCRIPT>
<SCRIPT language="JavaScript1.2" src="./webep/js/cm_addins.js"></SCRIPT>
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="pagetop">
					<TR>
						<TD width="420" nowrap class="headerLogo"><IMG src="./webep/logo.gif"><IMG src="./webep/logo_js.gif"></TD>
						<TD class="welcome">
						</TD>
						<TD width="187" align="right" nowrap class="headerHelp">
							<TABLE border="0" cellpadding="4" cellspacing="2">
								<TR>
									<TD align="center" class="sys"><A href="./Index.htm" class="syslink">退出登录</A> <A href="password.htm" class="syslink">修改密码</A></TD>
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
						<TD><IMG src="../webep/space.gif" width="1" height="1">
						</TD>
					</TR>
				</TABLE>
			</TD>
		</TR>
	</TABLE><BR>
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD width="20">	&nbsp;
			</TD>
			<TD align="left" valign="top">
				<TABLE border="0" class="top" width="700">
					<TR>
						<TD class="FormTitle" height="2" width="100%"><B>考试方案信息</B>
						</TD>
					</TR>
					<TR>
						<TD>	&nbsp;
						</TD>
					</TR>
					<TR>
						<TD>
							<TABLE align="center" border="0" width="90%">
								<TR>
									<TD height="20" width="1%">
									</TD>
									<TD width="15%">	考试方案编号：
									</TD>
									<TD width="35%">										
							<INPUT class=box name="studentLib" size=20 maxLength=20 value="001" disabled>
									</TD>
									<TD width="15%">	考试方案描述：
									</TD>
									<TD width="35%">										
							<INPUT class=box name="studentName" size=20 maxLength=20 value="Java高级编程" disabled>
									</TD>
								</TR>
								<TR>
									<TD height="20" width="1%">
									</TD>
									<TD width="12%">	题库范围：
									</TD>
									<TD width="35%">										
						<INPUT class=box name="six" size=20 maxLength=20 value="Java高级－Struts" disabled>
									</TD>
									<TD width="12%">	题库难度：
									</TD>
									<TD width="35%">										
						<INPUT class=box name="classNO" size=20 maxLength=20 value="中等" disabled>
									</TD>
								</TR>
								<TR>
									<TD height="20" width="1%">
									</TD>
									<TD width="12%">	出题方式：
									</TD>
									<TD width="35%">										
						<INPUT class=box name="classNO" size=20 maxLength=20 value="自动抽取" disabled>
									</TD>
									<TD width="12%">	批阅方式：
									</TD>
									<TD width="35%">										
						<INPUT class=box name="classNO" size=20 maxLength=20 value="自动批阅" disabled>
									</TD>
								</TR>
								<TR>
									<TD height="20" width="1%">
									</TD>
									<TD width="12%">	题量：
									</TD>
									<TD width="35%">										
						<INPUT class=box name="classNO" size=20 maxLength=20 value="50" disabled>
									</TD>
								</TR>
								
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD>
<HR width="98%">
						</TD>
					</TR>
					<TR>
						<TD>
							<TABLE align="center" border="0" width="90%">
								<TR>
									<TD align="right">
										<input class=button type=button name="bsave" value=" 返 回 " onclick="javascript:history.back(-1)">
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
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
</BODY>
</HTML>
<SCRIPT language="JavaScript">function queryResult()
{	
	document.location.href='examResult.htm'; 
}
function returned()
{
	document.location.href='examProjectIssue.htm';
}
</SCRIPT>