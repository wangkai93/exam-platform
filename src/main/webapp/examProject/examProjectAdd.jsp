<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
  
  <body  bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<SCRIPT language="JavaScript1.2" src="./webep/js/coolmenus4.js"></SCRIPT>
<SCRIPT language="JavaScript1.2" src="./webep/js/cm_addins.js"></SCRIPT>
<script language="JavaScript" src="./webep/js/Control.js" ></script>
<script language="JavaScript" src="./webep/js/calendar.js" ></script>
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
   									<TD align="center" class="sys">
   									  <A href="./Index.htm" class="syslink">
                                                                                                          退出登录
                                      </A><A href="./password.htm" class="syslink">
                                                                                                         修改密码
                                      </A>
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
	<form name="form1">
   	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
   		<TR>
   			<TD width="20">	&nbsp;
   			</TD>
   			<TD align="left" valign="top">
   				<TABLE border="0" class="top" width="700">
   					<TR>
   						<TD class="FormTitle" height="2" width="100%">	考试计划新增
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
   									<TD>	考试计划编号：
   									</TD>
   									<td>
   									<s:property value="plan.planId" />
   									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   									</td>
   									
   									<TD>
									考试计划名称：
   									</TD>
									<td>
									<INPUT class="box" name="plan.planName" size="20" maxLength="20" value="java高级编程">
									</td>
   								</TR>
								<TR>
									<TD height="20">
									</TD>
									<TD >	考试计划描述：
									</TD>
									<TD colspan="3">
                       <TEXTAREA class=box cols=40 name="plan.planDesc" rows=3  ></TEXTAREA> 
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
									<TD width="15%">	班级名称：
   									</TD>
   									<TD width="35%">
									<INPUT class="box" name="tbClass.claName" size="20" maxLength="20" value="java一班" readonly="true">&nbsp;
<!-- tianshujudfgfdsgfdsgfdsgfds--> <input type="hidden" id="" name="" />
									  <a >
									    <img name="examClass" src='./webep/graphics/icon.gif' border=0 onclick="window.open('examProject/classList.jsp', 'SelectAnything', 'toolbar=no,menubar=no,resizable=no,location=no,width=520,height=450,scrollbars=yes', false);"></a>
   									</TD>
									<TD colspan="2">
   									</TD>
   								</TR>
								<TR>
								    <TD height="20">
   									</TD>
									<TD>考试时间：
   									</TD>
   									<TD colspan="3">由：
									<INPUT class="box" name="plan.planStarttime" size="20" maxLength="20"
									 value="2005-09-20 09:00" readonly="true">&nbsp;
									   <A href="javascript:show_calendar('form1.TestTimeaaa');" 
									   onmouseout="window.status='';true;" onmouseover="window.status='Date Picker';true;">
									 <IMG name="button" src='./webep/calendar.gif' width=16 height=15 border=0 align="absmiddle"></A>
   									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;至：
   									
				                   <INPUT class="box" name="plan.planEndtime" size="20" maxLength="20" value="2005-09-20 11:30" readonly="true">&nbsp;<A href="javascript:show_calendar('form1.TestTime1');" onmouseout="window.status='';true;" onmouseover="window.status='Date Picker'; true;"><IMG name="button" src='./webep/calendar.gif' width=16 height=15 border=0 align="absmiddle"></A>
									</TD>
   								</TR>
   								<TR>
   									<TD height="20">
   									</TD>
									<TD>	考试方案名称：
   									</TD>
   									<TD>
									<INPUT class="box" name="Discribe" size="20" maxLength="20" value="ISSTCWH_J001" readonly="true">&nbsp;<a ><img name="button" src='./webep/graphics/icon.gif' border=0 onclick="window.open('examProject/examSchemeList.jsp', 'SelectAnything', 'toolbar=no,menubar=no,resizable=no,location=no,width=520,height=450,scrollbars=yes', false);"></a>
   						<input type="hidden" id="" name="" />
   									</TD>
									
									<TD>	批阅截至时间：
   									</TD>
									<TD>
				                   <INPUT class="box" name="plan.palnEnddate" size="20" maxLength="20" value="2005-09-20 11:30" readonly="true">&nbsp;<A href="javascript:show_calendar('form1.TestTime');" onmouseout="window.status='';true;" onmouseover="window.status='Date Picker';true;"><IMG name="button" src='./webep/calendar.gif' width=16 height=15 border=0 align="absmiddle"></A>
									</TD>
								</TR>
								<TR>
   									<TD height="20">
   									<br></TD>
									<TD width="15%">	批阅人：
   									</TD>
									<TD>
				                    	<INPUT class="box" name="Discribe" size="20" maxLength="20" value="邓 昆" readonly="true" />&nbsp;<a ><img name="button" src='./webep/graphics/icon.gif' border=0 onclick="window.open('examProject/userList.jsp', 'SelectAnything', 'toolbar=no,menubar=no,resizable=no,location=no,width=520,height=450,scrollbars=yes', false);"></a>
				      <input type="hidden" id="" name="" />
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
									    <input class=button type=button name="bsave" value=" 试卷预览 " onclick="issue()">
										<input class=button type=button name="bsave" value=" 保 存 " onclick="save()">
										<input class=button type=reset name="bsave" value=" 删 除 " onclick="ddelete()">
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
		</form>
   	</TABLE><BR>
   	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
   		<TR>
   			<TD class="pagefootTl"><IMG src="../webep/space.gif" width="778" height="1"></TD>
   		</TR>
   		<TR>
   			<TD height="25" class="pagefoot">   			   
   			   <FONT face="Arial, Helvetica, sans-serif">&copy;</FONT>2005-2007  版权所有 软通动力信息技术有限公司 Powered by 软通动力武汉开发中心
   			</TD>
   		</TR>
   	</TABLE>
   </BODY>
</HTML>
<SCRIPT language="JavaScript">function save()
{	
	document.location.href='examProject/examSchemeAdd.jsp'; 
}
function toReturn()
{	
	document.location.href='examProject/examSchemeAdd.jsp'; 
}
function commit()
{	
	if(confirm("确定提交该考试计划吗？"))
	{
		alert("提交成功！"); 
		document.location.href='examProject/examProjectQuery3.jsp'; 
	}
}
function save()
{	    
        if(confirm("确定保存该考试计划吗？")){
	      return true;
	}else{
	     return false;
	}
}
function ddelete()
{	
	if(confirm("确定删除该考试计划吗？"))
	{
		alert("删除成功！"); 
		document.location.href='examProject/examProjectAdd.jsp'; 
	}
}
function issue()
{	
		document.location.href='examProject/exam.jsp'; 
	
}
</SCRIPT>