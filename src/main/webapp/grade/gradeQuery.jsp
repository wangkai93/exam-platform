<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<HTML>
<HEAD>
<TITLE>iSoftStone培训中心考试平台</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<LINK rel="stylesheet" href="<%=request.getContextPath()%>/webep/css/style.css" type="text/css">
</HEAD>
<BODY bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<SCRIPT language="JavaScript1.2" src="<%=request.getContextPath() %>/webep/js/coolmenus4.js"></SCRIPT>
<script language="javascript" type="text/javascript" src="<%=request.getContextPath() %>/webep/js/My97DatePicker/WdatePicker.js"></script>
<SCRIPT language="JavaScript1.2" src="<%=request.getContextPath() %>/webep/js/cm_addins.js"></SCRIPT>
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
									<TD align="center" class="sys"><A href="<%=request.getContextPath() %>/Index.jsp" class="syslink">退出登录</A> <A href="password.jsp" class="syslink">修改密码</A>
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
						<TD height="2" class="menuBl1"><IMG src="<%=request.getContextPath() %>/webep/space.gif" width="1" height="1"></TD>
					</TR>
					<TR>
						<TD height="3" class="menuBl2"><IMG src="<%=request.getContextPath() %>/webep/space.gif" width="1" height="1"></TD>
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
						<TD><IMG src="<%=request.getContextPath() %>/webep/space.gif" width="1" height="1"></TD>
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
						<TD class="FormTitle" height="2" width="100%"><B>成绩查询</B>
						</TD>
					</TR>
					<TR>
						<TD>&nbsp;	
						</TD>
					</TR>
					<TR>
						<TD>
	<s:form action="findExamPlan_achievementMangerAction.action" method="post" theme="simple">
							<TABLE align="center" border="0" width="90%">
								<TR>
									<TD height="20" width="1%">
									</TD>
									<TD width="15%">	考试计划编号：
									</TD>
									<TD width="35%">
										<s:textfield  name="gradePuto.tbPlan.planId" theme="simple"></s:textfield>									
										
									</TD>
									<TD width="15%">	考试计划名称：
									</TD>
									<TD width="35%">
									<s:textfield  name="gradePuto.tbPlan.planName" theme="simple"></s:textfield>										
										
									</TD>
								</TR>
								<TR>
									<TD height="20">
									</TD>
									<TD >	班级名称：
									</TD>
									<TD >	
									<s:textfield  name="gradePuto.tbPlan.tbClass.claName" theme="simple"></s:textfield>									
										
									</TD>
									<TD>	班级状态：</TD>
					<TD width="35%">
					
					<s:select name="gradePuto.tbPlan.tbClass.claState" list="#{'':'全部','已开班':'已开班','已结业':'已结业' }" theme="simple"></s:select>										
								  
                                        
					  </TD>
                               </TR>
								<TR>
									<TD height="20">
									</TD>
									<TD>	考试时间：
									</TD>
									
									<TD colspan="3">
									
									由：<INPUT type="text" name="gradePuto.tbPlan.planStarttime" class="Wdate"  onClick="WdatePicker()" >&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;到：<INPUT type="text" name="gradePuto.tbPlan.planEndtime" class="Wdate"  onClick="WdatePicker()">&nbsp;
									</TD>
									
								</TR>
								<TR>
									<TD height="20">
									</TD>
									<TD>
									</TD>
									<TD colspan="3" align="right">	
									<s:submit value=" 查 找  "   theme="simple"></s:submit>									
									</TD>
								</TR>
							</TABLE>
		</s:form>
						</TD>
					</TR>
					<TR>
						<TD>
<HR width="98%">
						</TD>
					</TR>
					<TR>
						<TD height="40" valign="top">
	<form action="findAchievement_achievementMangerAction.action" method="post">					
	<TABLE align="center" border="0" class="ItemList" height="20" width="96%">
								<TR height="24" align="middle">
												
												<TD class="ItemTitle" width="12%">	考试计划编号
												</TD>
												<TD class="ItemTitle" width="15%">	考试计划名称
												</TD>
												<TD class="ItemTitle" width="12%">	考试方案编号
												</TD>
												<TD class="ItemTitle" width="21%">	考试时间
												</TD>
												<TD class="ItemTitle" width="12%">	班级名称
												</TD>
												<TD class="ItemTitle" width="12%">	操作
												</TD>
							  </TR>
							  			<s:iterator var="gradeP" value="gradePutoutL">
											<TR align="middle" class="ItemBody">
												<TD class="ItemBody" height="20">	<a href="findPlanGrade_achievementMangerAction.action?planPuto.tbPlan.planTbId=<s:property  value="#gradeP.tbPlan.planTbId" ></s:property>"> 
												
												<s:property  value="#gradeP.tbPlan.planId" ></s:property>
												
												</a>
												</TD>
												
												<TD class="ItemBody" align="left">	<s:property value="#gradeP.tbPlan.planName"></s:property>
												</TD>
												<TD class="ItemBody">	<s:property value="#gradeP.tbPlan.tbPrecept.preId" ></s:property>
												</TD>
												<TD class="ItemBody">	<s:property value="#gradeP.tbPlan.planStarttime" ></s:property>-<s:property value="#gradeP.tbPlan.planEndtime" ></s:property>
												</TD>
												<TD class="ItemBody">	<s:property value="#gradeP.tbPlan.tbClass.claName" ></s:property>
												</TD>
												
												<TD class="ItemBody">	<INPUT type="submit" name="joinExam"  value="查询成绩"  > <s:property value="#gradeP.tbPlan.tbClass.claId"/>
												
												</TD>
												
											</TR>
											<input type="hidden" name="cla.classId" value="<s:property value="#gradeP.tbPlan.tbClass.classId"/>"/>
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
	</form>	
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
			<TD class="pagefootTl"><IMG src="<%=request.getContextPath() %>/webep/space.gif" width="778" height="1"></TD>
		</TR>
		<TR>
			<TD height="25" class="pagefoot"><FONT face="Arial, Helvetica, sans-serif">&copy;</FONT> 2005-2007  版权所有 软通动力信息技术有限公司 Powered by 软通动力武汉开发中心
			</TD>
		</TR>
	</TABLE>
</BODY>
</HTML>
<SCRIPT language="JavaScript">
function gradeCheck()
{	
	
	document.location.href='findAchievement_achievementMangerAction.action?classId=<s:property value="#gradeP.tbPlan.tbClass.claId" ></s:property>';
}
function next()
{
	document.location.href='#';
}
</SCRIPT>
