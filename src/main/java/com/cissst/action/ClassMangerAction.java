package com.cissst.action;

import java.util.List;

import com.cissst.entity.TbClass;
import com.cissst.entity.TbClassType;
import com.cissst.entity.TbDel;
import com.cissst.entity.TbStudent;
import com.cissst.entity.TbStudentType;
import com.cissst.entity.TbUser;
import com.cissst.service.ClassMangerService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @模块名称：ClassMangerAction(班级学生管理)
 * @开发人名称：
 * @功 能：
 * @开发时间：
 */
public class ClassMangerAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private ClassMangerService classMangerService;
	private TbClass tbClasss;
	private TbClassType classType;
	private TbStudent tbStus;
	private TbStudentType studentType;
	private TbDel tbDels;
	private TbUser tbUsers;
	private List<TbClassType> tbClassType;
	private List<TbStudent> tbStudent;
	private List<TbStudentType> tbStudentType;
	private List<TbDel> tbDel;
	private List<TbClass> tbClass;
	private List<TbUser> tbUser;

		// ActionContext context =ActionContext.getContext();
		// Map<String,Object> session=context.getSession();
	
	@SuppressWarnings("unchecked")
	public String getList(){
		String HQL1="from TbUser";
		tbUser=(List<TbUser>) classMangerService.findList(HQL1);
		String HQL2="from TbClassType";
		tbClassType=(List<TbClassType>) classMangerService.findList(HQL2);
		return "getList";
	}
	public String insertTbClass() {
//		tbStudentType= (List<TbStudentType>) classMangerService.findClassType();
		classMangerService.save(tbClasss);
		System.out.println("insertTbClass is runing...");
		return "success";
	}
	@SuppressWarnings("unchecked")
	public String findListTbClass(){
		tbClass=(List<TbClass>) classMangerService.findList("from TbClass");
		return "tbClass";
	}
	public String findTbClassByHQL(){
		return null;
		
	}

	// 分页或缺班级列表
	public String absentPage() {
		return null;
	}
	public final ClassMangerService getClassMangerService() {
		return classMangerService;
	}
	public final void setClassMangerService(ClassMangerService classMangerService) {
		this.classMangerService = classMangerService;
	}
	public final TbClass getTbClasss() {
		return tbClasss;
	}
	public final void setTbClasss(TbClass tbClasss) {
		this.tbClasss = tbClasss;
	}
	
	public final TbStudent getTbStus() {
		return tbStus;
	}
	public final void setTbStus(TbStudent tbStus) {
		this.tbStus = tbStus;
	}
	public final TbStudentType getStudentType() {
		return studentType;
	}
	public final void setStudentType(TbStudentType studentType) {
		this.studentType = studentType;
	}
	public final TbDel getTbDels() {
		return tbDels;
	}
	public final void setTbDels(TbDel tbDels) {
		this.tbDels = tbDels;
	}
	public final TbUser getTbUsers() {
		return tbUsers;
	}
	public final void setTbUsers(TbUser tbUsers) {
		this.tbUsers = tbUsers;
	}
	
	
	public final TbClassType getClassType() {
		return classType;
	}
	public final void setClassType(TbClassType classType) {
		this.classType = classType;
	}
	public final List<TbClassType> getTbClassType() {
		return tbClassType;
	}
	public final void setTbClassType(List<TbClassType> tbClassType) {
		this.tbClassType = tbClassType;
	}
	public final List<TbStudent> getTbStudent() {
		return tbStudent;
	}
	public final void setTbStudent(List<TbStudent> tbStudent) {
		this.tbStudent = tbStudent;
	}
	public final List<TbStudentType> getTbStudentType() {
		return tbStudentType;
	}
	public final void setTbStudentType(List<TbStudentType> tbStudentType) {
		this.tbStudentType = tbStudentType;
	}
	public final List<TbDel> getTbDel() {
		return tbDel;
	}
	public final void setTbDel(List<TbDel> tbDel) {
		this.tbDel = tbDel;
	}
	public final List<TbClass> getTbClass() {
		return tbClass;
	}
	public final void setTbClass(List<TbClass> tbClass) {
		this.tbClass = tbClass;
	}
	public final List<TbUser> getTbUser() {
		return tbUser;
	}
	public final void setTbUser(List<TbUser> tbUser) {
		this.tbUser = tbUser;
	}
	
	
}
