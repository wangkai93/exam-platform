package com.cissst.action;

import java.awt.Button;

import com.cissst.entity.TbClass;
import com.cissst.entity.TbPlan;
import com.cissst.entity.TbStateflag;
import com.cissst.service.ClassMangerService;
import com.cissst.service.ExamPlanMangerService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @模块名称：ExamPlanMangerAction(考试计划管理)
 * @开发人名称：
 * @功          能：
 * @开发时间：
 */
@SuppressWarnings("serial")
public class ExamPlanMangerAction extends ActionSupport {
	private ExamPlanMangerService examPlanMangerService;
	private ClassMangerService classMangerService;
    private TbPlan plan;
    private TbClass tbClass;
    
	public ClassMangerService getClassMangerService() {
		return classMangerService;
	}
	public void setClassMangerService(ClassMangerService classMangerService) {
		this.classMangerService = classMangerService;
	}
	public TbClass getTbClass() {
		return tbClass;
	}
	public void setTbClass(TbClass tbClass) {
		this.tbClass = tbClass;
	}
	public TbPlan getPlan() {
		return plan;
	}
	public void setPlan(TbPlan plan) {
		this.plan = plan;
	}
	public ExamPlanMangerService getExamPlanMangerService() {
		return examPlanMangerService;
	}
	public void setExamPlanMangerService(ExamPlanMangerService examPlanMangerService) {
		this.examPlanMangerService = examPlanMangerService;
	}
	
	/*
	 * 添加计划
	 */
	public String addPlan(){
		
		
		
		return null;
	}
	/*
	 * 班级列表
	 */
	public String  getClasses(){

//		classMangerService.absentPage();
		

		return null;
	}
	/*
	 * 用户列表
	 */
	public String getUsers(){
		
		
		
		
		return null;
	}
	/*
	 * 考试方案列表
	 */
	public String getExamScheme(){
		
		
		
		
		return null;
	}
}
