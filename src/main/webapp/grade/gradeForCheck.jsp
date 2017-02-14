<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<HTML>
<HEAD>
<TITLE>iSoftStone培训中心考试平台</TITLE>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8"><LINK rel="stylesheet" href="<%=request.getContextPath() %>/webep/css/style.css" type="text/css">
</HEAD>
<BODY bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<SCRIPT language="JavaScript1.2" src="<%=request.getContextPath() %>/webep/js/coolmenus4.js"></SCRIPT>
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
									<TD>	&nbsp;
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
						<TD><IMG src="<%=request.getContextPath() %>/webep/space.gif" width="778" height="1"></TD>
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
			<TD width="20">	&nbsp;
			</TD>
			<TD align="left" valign="top">
				<TABLE border="0" class="top" width="98%">
					<TR>
						<TD class="FormTitle" height="2" width="100%"><B>批阅（ISSTCWH_J001_01）进行中…</B>
						</TD>
					</TR>
					<TR bordercolor="#ffffff">
						<TD>
							<TABLE border="0">
								<TR>
									<TD width="15%" valign="top">
										<TABLE border="0" width="150">
											<TR>
												<TD align="center">
													<DIV>
														<TABLE height="70" cellspacing="0" cellpadding="0" width="100" bgcolor="#ffffe7" border="1">
															<TR>
																<TD align="middle" width="100%" height="100%"><FONT id="C1" style="FONT-SIZE: 9pt; COLOR: #3A6EA5; LINE-HEIGHT: 120%; FONT-FAMILY: 宋体">&nbsp;</FONT><BR><FONT id="C2" style="FONT-SIZE: 14pt; COLOR: #ff0000; LINE-HEIGHT: 120%; FONT-FAMILY: Arial">&nbsp;</FONT><BR><FONT id="C3" style="FONT-SIZE: 9pt; COLOR: #0000DF; LINE-HEIGHT: 120%; FONT-FAMILY: 宋体">&nbsp;</FONT><BR><FONT id="C4" style="FONT-SIZE: 8pt; COLOR: #100080; LINE-HEIGHT: 120%; FONT-FAMILY: 宋体">&nbsp;</FONT>
																</TD>
															</TR>
														</TABLE>
<SCRIPT language="JavaScript1.2" src="<%=request.getContextPath() %>/webep/js/server_time.js"></SCRIPT>
													</DIV>
												</TD>
											</TR>
											<TR>
												<TD>
<HR width="98%">
												</TD>
											</TR>
											<TR>
												<TD align="center">
													<TABLE border="0">
														<TR>
															<TD><FONT color="#0000FF">批阅截止日期：2005-12-27 </FONT>
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
													<TABLE border="0" cellspacing="0" cellpadding="0">
														<TR>
															<TD><STRONG>批阅助手：</STRONG>
															</TD>
														</TR>
														<TR>
															<TD>
															
																<SELECT name="answerRef" size="15" style="width:150" multiple>
																<%int i=1; %>
																<s:iterator var="selectTheme" value="selectThemeL">
																	<OPTION value="1" style='color:gray'><%=i %><%i++; %>、<s:property value="#selectTheme.tbTheme.theRightkey"/></OPTION>
																</s:iterator>
																<s:iterator var="fillTheme" value="fillThemeL;">
																	<OPTION value="1" style='color:gray'><%=i %><%i++; %>、<s:property value="#fillTheme.tbTheme.theRightkey"/></OPTION>
																</s:iterator>
																<s:iterator var="answerTheme" value="answerThemeL;">
																	<OPTION value="1" style='color:gray'><%=i %><%i++; %>、<s:property value="#answerTheme.tbTheme.theRightkey"/></OPTION>
																</s:iterator>
																</SELECT>
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
												<TD align="center">
													<TABLE border="1" cellspacing="0" cellpadding="0">
														<TR>
															<TD>																
																<INPUT type="Button" class="button" name="commit" value=" 保 存 " onclick="save()">
															</TD>
														</TR>
														<TR>
															<TD>																
																<INPUT type="Button" class="button" name="commit" value=" 提 交 " onclick="commit()">
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
										</TABLE>
									</TD>
									<TD valign="top" height="100%">
									<jsp:include page="../grade/examPage.jsp"></jsp:include>
									</TD>
								</TR>
							</TABLE>
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
<SCRIPT language="JavaScript">function save()
{	
	if(confirm("确定保存到服务器上吗？"))
	{
		alert("保存成功！"); 
	}
}
function commit()
{	
	if(confirm("确定批阅完了吗？"))
	{
		alert("结果提交成功！"); 
		document.location.href='<%=request.getContextPath() %>/grade/gradeCheckList.jsp'; 
	}
}
</SCRIPT>
</HTML>

