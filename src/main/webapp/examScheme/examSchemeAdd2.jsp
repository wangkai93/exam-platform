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
						<TD class="FormTitle" height="2" width="100%"><B>策略新增</B>
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
									<TD  height="20" width="1%">
									</TD>
									<TD width="12%">	题目范围：
									</TD>
									<TD width="35%">
				<select name="questionType" >
				<option value='1' selected>Java基础－语法</option>
				<option value='2'>Java基础－多线程</option>
				<option value='3'>Java高级－Struts</option>
				<option value='4'>Java高级－EJB</option>
				<option value='5'>Java高级－Hibernate</option>
				</select>
									</TD>
									<TD width="12%">	题目难度：
									</TD>
									<TD>										
				<select name="questionType" >
				<option value='1' selected>容易</option>
				<option value='2'>较易</option>
				<option value='3'>中等</option>
				<option value='4'>较难</option>
				<option value='5'>困难</option>
				</select>
									</TD>
																		<TD width="12%">	题目类型：
									</TD>
									<TD>										
				<select name="questionType" >
				<option value='1'>选择题</option>
				<option value='2'>填空题</option>
				<option value='3'>问题题</option>
				</select>
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

									<TD>	<input type="radio" name="userType" checked value="student">自动抽取
									</TD>
								</TR>
								<TR>

									<TD >
									<table border="1" bordercolor="#999999" width="100%">
									<tr bordercolor="#eaeaea"><td >题量：</td><td><INPUT class=box name="examNo" size=20 maxLength=20 value=""></td><td >题目总数：</td><td ><INPUT class=box name="examNo" size=20 maxLength=20 value="200" disabled></td></tr>
									<tr bordercolor="#eaeaea"><td width="60">批阅方式：</td><td><input type="radio" name="checkType" checked value="student">自动批阅<input type="radio" name="checkType" checked value="student">老师批阅<input type="radio" name="checkType" checked value="student">自动批阅＋老师批阅</td></tr>
									</table>
									</TD>
								</TR>
					<TR>
						<TD>&nbsp;	
						</TD>
					</TR>
								<TR>

									<TD>	<input type="radio" name="userType" checked value="student">手动指定
									</TD>
								</TR>
								<TR>
									<TD >
									<table border="1" bordercolor="#999999" width="100%">
<tr bordercolor="#eaeaea"><td><table><tr><td width="60">题量：</td><td><INPUT class=box name="examNo" size=20 maxLength=20 value="10"  disabled></td></tr></table></td></tr>
									<tr bordercolor="#eaeaea"><td><table><tr><td width="60">批阅方式：</td><td>自动批阅</td></tr></table></td></tr>
									<tr  bordercolor="#eaeaea">
									<TD height="40" width="96%" valign="top">
										<TABLE align="left" border="0" class="ItemList" height="20" width="100%">
											<TR height="24" align="middle">
												<TD class="ItemTitle" height="20" width="10%">	选择
												</TD>
												<TD class="ItemTitle" width="14%">	题目编号
												</TD>
												<TD class="ItemTitle" width="14%">	题目类型
												</TD>
												<TD class="ItemTitle" width="14%">	录入人
												</TD>
												<TD class="ItemTitle" width="14%">	录入日期
												</TD>
												<TD class="ItemTitle" width="14%">	批阅方式
												</TD>
											
											</TR>
											<TR align="middle" class="ItemBody">
												<TD class="ItemBody" height="20">	<INPUT type="checkbox" name="answer3" value="A">
												</TD>
												<TD class="ItemBody">	<a href='..\quesLib\quesLibQuery3.htm'>QF20051128001</a>
												</TD>
												<TD class="ItemBody">	选择题
												</TD>
												<TD class="ItemBody" align="left">	周明星
												</TD>
												<TD class="ItemBody">	2005-09-20
												</TD>
												<TD class="ItemBody" align="left">	批阅方式
												</TD>
												
											</TR>
											<TR align="middle" class="ItemBody">
												<TD class="ItemBody" height="20">	<INPUT type="checkbox" name="answer3" value="A">
												</TD>
												<TD class="ItemBody">	<a href='..\quesLib\quesLibQuery3.htm'>QF20051128002</a>
												</TD>
												<TD class="ItemBody">	选择题
												</TD>
												<TD class="ItemBody" align="left">	周明星
												</TD>
												<TD class="ItemBody">	2005-09-20
												</TD>
												<TD class="ItemBody" align="left">	批阅方式
												</TD>
												
											</TR>
											
										</TABLE>
									</TD>
									</tr>
								<TR  bordercolor="#eaeaea">
									<TD align="center">
										<input class=button type="button" name="Submit2222"  value=" 全 选 " onlick="istrue()">
        								<input class=button type="button" name="Submit223" value=" 新增题目 "  onclick="add()">
        								<input class=button type="button" name="Submit223"  value=" 删 除 " onClick="ddelete()">
									</TD>
								</TR>
									
									</table>
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD>
<HR width="98%">
						</TD>
					<TR>
						<TD>
							<TABLE align="center" border="0" width="90%">
								<TR>
									<TD height="20" width="1%">
									</TD>
									<TD width="12%">	每题分数：
									</TD>
									<TD width="87%">										
<INPUT class=box name="examNoa" size=20 maxLength=20 value="">
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
						<TD>
<HR width="98%">
						</TD>
					</TR>
					<TR>
						<TD>
							<TABLE align="center" border="0" width="90%">
								<TR>
									<TD align="right">
										<input class=button type=button name="bsave" value=" 保 存 " onClick="save()">
										<input class=button type=button name="bsave" value=" 删 除 " onClick="dddelete()">
										<INPUT class="button" type="button"  name="search" value=" 返 回 " onClick="javascript:history.back(-1)">
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
function save()
{	
	document.location.href='examSchemeAdd2.htm'; 
}
function toReturn()
{	
	document.location.href='examSchemeAdd.htm'; 
}
function add()
{	
	document.location.href='examSchemeAdd4.htm'; 
}
function ddelete()
{	
	if(confirm("确定删除该题吗？"))
	{
		alert("删除成功！"); 
		document.location.href='examSchemeAdd2.htm'; 
	}
}
function dddelete()
{	
	if(confirm("确定删除该策略吗？"))
	{
		alert("删除成功！"); 
		document.location.href='examSchemeAdd.htm'; 
	}
}

</SCRIPT>