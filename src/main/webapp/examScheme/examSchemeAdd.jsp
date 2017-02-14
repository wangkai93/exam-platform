<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>iSoftStone培训中心考试平台</TITLE>
<META http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK rel="stylesheet"
	href="<%=request.getContextPath()%>/webep/css/style.css"
	type="text/css">
</HEAD>
<BODY bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0">

	<SCRIPT language="JavaScript1.2"
		src="<%=request.getContextPath()%>/webep/js/coolmenus4.js"></SCRIPT>
	<SCRIPT language="JavaScript1.2"
		src="<%=request.getContextPath()%>/webep/js/cm_addins.js"></SCRIPT>

	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
					class="pagetop">
					<TR>
						<TD width="420" nowrap class="headerLogo"><IMG
							src="<%=request.getContextPath()%>/webep/logo.gif"><IMG
							src="<%=request.getContextPath()%>/webep/logo_js.gif"></TD>
						<TD class="welcome"></TD>
						<TD width="187" align="right" nowrap class="headerHelp">
							<TABLE border="0" cellpadding="4" cellspacing="2">
								<TR>
									<TD align="center" class="sys"><A
										href="<%=request.getContextPath()%>/Index.htm"
										class="syslink">退出登录</A> <A href="password.htm"
										class="syslink">修改密码</A></TD>
								</TR>
							</TABLE></TD>
					</TR>
				</TABLE>

				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
					<TR>
						<TD height="24" class="menuMain">
							<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
								<TR>
									<TD>&nbsp;</TD>
								</TR>
							</TABLE></TD>
					</TR>
					<TR>
						<TD height="2" class="menuBl1"><IMG
							src="<%=request.getContextPath()%>/webep/space.gif" width="1"
							height="1">
						</TD>
					</TR>
					<TR>
						<TD height="3" class="menuBl2"><IMG
							src="<%=request.getContextPath()%>/webep/space.gif" width="1"
							height="1">
						</TD>
					</TR>
				</TABLE>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
					<TR>
						<TD><IMG src="<%=request.getContextPath()%>/webep/space.gif"
							width="778" height="1">
						</TD>
					</TR>
				</TABLE>
				<P>
					<SCRIPT language=JavaScript1.2>
						
					</SCRIPT>
				<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
					bgcolor="#999999">
					<TR>
						<TD><IMG src="<%=request.getContextPath()%>/webep/space.gif"
							width="1" height="1">
						</TD>
					</TR>
				</TABLE></TD>
		</TR>
	</TABLE>
	<BR>
	<s:form action="save_ExamSchemeManger.action" method="post">

		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
			<TR>
				<TD width="20">&nbsp;</TD>
				<TD align="left" valign="top">
					<TABLE border="0" class="top" width="700">
						<TR>
							<TD class="FormTitle" height="2" width="100%"><B>考试方案新增</B>
							</TD>
						</TR>
						<TR>
							<TD>&nbsp;</TD>
						</TR>
						<TR>
							<TD>
								<TABLE align="center" border="0" width="90%">
									<TR>
										<TD height="20" >考试方案编号：</TD>
										<TD width="20%"><s:textfield name="tpt.preId" theme="simple"></s:textfield></TD>

										<TD>考试方案名称：
										</TD>
										<td><s:textfield name="tpt.preName" theme="simple"></s:textfield></td>
									</TR>
									<TR>
									<TD >考试方案描述：</TD>
<TD colspan="3"><s:textarea name="tpt.preDesc" theme="simple" cols="60" rows="3"></s:textarea></TD>
									</TR>
								</TABLE></TD>
						</TR>
						<TR>
							<TD>
								<HR width="98%"></TD>
						</TR>
						<TR>
							<TD valign="top">
								<TABLE align="center" width="97%" border="0">
									<TR>
										<TD height="30">考试方案策略：</TD>
									</TR>
									<TR>
										<TD height="40" width="96%" valign="top">
											<TABLE align="center" border="0" class="ItemList" height="20"
												width="96%">
												<TR height="24" align="middle">
													<TD class="ItemTitle" height="20" width="5%">选择</TD>
													<TD class="ItemTitle" width="5%">序号</TD>
													<TD class="ItemTitle" width="17%">题目范围</TD>
													<TD class="ItemTitle" width="9%">题目难度</TD>
													<TD class="ItemTitle" width="10%">题目类型</TD>
													<TD class="ItemTitle" width="10%">出题方式</TD>
													<TD class="ItemTitle" width="18%">批阅方式</TD>
													<TD class="ItemTitle" width="8%">每题分数</TD>
													<TD class="ItemTitle" width="8%">题量</TD>

													<TD class="ItemTitle" width="8%">分数合计</TD>
												</TR>
												<s:iterator var="tp" value="tps">

													<TR align="middle" class="ItemBody">
														<TD class="ItemBody" height="20"><input
															type="checkbox" name="tpsIds" value="<s:property
																	value="#tp.policyId" />"></TD>
														<TD class="ItemBody"><a href="examSchemeQuery4.jsp"><s:property
																	value="#tp.policyId" />
												
														</a></TD>
														<TD class="ItemBody" align="left"><s:property
																value="#tp.tbThemeArea.theareaName" /></TD>
														<TD class="ItemBody"><s:property
																value="#tp.tbThemeDifficulty.thedifName" /></TD>
														<TD class="ItemBody"><s:property
																value="#tp.tbThemeType.thetypeName" /></TD>
														<TD class="ItemBody"><s:property value="#tp.examMode" />
														</TD>
														<TD class="ItemBody" align="left"><s:property
																value="#tp.polReworkmode" /></TD>
														<TD class="ItemBody" align="right"><s:property
																value="#tp.polOnescore" /></TD>
														<TD class="ItemBody" align="right"><s:property
																value="#tp.polThemecount" /></TD>

														<TD class="ItemBody" align="right">20</TD>
													</TR>
												</s:iterator>
												<TR align="middle" class="ItemBody">
													<TD class="ItemBody" height="20" colspan="8"><b>合
															计</b></TD>

													<TD class="ItemBody" align="right"><b>40</b></TD>

													<TD class="ItemBody" align="right"><b>100</b></TD>
												</TR>
											</TABLE></TD>
									</TR>
									<TR>
										<TD align="center"><input class=button type="button"
											name="Submit2222" value=" 全 选 " onlick=""> <input
											class=button type="button" name="Submit223" value="新增策略项"
											onClick="toAdd()"> <input class=button type="button"
											name="Submit223" value="删除策略项" onClick="toDelete()">
										</TD>
									</TR>
								</TABLE></TD>
						</TR>
						<TR>
							<TD>
								<HR width="98%"></TD>
						</TR>
						<TR>
							<TD>
								<TABLE align="center" border="0" width="90%">
									<TR>
										<TD align="right">
										<input class=button type="submit" name="bsave" value=" 提 交 " />
										 <input class=button type=button name="bsave" value=" 保 存 "
											onClick="save()"/> <input class=button type=reset
											name="bsave" value=" 删 除 " onClick="ddelete()"/></TD>
									</TR>
								</TABLE></TD>
						</TR>
						<TR>
							<TD>&nbsp;</TD>
						</TR>
					</TABLE></TD>
			</TR>
		</TABLE>
		<BR>
	</s:form>
	<TABLE width="100%" border="0" cellpadding="0" cellspacing="0">
		<TR>
			<TD class="pagefootTl"><IMG
				src="<%=request.getContextPath()%>/webep/space.gif" width="778"
				height="1">
			</TD>
		</TR>
		<TR>
			<TD height="25" class="pagefoot"><FONT
				face="Arial, Helvetica, sans-serif">&copy;</FONT> 2005-2007 版权所有
				软通动力信息技术有限公司 Powered by 软通动力武汉开发中心</TD>
		</TR>
	</TABLE>

</BODY>
</HTML>
<SCRIPT language="JavaScript">
	function toAdd() {
		document.location.href = 'examSchemeAdd2.jsp';
	}
	function toDelete() {
		if (confirm("确定删除该策略吗？")) {
			alert("删除成功！");
			document.location.href = 'examSchemeAdd.jsp';
		}
	}
	function commit() {
		if (confirm("确定提交该考试方案吗？")) {
			alert("提交成功！");
			document.location.href = 'save_ExamSchemeManger.action';
		}
	}
	function save() {

		document.location.href = 'examSchemeAdd.jsp';

	}
	function ddelete() {
		if (confirm("确定删除该考试方案吗？")) {
			alert("删除成功！");
			document.location.href = 'examSchemeAdd.jsp';
		}
	}
</SCRIPT>