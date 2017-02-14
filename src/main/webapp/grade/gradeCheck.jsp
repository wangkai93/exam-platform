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
<META http-equiv="Content-Type" content="text/html; charset=UTF-8"><LINK rel="stylesheet" href="<%=request.getContextPath()%>/webep/css/style.css" type="text/css">
</HEAD>
<BODY bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<SCRIPT language="JavaScript1.2" src="<%=request.getContextPath()%>/webep/js/coolmenus4.js"></SCRIPT>
<SCRIPT language="JavaScript1.2" src="<%=request.getContextPath()%>/webep/js/cm_addins.js"></SCRIPT>
<script language="javascript" type="text/javascript" src="<%=request.getContextPath() %>/webep/js/My97DatePicker/WdatePicker.js"></script>
	<script language="JavaScript" src="<%=request.getContextPath()%>/webep/js/Control.js"></script>
	<script language="JavaScript" src="<%=request.getContextPath()%>/webep/js/calendar.js"></script>
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="pagetop">
					<TR>
						<TD width="420" nowrap class="headerLogo"><IMG src="<%=request.getContextPath()%>/webep/logo.gif"><IMG src="<%=request.getContextPath()%>/webep/logo_js.gif">
						</TD>
						<TD class="welcome">
						</TD>
						<TD width="187" align="right" nowrap class="headerHelp">
							<TABLE border="0" cellpadding="4" cellspacing="2">
								<TR>
									<TD align="center" class="sys"><A href="<%=request.getContextPath()%>/Index.jsp" class="syslink">退出登录</A> <A href="password.jsp" class="syslink">修改密码</A>
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
						<TD height="2" class="menuBl1"><IMG src="<%=request.getContextPath()%>/webep/space.gif" width="1" height="1"></TD>
					</TR>
					<TR>
						<TD height="3" class="menuBl2"><IMG src="<%=request.getContextPath()%>/webep/space.gif" width="1" height="1"></TD>
					</TR>
				</TABLE>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
					<TR>
						<TD><IMG src="<%=request.getContextPath()%>/webep/space.gif" width="778" height="1"></TD>
					</TR>
				</TABLE>
<P>
<SCRIPT language=JavaScript1.2>showMenu("","../../exam-platform",2);
</SCRIPT>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#999999">
					<TR>
						<TD><IMG src="<%=request.getContextPath()%>/webep/space.gif" width="1" height="1"></TD>
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
						<TD class="FormTitle" height="2" width="100%"><B>成绩批阅</B>
						</TD>
					</TR>
					<TR>
						<TD>&nbsp;	
						</TD>
					</TR>
					<TR>
						<TD>
<form name="find" action="findPutoutPlan_achievementMangerAction.action" method="post">
							<TABLE align="center" border="0" width="90%">
								<TR>
									<TD height="20" width="1%">
									</TD>
									<TD width="15%">	考试计划编号：
									</TD>
									<TD width="35%">										
										<INPUT class=box name="planPuto.tbPlan.planId" size=20 maxLength=20 value="">
									</TD>
									<TD width="15%">	考试计划描述：
									</TD>
									<TD width="35%">										
										<INPUT class=box name="planPuto.tbPlan.planDesc" size=20 maxLength=20 value="">
									</TD>
								</TR>
								<TR>
									<TD height="20">
									</TD>
									<TD >	班级名称：
									</TD>
									<TD >										
										<INPUT class=box name="planPuto.tbPlan.tbClass.claName" size=20 maxLength=20 value="">
									</TD>
                               </TR>
							   	<TR>
									<TD height="20">
									</TD>
									<TD >	考试方案编号：
									</TD>
									<TD >										
										<INPUT class=box name="planPuto.tbPlan.tbPrecept.preId" size=20 maxLength=20 value="">
									</TD>
									<TD>	批阅状态：
									</TD>
									<TD width="35%">																				
				<select name="planPuto.tbPlan.modState" >
				<option value=''>全部</option>
				<option value='未批阅'>未批阅</option>
				<option value='批阅中'>批阅中</option>
				<option value='已批阅'>已批阅</option>
				</select>
									</TD>
									
                               </TR>
								
								<TR>
									<TD height="20">
									</TD>
									<TD>	考试时间：
									</TD>
									<TD colspan="4">
									由：<INPUT type="text" name="planPuto.tbPlan.planStarttime" class="Wdate"  onClick="WdatePicker()" >&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										到：<INPUT type="text" name="planPuto.tbPlan.planEndtime" class="Wdate"  onClick="WdatePicker()">&nbsp;
									
									</TD>
								</TR>
								<TR>
									<TD height="20">
									</TD>
									<TD>
									</TD>
									<TD colspan="3" align="right">										
										<INPUT class="button" type="submit"  name="search" value=" 查 找 " >
									</TD>
								</TR>
							</TABLE>
							
</form>
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
												
												<TD class="ItemTitle" width="12%">	考试计划编号
												</TD>
												<TD class="ItemTitle" width="14%">	考试计划描述
												</TD>
												<TD class="ItemTitle" width="12%">	考试方案
												</TD>
												<TD class="ItemTitle" width="21%">	考试时间
												</TD>
												<TD class="ItemTitle" width="12%">	班级编号
												</TD>
												<TD class="ItemTitle" width="12%">	批阅状态
												</TD>
												<TD class="ItemTitle" width="12%">	操作
												</TD>
											</TR>
								
								<s:iterator var="planP" value="planPutoL">
											<TR align="middle" class="ItemBody">
												<TD class="ItemBody" height="20">	<a href='gainplan_examPlanAction.action?tbId=${planP.tbPlan.planTbId}'> 
												<s:property value="#planP.tbPlan.planId"></s:property></a>
												</TD>
												<TD class="ItemBody" align="left">	<s:property value="#planP.tbPlan.planDesc"></s:property>
												</TD>
												<TD class="ItemBody">	<a href='<%=request.getContextPath()%>\examScheme\examSchemeQuery3.jsp'>
												<s:property value="#planP.tbPlan.tbPrecept.preId"></s:property></a>
												</TD>
												<TD class="ItemBody">	<s:property value="#planP.tbPlan.planStarttime" ></s:property>-<s:property value="#planP.tbPlan.planEndtime" ></s:property>
												</TD>
												<TD class="ItemBody">	<a href='<%=request.getContextPath()%>\class\classQuery3.jsp'>
												<s:property value="#planP.tbPlan.tbClass.claId" ></s:property></a>
												</TD>
												<TD class="ItemBody">	<s:property value="#planP.tbPlan.modState" ></s:property>
												</TD>
												
												<TD class="ItemBody">
												<s:if test="#planP.tbPlan.modState!='已批阅'">
												
												<INPUT type="button" name="joinExam" value="成绩批阅" onclick="gradeCheck(${planP.tbPlan.planTbId})">
											
												</s:if> 
												</TD>
											</TR>
								</s:iterator>
										
											<TR align="middle" class="ItemBody">
												<TD colSpan=8 height=1>
            <TABLE border=0 cellPadding=0 cellSpacing=3 class=SearchBar 
            height=20 width="135%">
              <TR>
                <TD height=20 width=1100>
                    <DIV align=right> 
                      <P><B>第 
		              	
                        <input type="text" name="QueryPageNo" size="3" value="1" class="SearchBar_Page">
                           页 / 共 1 页 
                        <input type="button" name="btnGo" value="go" class="SearchBar_Btn">
							
                        <input type="button" name="btnFirst" value="|&lt;" class="SearchBar_Btn" >

                        <input type="button" name="btnPrevious" value="&lt;" class="SearchBar_Btn">

                        <input type="button" name="btnNext" value="&gt;" class="SearchBar_Btn" >

                        <input type="button" name="btnEnd" value="&gt;|" class="SearchBar_Btn" >

                        <SPAN 
          class=SearchBar></SPAN></B></P>
                  </DIV></TD></TR></TABLE>
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
			<TD class="pagefootTl"><IMG src="<%=request.getContextPath()%>/webep/space.gif" width="778" height="1"></TD>
		</TR>
		<TR>
			<TD height="25" class="pagefoot"><FONT face="Arial, Helvetica, sans-serif">&copy;</FONT> 2005-2007  版权所有 软通动力信息技术有限公司 Powered by 软通动力武汉开发中心
			</TD>
		</TR>
	</TABLE>
<form action="scorePlan_achievementMangerAction.action" method="post"  id="ckForm">	
<input type="hidden" name="plan.planTbId" value=""/>
</form>
</BODY>

<SCRIPT language="JavaScript">

function gradeCheck(id)
{	
  if(confirm("确认批阅该试卷吗？")){
	
	document.getElementById("plan.planTbId").value=id;
    document.getElementById("ckForm").submit();
  }
}
function next()
{
	document.location.href='#';
}
</SCRIPT>
</HTML>
