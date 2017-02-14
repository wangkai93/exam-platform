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
 </head >
 <BODY bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<SCRIPT language="JavaScript1.2" src="./webep/js/coolmenus4.js"></SCRIPT>
<SCRIPT language="JavaScript1.2" src="./webep/js/cm_addins.js"></SCRIPT>
<script language="JavaScript" src="./webep/js/Control.js" ></script>
<script language="JavaScript" src="./webep/js/calendar.js" ></script>
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" >
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
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD width="20">	&nbsp;
			</TD>
			<TD align="left" valign="top">
				<TABLE border="0" class="top" width="700">
					<TR>
						<TD class="FormTitle" height="2" width="100%"><B>考试计划撤消</B>
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
									<TD width="15%">	考试计划编号：
									</TD>
									<TD width="35%">										
										<INPUT class=box name="examNo" size=20 maxLength=20 value="">
									</TD>
									<TD width="15%">	考试计划名称：
									</TD>
									<TD>
										<INPUT class=box name="examNo" size=20 maxLength=20 value="">
									</TD>
									
									<TD>	&nbsp;
									</TD>
									<TD>										
				&nbsp;
									</TD>
								</TR>
								
								<TR>
									<TD height="20">
									</TD>
									<TD>	批阅方式：
									</TD>
									<TD>
				<select name="questionType" >
				<option value='0'>全部</option>
				<option value='1'>自动批阅</option>
				<option value='2'>老师批阅</option>
				</select>
									</TD>
									<TD>	班级名称：
									</TD>
									<TD>
										<INPUT class=box name="examNo" size=20 maxLength=20 value="">
									</TD>
									
								</TR>
								<TR>
									<TD height="20">
									</TD>
									<TD>	考试时间：
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
									<TD>
									</TD>
									<TD colspan="3" align="right">										
										<INPUT class="button" type="button"  name="search" value=" 查 找 " onclick='find()'>
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
						<TD height="40" valign="top">
							<TABLE align="center" border="0" class="ItemList" height="20" width="96%">
								<TR height="24" align="middle">
												<TD class="ItemTitle" height="20" width="14%">	考试计划编号
												</TD>
												<TD class="ItemTitle" width="14%">	考试计划名称
												</TD>
												<TD class="ItemTitle" width="16%">	考试时间
												</TD>
												<TD class="ItemTitle" width="14%">	考试方案名称
												</TD>
												<TD class="ItemTitle" width="14%">	班级名称
												</TD>
												<TD class="ItemTitle" width="14%">	批阅截至时间
												</TD>
											</TR>
											
											<TR align="middle" class="ItemBody">
											
									        <s:iterator value="" var="">
												<TD class="ItemBody" height="20">
												<a href='.\examProject\examProjectCancel2.jsp'>
									<s:property value=""/>
									<s:hidden value=""/>
												</a>
												</TD>
												<TD class="ItemBody" align="left">
                                     <s:property value=""/>            
												</TD>
												<TD class="ItemBody">
                                     <s:property value=""/>       
												</TD>
												<TD class="ItemBody">
												
									<a href='.\examScheme\examSchemeQuery3.jsp'>
                                        <s:property value=""/>   
                                        <s:hidden value=""/>
                                    </a>
												</TD>
												<TD class="ItemBody" align="left">
									<A href='.\class\classQuery3.jsp'>
									     <s:property value=""/>   
                                         <s:hidden value=""/>
                                     </a>
												</TD>
												<TD class="ItemBody">
                                      <s:property value=""/>                                               
												</TD>
										</s:iterator>
										
											</TR>
									
											<TR align="middle" class="ItemBody">
												<TD colSpan=7 height=1>
					<s:form method="post" action="">						
            <TABLE border=0 cellPadding=0 cellSpacing=3 class=SearchBar 
            height=20 width="135%">
              <TR>
                <TD height=20 width=1100>
                    <DIV align=right> 
                      <P><B>第 
                        <input type="text" name="QueryPageNo" size="3" class="SearchBar_Page">
                                                                        页 / 共
                          <s:property value=""/>
                                                                            页 
                        <input type="submit" name="btnGo" value="go" class="SearchBar_Btn"><!-- 提交 -->
                         <!--首页 -->
                        <a href="<%=basePath%>examPlanMangerAction!??name=btnFirst" style="text-decoration:none">|&lt;</a>
                        <!--上一页 -->
                        <a href="<%=basePath%>examPlanMangerAction!??name=btnPrevious" style="text-decoration:none">&lt;</a>
                        <!--下一页 -->
                        <a href="<%=basePath%>examPlanMangerAction!??name=btnNext" style="text-decoration:none">&gt;</a>
                        <!--尾页 -->
                        <a href="<%=basePath%>examPlanMangerAction!?.action?name=btnEnd" style="text-decoration:none">&gt;|</a>
                   <SPAN class=SearchBar></SPAN></B></P>
                  </DIV></TD></TR></TABLE>
                  </s:form>
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
<SCRIPT language="JavaScript">function queryResult()
{	
	document.location.href='examResult.htm'; 
}
function find()
{
	document.location.href='examProject/examProjectCancel.jsp';
}
</SCRIPT>