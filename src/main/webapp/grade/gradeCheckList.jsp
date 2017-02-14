<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<HTML>
<HEAD>
<TITLE>iSoftStone培训中心考试平台</TITLE>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8"><LINK rel="stylesheet" href="<%=request.getContextPath() %>/webep/css/style.css" type="text/css">

<SCRIPT language=javascript>function showSending() 
{
 	gnIsShowSending=1;
	sending.style.visibility="visible";
	cover.style.visibility="visible";
}
</SCRIPT>
</HEAD>
<BODY bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	
<SCRIPT language="JavaScript1.2" src="<%=request.getContextPath() %>/webep/js/coolmenus4.js"></SCRIPT>
<SCRIPT language="JavaScript1.2" src="<%=request.getContextPath() %>/webep/js/cm_addins.js"></SCRIPT>
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
	
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="pagetop">
					<TR>
						<TD width="420" nowrap class="headerLogo"><IMG src="<%=request.getContextPath() %>/webep/logo.gif"><IMG src="<%=request.getContextPath() %>/webep/logo_js.gif">
						</TD>
						<TD class="welcome">
						</TD>
						<TD width="187" align="right" nowrap class="headerHelp">
							<TABLE border="0" cellpadding="4" cellspacing="2">
								<TR>
									<TD align="center" class="sys"><A href="Index.jsp" class="syslink">退出登录</A> <A href="password.jsp" class="syslink">修改密码</A>
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
<SCRIPT language=JavaScript1.2>showMenu("","../../exam-platform",2);
</SCRIPT>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#999999">
					<TR>
						<TD><IMG src="webep/space.gif" width="1" height="1"></TD>
					</TR>
				</TABLE>
			</TD>
		</TR>
   </TABLE>
	</TABLE><BR>
			
			<TD width="20">	&nbsp;
			</TD>
			<TD align="left" valign="top">
				<TABLE border="0" class="top" height="217" width="700">
					<TR>
						<TD class="FormTitle" height="2" width="100%"><B>试卷批阅</B>
						</TD>
					</TR>
					<TR>
						<TD width="100%">
							<TABLE align="center" width="97%">
								<TR>
									<TD height="30"><STRONG>等待批阅的试卷：</STRONG>
									</TD>
								</TR>
								<TR>
									<TD height="40" width="96%" valign="top">
										<TABLE align="center" border="0" class="ItemList" height="20" width="100%">
											<TR height="24" align="middle">
												<TD class="ItemTitle" height="20" width="14%">	考试计划编号
												</TD>
												<TD class="ItemTitle" width="14%">	考试计划描述
												</TD>
												<TD class="ItemTitle" width="14%">	考试时间
												</TD>
												<TD class="ItemTitle" width="14%">	考试方案
												</TD>
												<TD class="ItemTitle" width="14%">	考生名字
												</TD>
												<TD class="ItemTitle" width="14%">	批阅截至时间
												</TD>
												<TD class="ItemTitle" width="14%">	操作
												</TD>
											</TR>
											<s:iterator var="planCommit" value="planCommitL">
											<TR align="middle" class="ItemBody">
												<TD class="ItemBody" height="20"><a href='#'><s:property value="#planCommit.tbPlan.planId"></s:property></a>
												</TD>
												<TD class="ItemBody" align="left"><s:property value="#planCommit.tbPlan.planDesc"></s:property>
												</TD>
												<TD class="ItemBody"><s:property value="#planCommit.tbPlan.planStarttime"></s:property>-<s:property value="planCommit.tbPlan.planEndtime"></s:property>
												</TD>
												<TD class="ItemBody"><a href='#'><s:property value="#planCommit.tbPlan.tbPrecept.preId"></s:property></a>
												</TD>
												<TD class="ItemBody" align="left"><a href='#'><s:property value="#planCommit.tbStudent.stuName"></s:property></a>
												</TD>
												<TD class="ItemBody"><s:property value="#planCommit.tbPlan.palnEnddate"></s:property>
												</TD>
												<TD class="ItemBody">													
													<INPUT type="button" name="joinExam" value="成绩批阅"  onclick="gradeCheck(${planCommit.tbPlan.planTbId},${ planCommit.tbStudent.stuId})">
												</TD>
											</TR>
											</s:iterator>
											<TR align="middle" class="ItemBody">
									      <TD colspan="7" height="1">
										  <TABLE border="0" cellpadding="0" cellspacing="3" class="SearchBar" height="20" width="135%">
											<TR>
												<TD height="20" width="1100">
													<DIV align="right">
<P><B>第														
														<INPUT type="text" name="QueryPageNo" size="3" value="1" class="SearchBar_Page">页 / 共 1 页														
														<INPUT type="button" name="btnGo" value="go" class="SearchBar_Btn">														
														<INPUT type="button" name="btnFirst" value="|&lt;" class="SearchBar_Btn" >														
														<INPUT type="button" name="btnPrevious" value="&lt;" class="SearchBar_Btn">														
														<INPUT type="button" name="btnNext" value="&gt;" class="SearchBar_Btn" >														
														<INPUT type="button" name="btnEnd" value="&gt;|" class="SearchBar_Btn" ><SPAN class="SearchBar"></SPAN></B></P>
													</DIV>
												</TD>
											</TR>
										</TABLE>
									      </TD>
								          </TR>
										</TABLE>
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD>	&nbsp;
						</TD>
					</TR>
					<TR>
						<TD>
<HR width="98%">
						</TD>
					</TR>
					<TR>
						<TD width="100%">
							
							</TABLE>
						</TD>
					</TR>
			</TABLE><BR>
	</TD>
	</TD>
		</TR>
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD class="pagefootTl"><IMG src="<%=request.getContextPath() %>/webep/space.gif" width="778" height="1"></TD>
		</TR>
		<TR>
			<TD height="25" class="pagefoot"><FONT face="Arial, Helvetica, sans-serif">&copy;</FONT> 2005-2007  版权所有 软通动力信息技术有限公司 Powered by 软通动力武汉开发中心
			</TD>
		</TR>
	</TABLE>
<form action="scoreStu_achievementMangerAction.action" method="post"  id="ckForm">	
<input type="hidden" name="plan.planTbId" value=""/>
<input type="hidden" name="student.stuId" value=""/>
</form>
</BODY>
<SCRIPT language="JavaScript">
function queryResult()
{	
	document.location.href='<%=request.getContextPath() %>/exam/examResult.jsp'; 
}
function gradeCheck(planTbId,stuId)
{	
	if(confirm("确认批阅该试卷吗？"))
	{
		showSending();
		document.getElementById("plan.planTbId").value=planTbId;
		document.getElementById("student.stuId").value=stuId;
        document.getElementById("ckForm").submit();
	}
}
</SCRIPT>
</HTML>

