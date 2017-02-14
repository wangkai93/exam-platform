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
	<TABLE border="0" width="100%">
	<%int i=1; %>
	
		<s:iterator var="examCommit" value="planCommitL">
		
		<TR>
			<TD width="100%">
				<TABLE border="1" cellspacing="0" cellpadding="0" width="100%">
					<TR>
						<TD class="QuestionTitle">
							<TABLE border="0" width="100%" height="20">
								<TR>
									<TD width="1%">	&nbsp;
									</TD>
									<TD><STRONG>第<%=i%>题<%i++; %></STRONG>
									</TD>
									<TD width="60">										
										得分<INPUT type="text" name="question1" value="" size="5"  >
									</TD>
									<TD width="3%">	&nbsp;
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD class="QuestionBody">
							<TABLE border="0" width="100%">
								<TR>
									<TD>
										<TABLE border="0" width="100%">
											<TR>
												<TD width="2%">	&nbsp;
												</TD>
												<TD>
												<s:property value="#examCommit.tbTheme.theContent"/>
												</TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD>
										<TABLE border="0" width="100%" cellspacing="0" cellpadding="0" >
										
	<s:if test="#examCommit.tbTheme.tbThemeType.thetypeName=='选择题'">
	
										
										<s:iterator var="themeKey" value="#examCommit.tbTheme.tbThemeKey">
										
											<TR>
												<TD width="3%">	&nbsp;
												</TD>
												<TD width="40">	
												
													<INPUT type="checkbox" name="answer1" value="${themeKey.thekeyId }" checked disabled >
													<s:property value="#themeKey.thekeyId"/>
												</TD>
												<TD>	<s:property value="#themeKey.theAllkey"/>
												</TD>
												
											</TR>
											
											<s:else>
											 	<TR>
												<TD width="3%">	&nbsp;
												</TD>
												<TD width="40">	
												
													<INPUT type="checkbox" name="answer1" value="${themeKey.thekeyId }"  disabled >
													<s:property value="#themeKey.thekeyId"/>
												</TD>
												<TD>	<s:property value="#themeKey.theAllkey"/>
												</TD>
												
											</TR>
											</s:else>
											
										</s:iterator>
									
		</s:if>	
										</TABLE>
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
			</TD>
			
		</TR>
		</s:iterator>
		
	</TABLE>
</BODY>
</HTML>

