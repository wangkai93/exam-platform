<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

  </head>
  
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
									<TD>&nbsp;	
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
			<TD width="20">&nbsp;	
			</TD>
			<TD align="left" valign="top">
				<TABLE border="0" class="top" width="700">
					<TR>
						<TD class="FormTitle" height="2" width="100%"><B>考试方案撤销</B>
						</TD>
					</TR>
					<TR>
						<TD>&nbsp;	
						</TD>
					</TR>
					<TR>
						<TD>
							<TABLE align="center" border="0" width="90%">
								<TR>
									<TD height="20" width="1%">
									</TD>
									<TD width="14%">	考试方案编号：
									</TD>
									<TD>										
										<font color="#808080">QS20051128001</font>
										
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										考试方案名称：
										<font color="#808080">基础考试</font>
									</TD>
								</TR>
								<TR>
								   <TD height="20" width="1%">
									</TD>
									</TD>
									<TD width="12%">	录入人：
									</TD>
									<TD>									
										<font color="#808080">周明星</font>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录入日期：
																
										<font color="#808080">2005-12-09</font>
									</TD>
									</TR>
									<TR>
								   <TD height="20" width="1%">
									</TD>
									</TD>
									<TD width="12%">	批阅方式：
									</TD>
									<TD>									
										<font color="#808080">老师批阅</font>
										
									</TD>
									</TR>	
								<TR>
									<TD height="20">
									</TD>
									<TD>	考试方案描述：
									</TD>
									<TD>
<TEXTAREA class=box cols=40 name="txtAddress" rows=3  disabled></TEXTAREA> 
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
						<TD valign="top">
		<TABLE align="center" width="97%" border="0">
							<TR>
									<TD height="30">考试方案策略：
									</TD>
								</TR>
								<TR>
									<TD height="40" width="96%" valign="top">
							<TABLE align="center" border="0" class="ItemList" height="20" width="96%">
								<TR height="24" align="middle">
												
												<TD class="ItemTitle" width="5%">	序号
												</TD>
												<TD class="ItemTitle" width="17%">	题目范围
												</TD>
												<TD class="ItemTitle" width="9%">	题目难度
												</TD>
												<TD class="ItemTitle" width="10%">	题目类型
												</TD>
												<TD class="ItemTitle" width="10%">	出题方式
												</TD>
												<TD class="ItemTitle" width="18%">	批阅方式
												</TD>
												<TD class="ItemTitle" width="8%">	每题分数
												</TD>
												<TD class="ItemTitle" width="8%">	题量
												</TD>
												
												<TD class="ItemTitle" width="8%">	分数合计
												</TD>
											</TR>
											<TR align="middle" class="ItemBody">
												
												<TD class="ItemBody"><a href="examSchemeQuery4.htm">1</a>
												</TD>
												<TD class="ItemBody" align="left">	Java基础－语法
												</TD>
												<TD class="ItemBody">	容易
												</TD>
												<TD class="ItemBody">	选择题
												</TD>
												<TD class="ItemBody">	自动抽取
												</TD>
												<TD class="ItemBody" align="left">	自动披阅
												</TD>
												<TD class="ItemBody" align="right">	1
												</TD>
												<TD class="ItemBody" align="right">	20
												</TD>
												
												<TD class="ItemBody" align="right">	20
												</TD>
											</TR>
											<TR align="middle" class="ItemBody">
												
												<TD class="ItemBody">	<a href="examSchemeQuery4.htm">2</a>
												</TD>
												<TD class="ItemBody" align="left">	Java高级－Struts
												</TD>
												<TD class="ItemBody">	中等
												</TD>
												<TD class="ItemBody">	选择题
												</TD>
												<TD class="ItemBody">	手动指定
												</TD>
												<TD class="ItemBody" align="left">	自动批阅＋老师批阅
												</TD>
												<TD class="ItemBody" align="right">	3
												</TD>
												<TD class="ItemBody" align="right">	10
												</TD>
												
												<TD class="ItemBody" align="right">	30
												</TD>
											</TR>
											<TR align="middle" class="ItemBody">
												
												<TD class="ItemBody">	<a href="examSchemeQuery4.htm">3</a>
												</TD>
												<TD class="ItemBody" align="left">	Java高级－EJB
												</TD>
												<TD class="ItemBody">	较难
												</TD>
												<TD class="ItemBody">	选择题
												</TD>
												<TD class="ItemBody">	手动指定
												</TD>
												<TD class="ItemBody" align="left">	老师批阅
												</TD>
												<TD class="ItemBody" align="right">	5
												</TD>
												<TD class="ItemBody" align="right">	10
												</TD>
												
												<TD class="ItemBody" align="right">	50
												</TD>
											</TR>
											<TR align="middle" class="ItemBody">
												<TD class="ItemBody" height="20" colspan="7"><b>合  计</b>
												</TD>
												
												<TD class="ItemBody" align="right">	<b>40</b>
												</TD>
												
											<TD class="ItemBody" align="right">	<b>100</b>
												</TD>
											</TR>
											
							</TABLE>
				</TD>
								</TR>
								<TR>
						<TD>
<HR width="100%">
						</TD>
					</TR>
					<TR>
						<TD>
							<TABLE align="center" border="0" width="90%">
								<TR>
								   <TD height="20" width="1%">
									</TD>
									</TD>
									<TD width="12%">	审核人：
									</TD>
									<TD>									
										<font color="#808080">周明星</font>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;审核时间：
																
										<font color="#808080">2005-12-09</font>
									</TD>
									</TR>
								<TR>
									<TD height="20">
									</TD>
									<TD width="12%">	审核意见：
									</TD>
									<TD>
                                    <font color="#808080">题目结构不合理！</font>
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
								<TR>
						<TD>
<HR width="100%">
						</TD>
					</TR>
					<TR>
						<TD>
							<TABLE align="center" border="0" width="90%">
								
								<TR>
									<TD height="20">
									</TD>
									<TD width="12%">	撤消意见：
									</TD>
									<TD>
<TEXTAREA class=box cols=40 name="txtAddress" rows=3></TEXTAREA> 
									</TD>
								</TR>
							</TABLE>
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
										<input class=button type=button name="bsave" value=" 撤 销 " onClick="toPass()">
										<INPUT class="button" type="button"  name="search" value=" 返 回 " onClick="toReturn()">
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD>&nbsp;	
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
function toAdd()
{	
	document.location.href='examSchemeAdd2.htm'; 
}
function toPass()
{	
	if(confirm("确定撤消方案吗？"))
	{
		alert("撤消成功！"); 
		document.location.href='examSchemeCancel.htm'; 
	}
}
function toReturn()
{
   document.location.href='examSchemeCancel.htm'; 
}
</SCRIPT>