<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<<HTML>
<HEAD>
<TITLE>iSoftStone培训中心考试平台</TITLE>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8"><LINK rel="stylesheet" href="webep/css/style.css" type="text/css">
<DIV id="sending" style="position:absolute; top:320; left:20; z-index:10; visibility:hidden">
		<TABLE width="100%" border="0" cellspacing="0" cellpadding="0">
			<TR>
				<TD width="30%">
				</TD>
				<TD bgcolor="#ff9900">
					<TABLE width="100%" height="70" border="0" cellspacing="2" cellpadding="0">
						<TR>
							<TD bgcolor="#eeeeee" align="center">	正在读取试题, 请稍候...
							</TD>
						</TR>
					</TABLE>
				</TD>
				<TD width="30%">
				</TD>
			</TR>
		</TABLE>
	</DIV>
	<DIV id="cover" style="position:absolute; top:0; left:0; z-index:9; visibility:hidden">
		<TABLE width="100%" height="600" border="0" cellspacing="0" cellpadding="0">
			<TR>
				<TD align="center"><BR>
				</TD>
			</TR>
		</TABLE>
	</DIV>
<SCRIPT language=javascript>function showSending() 
{
 	gnIsShowSending=1;
	sending.style.visibility="visible";
	cover.style.visibility="visible";
}
</SCRIPT>
</HEAD>
<BODY bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	
<SCRIPT language="JavaScript1.2" src="webep/js/coolmenus4.js"></SCRIPT>
<SCRIPT language="JavaScript1.2" src="webep/js/cm_addins.js"></SCRIPT>
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="pagetop">
					<TR>
						<TD width="420" nowrap class="headerLogo"><IMG src="webep/logo.gif"><IMG src="webep/logo_js.gif">
						</TD>
						<TD class="welcome">
						</TD>
						<TD width="187" align="right" nowrap class="headerHelp">
							<TABLE border="0" cellpadding="4" cellspacing="2">
								<TR>
									<TD align="center" class="sys"><A href="Index.htm" class="syslink">退出登录</A> <A href="pass_TbUser.action" class="syslink">修改密码</A>
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
						<TD height="2" class="menuBl1"><IMG src="webep/space.gif" width="1" height="1"></TD>
					</TR>
					<TR>
						<TD height="3" class="menuBl2"><IMG src="webep/space.gif" width="1" height="1"></TD>
					</TR>
				</TABLE>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
					<TR>
						<TD><IMG src="webep/space.gif" width="778" height="1"></TD>
					</TR>
				</TABLE>
<P>
<SCRIPT language=JavaScript1.2>showMenu("","../exam-platform",2);
</SCRIPT>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#999999">
					<TR>
						<TD><IMG src="webep/space.gif" width="1" height="1"></TD>
					</TR>
				</TABLE>
			</TD>
		</TR>
	</TABLE><BR>
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
	<!--  
			<TR align="center">
						<TD width="100%" colspan="3">
						<input class=button type=reset name="bsave" value=" 教务主任 " onclick="login1()">
						<input class=button type=reset name="bsave" value=" 班主任 " onclick="login2()">
						<input class=button type=reset name="bsave" value=" 讲师 " onclick="login3()">
						<input class=button type=reset name="bsave" value=" 一般用户 " onclick="login4()">
						<input class=button type=reset name="bsave" value=" 管理员 " onclick="login5()">
						</TD>
					</TR>-->
		<TR>
			<TD width="250" valign="top">
				<TABLE align="center" border="0" class="top" height="217" width="210">
					<TR>
						<TD class="FormTitle" height="2" width="100%"><B>个人信息</B>
						</TD>
					</TR>
					<TR>
						<TD height="200" width="100%">
							<TABLE align="center" border="1" bordercolor="#999999" height="190" width="99%">
							
								<TR bordercolor="#eaeaea">
									<TD>	姓名：<s:property value="userName"/>
									</TD>
								</TR>
								<TR bordercolor="#eaeaea">
									<TD>	性别：<s:property value="userSex"/>
									</TD>
								</TR>
								<TR bordercolor="#eaeaea">
									<TD>	帐户号：<s:property value="userAccount"/>
									</TD>
								</TR>
								<TR bordercolor="#eaeaea">
									<TD>	帐户类型：<s:property value="userType"/>
									</TD>
								</TR>
								<TR bordercolor="#eaeaea">
									<TD>	上次登陆时间：
									</TD>
								</TR>
								<TR bordercolor="#eaeaea">
									<TD align="center">	<s:property value="userLasttime"/>
									</TD>
								</TR>
								
							</TABLE>
						</TD>
					</TR>
				</TABLE>
			</TD>
			<TD width="20">	&nbsp;
			</TD>
			<TD align="left" valign="top">
				<TABLE border="0" class="top" height="217" width="700">
					<TR>
						<TD class="FormTitle" height="2" width="100%"><B>管理信息</B>
						</TD>
					</TR>
					<TR >
						<TD align="cneter" height="2" width="100%">
						<table align="center">
						<TR >
						<Td >
						<h1><B>欢迎访问isoftstone培训中心考试平台</B></h1>
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
<SCRIPT language="JavaScript">
function gradeCheck()
{	
	document.location.href='#'; 
}
function queryResult()
{	
	if(confirm("考试前请先阅读\"考试指南\"！\n确认参加考试吗？"))
	{
		showSending();
		document.location.href='#'; 
	}
}
</SCRIPT>
<!--  
<SCRIPT language="JavaScript">
function login1()
{	
		document.location.href='loginjiaowuzhuren.htm'; 
	
}function login2()
{	
		document.location.href='loginbanzhuren.htm'; 
	
}function login3()
{	
		document.location.href='loginteacher.htm'; 
	
}function login4()
{	
		document.location.href='loginyiban.htm'; 
	
}function login5()
{	
		document.location.href='login_a.htm'; 
	
}
</SCRIPT>
-->