<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<HTML>
<HEAD>
<TITLE>iSoftStone培训中心考试平台</TITLE>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8"><LINK rel="stylesheet" href="../webep/css/style.css" type="text/css">
</HEAD>
<BODY bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<SCRIPT language="JavaScript1.2" src="../webep/js/coolmenus4.js"></SCRIPT>
<SCRIPT language="JavaScript1.2" src="../webep/js/cm_addins.js"></SCRIPT>
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="pagetop">
					<TR>
						<TD width="420" nowrap class="headerLogo"><IMG src="../webep/logo.gif"><IMG src="../webep/logo_js.gif">
						</TD>
						<TD class="welcome">
						</TD>
						<TD width="187" align="right" nowrap class="headerHelp">
							<TABLE border="0" cellpadding="4" cellspacing="2">
								<TR>
									<TD align="center" class="sys"><A href="../Index.htm" class="syslink">退出登录</A> <A href="password.htm" class="syslink">修改密码</A>
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
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD width="20">	&nbsp;
			</TD>
			<TD align="left" valign="top">
				<TABLE border="0" class="top" width="700">
					<TR>
						<TD class="FormTitle" height="2" width="100%"><B>用户维护</B>
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
   									<TD width="12%">	用户帐号：
   									</TD>
   									<TD>
										elf
										&nbsp;
									<input class=button type=button name="reset" value=" 重置密码 " onclick="reset()">
   									
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
								    <TD height="20" width="1%">
   									</TD>
									<TD width="12%">	用户姓名：
   									</TD>
   									<TD width="35%">
									<INPUT class="box" name="Discribe" size="20" maxLength="20" value="周明星" >
   									</TD>
									<TD width="12%">	录入日期：
   									</TD>
   									<TD width="35%">
									2005-10-28
   									</TD>
									<TD colspan="2">
   									</TD>
								</TR>
								   <TR>	
								   <TD height="20" width="1%">
   									</TD>
									<TD width="12%">	EMAIL地址：
   									</TD>
   									<TD width="50%">
									<INPUT class="box" name="Discribe" size="20" maxLength="20" value="susan@163.com" >&nbsp;&nbsp;如：susan@isoftstone.com
   									</TD>
									<TD colspan="2">
   									</TD>
   								</TR>
								<TR>
								    <TD height="20">
   									</TD>
									<TD>	性别：
   									</TD>
   									<TD>
				 <input type="Radio" name="sex" checked>男&nbsp;&nbsp; <input type="Radio" name="sex">女
   									</TD>
									<TD colspan="2">
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
   									<TD height="20" width="1%">
   									</TD>
									<TD width="12%">	用户类型：
   									</TD>
   									<TD width="50%">
									<input type="Radio" name="userType" checked>讲师&nbsp;&nbsp;<input type="Radio" name="userType">班主任&nbsp;&nbsp;<input type="radio" name="userType">教务主任&nbsp;&nbsp;<input type="radio" name="userType">一般用户
   									</TD>
									<TD colspan="2">
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
										<input class=button type=button name="bsave" value=" 更 新 " onclick="commit()">
										<input class=button type=button name="bsave" value=" 删 除 " onclick="toDelete()">
										<input class=button type=button name="bsave" value=" 返 回 " onclick="next()">
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD>	&nbsp;
						</TD>
					</TR> 
				</TABLE>
			</TD>
		</TR>
</table>
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr><td><br></td></tr>
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
<SCRIPT language="JavaScript">function commit()
{	
	if(confirm("确定更新用户吗？"))
	{
		alert("更新成功！"); 
		document.location.href='userSetting.htm'; 
	}
}
function toDelete()
{	
	if(confirm("确定删除用户吗？"))
	{
		alert("删除成功！"); 
		document.location.href='userSetting.htm'; 
	}
}
function next()
{	
	document.location.href='userSetting.htm'; 
}
function reset()
{
	if(confirm("确定重置吗？"))
	{
		alert("重置成功！"); 
		document.location.href='userSetting3.htm'; 
	}
}
</SCRIPT>
