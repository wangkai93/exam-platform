<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

	
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>iSoftStone培训中心考试平台</TITLE>
<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
						<TD class="FormTitle" height="2" width="100%"><B>学生新增―第二步（共二步）</B>
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
   									<TD width="12%">	班级编号：
   									</TD>
   									<TD>
										ISSTCWH_J002
   									</TD>
									
   								</TR>
								<tr>
								   <TD height="20" width="1%">
   									</TD>
   									<TD width="12%">	班级名称：
   									</TD>
   									<TD>
										java 四班
   									</TD>
								</tr>
								<tr>
								   <TD height="20" width="1%">
   									</TD>
   									<TD width="12%">	班级类型：
   									</TD>
   									<TD>
										社会培训
   									</TD>
								</tr>
								<TR>
								    <TD height="20" width="1%">
   									</TD>
   									<TD width="12%">	学生帐号：
   									</TD>
   									<TD>
										<INPUT class="box" name="Discribe" size="20" maxLength="20" value="" type="Text">
   									</TD>
   								</TR>
								<TR>
								    <TD height="20">
   									</TD>
								    <TD>	初始密码：
   									</TD>
   									<TD>
									<INPUT class="box" name="Discribe" size="20" maxLength="20" value="123123" type="Text"  disabled>
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
									<TD width="12%">	学生姓名：
   									</TD>
   									<TD width="35%">
									<INPUT class="box" name="Discribe" size="20" maxLength="20" value="" >
   									</TD>
									<TD width="12%">	学生类型：
   									</TD>
									<TD>										
				<select name="studentType" >
				<option value='1' selected>请选择 </option>
				<option value='2'>统招生 </option>
				<option value='3'>插班生 </option>
				</select>
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
									<TD align="right">
										<input class=button type=button name="bsave" value=" 增 加 " onclick="create()">
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
		<TR>
			<TD>
<HR width="98%"><br>
			</TD>
		</TR>
		<tr><td></td>
		</tr></table>
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
<SCRIPT language="JavaScript">function create()
{	
	if(confirm("确定增加新学生吗？"))
	{
		alert("增加成功！"); 
		document.location.href='studentAdd1.jsp'; 
	}
}

function next()
{	
	document.location.href='studentAdd.jsp'; 
}
</SCRIPT>