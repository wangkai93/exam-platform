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
						<TD class="FormTitle" height="2" width="100%"><B>班级维护</B>
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
										<font color="#808080">ISSTCWH_J001</font>
									</TD>
								</TR>
								<TR>
									<TD height="20">
									</TD>
									<TD>	班级名称：
									</TD>
									<TD>										
										<INPUT class=box name="gradeName" size=20 maxLength=20 value="java 四班">
									</TD>
								</TR>
								<TR>
									<TD height="20">
									</TD>
									<TD>	班主任：
									</TD>
									<TD>										
										<INPUT class="box" name="Discribe" size="20" maxLength="20" value="周明星" readonly="true">&nbsp;<a href=#><img name="button" src='../webep/graphics/icon.gif' border=0 onclick="window.open('../magnifier/ShowMagnifierZoom.htm', 'SelectAnything', 'toolbar=no,menubar=no,resizable=no,location=no,width=520,height=450,scrollbars=yes', false);"></a>
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
									<TD width="12%">	创建日期：
									</TD>
									<TD width="35%">										
										<font color="#808080">2005-11-28 </font>
									</TD>
									<TD width="12%">	班级状态：
									</TD>
									<TD>										
										<font color="#808080">已开班</font>
									</TD>
								</TR>
								<TR>
									<TD height="20" width="1%">
   									</TD>
									<TD width="12%">	班级类型：
   									</TD>
   									<TD width="60%">
									<select name="classType" >				
				<option value='1'>社会培训</option>
				<option value='2' selected>校企合作</option>
				<option value='3'>员工培训</option>
				<option value='4'>远程培训</option>
				</select>
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
									<TD width="12%">	班级描述：
									</TD>
									<TD colspan="2">	<TEXTAREA class=box cols="70%" name="question" rows=5>此班级包含学生30名，全部为武汉工程大学大四学生。</TEXTAREA> 
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
										<input class=button type=button name="bsave" value=" 结 业 " onclick="save()">
										<input class=button type=reset name="bsave" value=" 删 除 " onclick="toDelete()">
										<input class=button type=reset name="bsave" value=" 返 回 " onclick="next()">
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
<SCRIPT language="JavaScript">function next()
{	
	document.location.href='classQuery.jsp'; 
}
function commit()
{	
	if(confirm("确定更新班级吗？"))
	{
		alert("更新成功！"); 
		document.location.href='classQuery.jsp'; 
	}
}
function save()
{	
	if(confirm("确定结业吗？"))
	{
		alert("结业成功！"); 
		document.location.href='classQuery.jsp'; 
	}
}
function toDelete()
{	
	if(confirm("确定删除班级吗？"))
	{
		alert("删除成功！"); 
		document.location.href='classQuery.jsp'; 
	}
}

</SCRIPT>