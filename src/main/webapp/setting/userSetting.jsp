<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">


<HTML>
<HEAD>
<TITLE>iSoftStone培训中心考试平台</TITLE>
<LINK rel="stylesheet" href="<%=request.getContextPath()%>/webep/css/style.css" type="text/css">
</HEAD>
<BODY bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<SCRIPT language="JavaScript1.2" src="<%=request.getContextPath()%>/webep/js/coolmenus4.js"></SCRIPT>
<SCRIPT language="JavaScript1.2" src="<%=request.getContextPath()%>/webep/js/cm_addins.js"></SCRIPT>
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="pagetop">
					<TR>
						<TD width="420" nowrap class="headerLogo"><IMG src="<%=request.getContextPath()%>/webep/logo.gif">
						<IMG src="<%=request.getContextPath()%>/webep/logo_js.gif">
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
						<TD height="2" class="menuBl1"><IMG src="<%=request.getContextPath()%>/webep/space.gif" width="1" height="1"></TD>
					</TR>
					<TR>
						<TD height="3" class="menuBl2"><IMG src="<%=request.getContextPath()%>/webep/space.gif" width="1" height="1"></TD>
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
						<TD class="FormTitle" height="2" width="100%"><B>用户查询</B>
						</TD>
					</TR>
					<TR>
						<TD>	&nbsp;
						</TD>
					</TR>
					<TR>
						<TD>
						<TABLE align="center" border="0" width="621" height="105">
								<TR>
									<TD height="20" width="1%">
									</TD>
									<TD width="20%">
									用户帐号：
									</TD>
									<TD width="35%">										
									<s:textfield name="users.userId"/>
									</TD>														
									<TD width="20%">用户姓名：
									</TD>
									<TD>
				<s:textfield name="users.userName"/>
									</TD>
								</TR>
								<TR>
									<TD height="20">
									</TD>
									<TD>	用户类型：
									</TD>
									<TD>
				<select name="questionType" >
				<option value='0'>全部</option>
				<option value='1'>讲师</option>
				<option value='2'>班主任</option>
				<option value='3'>教务主任</option>
				<option value='3'>一般用户</option>
				</select>
									</TD>
									<TD>	性别：
									</TD>
									<TD>										
				<select name="questionType" >
				<option value='0'>全部</option>
				<option value='1'>男</option>
				<option value='2'>女</option>
				</select>
									</TD>
								</TR>								
								<TR>
									<TD height="20">
									</TD>
									<TD>	录入日期：
									</TD>
				                <TD colspan="3">由：					 
				<INPUT type="text" name="examTimeEnd" class="box"  value="" readonly="false">&nbsp;				 
									  <A href="javascript:show_calendar('form1.TestTimeaaa');" 
									   onmouseout="window.status='';true;" onmouseover="window.status='Date Picker';true;">
									 <IMG name="button" src='<%=request.getContextPath()%>/webep/calendar.gif' width=16 height=15 border=0 align="absmiddle"></A>
   									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;至：
   									<INPUT type="text" name="examTimeStart" class="box"  value="" readonly="false">&nbsp;				 
									  <A href="javascript:show_calendar('form1.TestTimeaaa');" 
									   onmouseout="window.status='';true;" onmouseover="window.status='Date Picker';true;">
									 <IMG name="button" src='<%=request.getContextPath()%>/webep/calendar.gif' width=16 height=15 border=0 align="absmiddle"></A>
   									
				                  
									</TD>
								</TR>
								<TR>
									<TD height="20">
									</TD>
									<TD>
									</TD>
									<TD colspan="3" align="right">										
										<INPUT class="button" type="button"  name="search" value=" 增 加 " onclick="toAdd()">
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
												<TD class="ItemTitle" height="20" width="14%">	用户帐号
												</TD>
												<TD class="ItemTitle" width="14%">	用户姓名
												</TD>
												<TD class="ItemTitle" width="14%">	性别
												</TD>
											   <TD class="ItemTitle" width="14%">	用户类型
												</TD>
												 <TD class="ItemTitle" width="14%">	录入日期
												</TD>
											</TR>
											<s:iterator var="user" value="users">
											<TR align="middle" class="ItemBody">
												<TD class="ItemBody" height="20"><a href="userSetting3.jsp">
												<s:property value="#user.userAccount"/></a>
												</TD>
												<TD class="ItemBody" align="left"><s:property value="#user.userName" />
												</TD>
												<TD class="ItemBody"><s:property value="#user.userSex"/>
												</TD>
												<TD class="ItemBody" align="left"><s:property value="#user.userType"/>
												</TD>
												<TD class="ItemBody"><s:property value="#user.userIndate"/>
												</TD>								
											</TR>
											</s:iterator>	
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
<SCRIPT language="JavaScript">function toAdd()
{	
	document.location.href='setting/userSetting2.jsp'; 
}
function create()
{	
	document.location.href='setting/userSetting1.jsp'; 
}
</SCRIPT>
