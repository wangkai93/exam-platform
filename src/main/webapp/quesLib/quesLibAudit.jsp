<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<HTML>
<HEAD>
<TITLE>iSoftStone培训中心考试平台</TITLE>
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
						<TD class="FormTitle" height="2" width="100%"><B>题目审核</B>
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
									<TD width="12%">	题目编号：
									</TD>
									<TD width="35%">										
										<INPUT class=box name="examNo" size=20 maxLength=20 value="">
									</TD>
									<TD width="12%">	题目类型：
									</TD>
									<TD>										
				<select name="theme.tbThemeType.themeTypeId" >
				<option value='0' selected>请选择</option>
		          <s:iterator var="type" value="types">
                   <option value="<s:property value="#type.themeTypeId" />"><s:property value="#type.thetypeName" /></option>
                   </s:iterator>
				</select>
									</TD>
								</TR>
								<TR>
									<TD height="20">
									</TD>
									<TD>	题目范围：
									</TD>
									<TD>
				<select name="theme.tbThemeArea.themeAreaId" >
				<option value='0' selected>请选择</option>
				  <s:iterator var="area" value="themearealist">
                   <option value="<s:property value="#area.themeAreaId" />" title="<s:property value="#area.theareaName" />"><s:property value="#area.theareaName" /></option>
                   </s:iterator>
				</select>
									</TD>
									<TD>	题目难度：
									</TD>
									<TD>										
				<select name="theme.tbThemeDifficulty.themeDifId" >
				<option value='0' selected>请选择</option>
				  <s:iterator var="diff" value="themedifficultylist">
                   <option value="<s:property value="#diff.themeDifId" />"><s:property value="#diff.thedifName" /></option>
                   </s:iterator>
                   
				</select>
									</TD>
								</TR>
								<TR>
									<TD height="20">
									</TD>
									<TD>	录入人：
									</TD>
									<TD>										
				<INPUT class=box name="examNo" size=20 maxLength=20 value="">
									</TD>
								</TR>
								<TR>
									<TD height="20">
									</TD>
									<TD>	录入日期：
									</TD>
									<TD colspan="3">	由：										
										<INPUT type="text" name="examTimeStart" class="box"  value=''>&nbsp;<A href="#"><IMG name="button" src='../webep/calendar.gif' border="0" onClick="" align="center"></A>
										&nbsp;&nbsp;&nbsp;&nbsp;到：										
										<INPUT type="text" name="examTimeEnd" class="box"  value=''>&nbsp;<A href="#"><IMG name="button" src='../webep/calendar.gif' border="0" onClick="" align="center"></A>
									</TD>
								</TR>
								<TR>
									<TD height="20">
									</TD>
									<TD>
									</TD>
									<TD colspan="3" align="right">										
										<INPUT class="button" type="button"  name="search" value=" 查 找 ">
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
												<TD class="ItemTitle" height="20" width="14%">	题目编号
												</TD>
												<TD class="ItemTitle" width="14%">	题目类型
												</TD>
												<TD class="ItemTitle" width="14%">	题目范围
												</TD>
												<TD class="ItemTitle" width="14%">	题目难度
												</TD>
												<TD class="ItemTitle" width="14%">	录入人
												</TD>
												<TD class="ItemTitle" width="14%">	录入日期
												</TD>
												
											</TR>
											<TR align="middle" class="ItemBody">
												<TD class="ItemBody" height="20">	<a href='quesLibAudit2.htm'>QF20051128001</a>
												</TD>
												<TD class="ItemBody" align="left">	选择题
												</TD>
												<TD class="ItemBody" align="left">	Java基础
												</TD>
												<TD class="ItemBody" align="left">	简单
												</TD>
												<TD class="ItemBody" align="left">	周明星
												</TD>
												<TD class="ItemBody">	2005-09-20 
												</TD>
												
											</TR>
											<TR align="middle" class="ItemBody">
												<TD class="ItemBody" height="20">	<a href='quesLibAudit2.htm'>QF20051128002</a>
												</TD>
												<TD class="ItemBody" align="left">	选择题
												</TD>
												<TD class="ItemBody" align="left">	Java高级编程
												</TD>
												<TD class="ItemBody" align="left">	较难
												</TD>
												<TD class="ItemBody" align="left">	周明星
												</TD>
												<TD class="ItemBody">	2005-09-20 
												</TD>
												
											</TR>
											<TR align="middle" class="ItemBody">
												<TD colSpan=7 height=1>
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
			<TD class="pagefootTl"><IMG src="../webep/space.gif" width="778" height="1"></TD>
		</TR>
		<TR>
			<TD height="25" class="pagefoot"><FONT face="Arial, Helvetica, sans-serif">&copy;</FONT> 2005-2007  版权所有 软通动力信息技术有限公司 Powered by 软通动力武汉开发中心
			</TD>
		</TR>
	</TABLE>
</BODY>
</HTML>