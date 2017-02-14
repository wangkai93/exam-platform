<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>iSoftStone培训中心考试平台</TITLE>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK rel="stylesheet" href="webep/css/style.css" type="text/css">
<DIV id="sending"
	style="position:absolute; top:320; left:20; z-index:10; visibility:hidden">
	<TABLE width="100%" border="0" cellspacing="0" cellpadding="0">
		<TR>
			<TD width="30%"></TD>
			<TD bgcolor="#ff9900">
				<TABLE width="100%" height="70" border="0" cellspacing="2"
					cellpadding="0">
					<TR>
						<TD bgcolor="#eeeeee" align="center">正在读取试题, 请稍候...</TD>
					</TR>
				</TABLE></TD>
			<TD width="30%"></TD>
		</TR>
	</TABLE>
</DIV>
<DIV id="cover"
	style="position:absolute; top:0; left:0; z-index:9; visibility:hidden">
	<TABLE width="100%" height="600" border="0" cellspacing="0"
		cellpadding="0">
		<TR>
			<TD align="center"><BR></TD>
		</TR>
	</TABLE>
</DIV>
<SCRIPT language=javascript>
	function showSending() {
		gnIsShowSending = 1;
		sending.style.visibility = "visible";
		cover.style.visibility = "visible";
	}
</SCRIPT>
</HEAD>
<BODY bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0">

	<SCRIPT language="JavaScript1.2" src="webep/js/coolmenus4.js"></SCRIPT>
	<SCRIPT language="JavaScript1.2" src="webep/js/cm_addins.js"></SCRIPT>
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
					class="pagetop">
					<TR>
						<TD width="420" nowrap class="headerLogo"><IMG
							src="webep/logo.gif"><IMG src="webep/logo_js.gif"></TD>
						<TD class="welcome"></TD>
						<TD width="187" align="right" nowrap class="headerHelp">
							<TABLE border="0" cellpadding="4" cellspacing="2">
								<TR>
									<TD align="center" class="sys"><A href="Index.htm"
										class="syslink">退出登录</A> <A href="password.htm"
										class="syslink">修改密码</A></TD>
								</TR>
							</TABLE></TD>
					</TR>
				</TABLE>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
					<TR>
						<TD height="24" class="menuMain">
							<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
								<TR>
									<TD>&nbsp;</TD>
								</TR>
							</TABLE></TD>
					</TR>
					<TR>
						<TD height="2" class="menuBl1"><IMG src="webep/space.gif"
							width="1" height="1">
						</TD>
					</TR>
					<TR>
						<TD height="3" class="menuBl2"><IMG src="webep/space.gif"
							width="1" height="1">
						</TD>
					</TR>
				</TABLE>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
					<TR>
						<TD><IMG src="webep/space.gif" width="778" height="1">
						</TD>
					</TR>
				</TABLE>
				<P>
					<SCRIPT language=JavaScript1.2>
						
					</SCRIPT>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
					bgcolor="#999999">
					<TR>
						<TD><IMG src="webep/space.gif" width="1" height="1">
						</TD>
					</TR>
				</TABLE></TD>
		</TR>
	</TABLE>
	<BR>
<form name="form1" action="update_TbUser.action"  method="post">
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD width="20">&nbsp;</TD>
			<TD align="left" valign="top">
			
				<TABLE border="0" class="top" width="700">
					<TR>
						<TD class="FormTitle" height="2" width="100%"><B>密码修改</B></TD>
					</TR>
					<TR>
						<TD>&nbsp;</TD>
					</TR>
					
					<TR>
						<TD>
							
								<TABLE align="center" border="0" width="90%">
									<TR>
										<TD height="20" width="1%"></TD>
										<TD width="12%">用户帐号：</TD>
										<TD><s:property value="userName" /></TD>
									</TR>
									<TR>
										<TD height="20"></TD>
										<TD>当前密码：</TD>
										<TD><INPUT class="box" name="userPass" size="20"
											maxLength="20"  type="Password"></TD>
									</TR>
									<TR>
										<TD height="20"></TD>
										<TD>新密码：</TD>
										<TD><INPUT class="box" name="newpass" size="20"
											maxLength="20"  type="Password"></TD>
									</TR>
									<TR>
										<TD height="20"></TD>
										<TD>确认新密码：</TD>
										<TD><INPUT class="box" name="newpass1" size="20"
											maxLength="20" value="" type="Password"></TD>
									</TR>
								</TABLE>
						</TD>
					</TR>
					<TR>
						<TD>
							<HR width="98%"></TD>
					</TR>
					<TR>
						<TD>
							<TABLE align="center" border="0" width="90%">
								<TR>
									<TD align="right"><input class=button type=button
										name="bsave" value=" 更 新 " onclick="mySubmit()"> 
										<s:submit action="update_TbUser" method="update"/>
										<input class=button type=button name="bsave" value=" 返 回 "
										onclick="javascript:history.back(-1)"></TD>
								</TR>
							</TABLE>
							
							</TD>
					</TR>
					
					<TR>
						<TD>&nbsp;</TD>
					</TR>
				</TABLE>
				
				</TD>
		</TR>
	</table>
	</form>
	<BR>
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD class="pagefootTl"><IMG src="../webep/space.gif" width="778"
				height="1">
			</TD>
		</TR>
		<TR>
			<TD height="25" class="pagefoot"><FONT
				face="Arial, Helvetica, sans-serif">&copy;</FONT> 2005-2007 版权所有
				软通动力信息技术有限公司 Powered by 软通动力武汉开发中心</TD>
		</TR>
	</TABLE>
</BODY>
</HTML>
<SCRIPT language="JavaScript">
	function commit() {
		if (confirm("确定修改密码吗?")) {
			alert("更新密码成功!");
			document.location.href = 'javascript:history.back(-1)';
		}
	}
	function mySubmit() {
		if (document.form1.userPass.value == "") {
			alert("请输入原密码！");
			document.form1.userPass.focus();
			return false;
		}
		if(document.form1.userpass.value!=userPassword){
		alert("原密码不正确！");
		document.form1.userpass.focus();
			return false;
		}
		if (document.form1.newpass.value == "") {
			alert("新密码不能为空，请输入新密码！");
			document.form1.newpass.focus();
			return false;
		}

		if (document.form1.newpass1.value == "") {
			alert("请输入确认新密码！");
			document.form1.newpass1.focus();
			return false;
		}
		if (document.form1.newpass.value != document.forms1.newpass1.value) {
			alert("输入的两次新密码不一致，请重新输入！");
			document.form1.newpass.focus();
			return false;
		}

		document.forms1.submit();
	}
</SCRIPT>