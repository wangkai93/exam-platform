package com.cissst.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.cissst.entity.TbClass;
import com.cissst.entity.TbClassType;
import com.cissst.entity.TbExamCommit;
import com.cissst.entity.TbGradePutout;
import com.cissst.entity.TbPlan;
import com.cissst.entity.TbPlanPutout;
import com.cissst.entity.TbPolicy;
import com.cissst.entity.TbPolicyThemes;
import com.cissst.entity.TbPrecept;
import com.cissst.entity.TbPreceptPolicy;
import com.cissst.entity.TbStudent;
import com.cissst.entity.TbStudentGrade;
import com.cissst.entity.TbTheme;
import com.cissst.entity.TbThemeKey;
import com.cissst.service.AchievementMangerService;
import com.opensymphony.xwork2.ActionSupport;
/**
 * @模块名称：AchievementMangerAction(成绩管理)
 * @开发人名称：estelle
 * @功          能：
 * @开发   时间：
 */

public class AchievementMangerAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	List<TbClassType>classTypes;//所有班级状态
	
	
//	private Integer classId;//班级编号
	private TbClass cla;//这个班
	private Set<TbPlan> classPlans;//这个班的考试计划
	private List<TbStudentGrade[]> classStudentGrade;//这个班学生的考试成绩信息,按照考试计划编号顺序存储
	
	
	private TbGradePutout gradePuto;//查询考试计划要用的模板（已发布的考试成绩）
	private List<TbGradePutout> gradePutoutL;
	
	
	private TbPlanPutout planPuto;//查询考试计划要用的模板（已发布的考试计划)
	private List<TbPlanPutout> planPutoL;
	
	private TbPlan plan;//成绩发布表中的TbPlan，用于显示学生成绩//用于收集页面planTbId//用于在成绩批阅时页面上显示考试计划的所有题目
	private List<TbExamCommit> planCommitL=new ArrayList<TbExamCommit>();//用于显示学生提交的考试方案信息
	private List<TbPolicy>policyL=new ArrayList<TbPolicy>();//按照策略类型（选择，填空，问答题）顺序排序
	private TbStudent student;//用于收集页面stuId
	private AchievementMangerService achievementMangerService;
	private List<TbPolicyThemes> selectThemeL;
	private List<TbPolicyThemes> fillThemeL;
	private List<TbPolicyThemes> answerThemeL;
	
	

	
	/**
	 * 按条件查询已发布的考试计划
	 * @return
	 */
	public String findPutoutPlan(){
		planPutoL=achievementMangerService.findExamPlanByExample(planPuto);
		return "gradeCheck";
	}
	
	/**
	 *查询一门考试计划的成绩
	 * @return
	 */
	
	public String findPlanGrade(){
		plan=(TbPlan) achievementMangerService.findByID(planPuto.getTbPlan(), planPuto.getTbPlan().getPlanTbId());
		return"gradeQuery2";
	}
	/**
	 * 按条件查询所有已发布考试成绩(考试计划)
	 * @return
	 */
	
	public String findExamPlan(){
		
		
		gradePutoutL=(List<TbGradePutout>) achievementMangerService.findExamPlanByExample(gradePuto);
		
		return "gradeQuery";
	}
	
	/**
	 * 查询这个班的学生成绩，根据属性（班级编号）
	 * @param 
	 * @return 
	 */
	public String findAchievement(){
		
		cla=(TbClass) achievementMangerService.findByID(cla,cla.getClassId());
		return "gradeQuery3";
	}
	/**
	 * 
	 * @return
	 */
	public String scorePlan(){
		planCommitL=achievementMangerService.findCommitPlan(plan.getPlanTbId());
		return "gradeCheckList";
	}
	/**
	 * 根据学生考试提交表中的考试计划ID查询该考试计划中的所有题目，一个考试计划对象
	 * @return
	 */
	public String scoreStu(){
		plan=(TbPlan) achievementMangerService.findByID(new TbPlan(), plan.getPlanTbId());
		
		 List<TbExamCommit> temp=achievementMangerService.findCommitStu(plan.getPlanTbId(), student.getStuId());
		 
		for (TbExamCommit tbExamCommit : temp) {
			TbTheme theme=tbExamCommit.getTbTheme();
			
			if(theme.getTbThemeType().getThetypeName().trim().equals("选择题")){
				planCommitL.add(tbExamCommit);
			}
			if(theme.getTbThemeType().getThetypeName().trim().equals("填空题")){
				planCommitL.add(tbExamCommit);
			}
			if(theme.getTbThemeType().getThetypeName().trim().equals("问答题")){
				planCommitL.add(tbExamCommit);
			}
		}
		
		return "gradeForCheck";
	}
	
	public AchievementMangerService getAchievementMangerService() {
		return achievementMangerService;
	}
	public void setAchievementMangerService(
			AchievementMangerService achievementMangerService) {
		this.achievementMangerService = achievementMangerService;
	}
	
	
	
	public List<TbStudentGrade[]> getClassStudentGrade() {
		return classStudentGrade;
	}
	public void setClassStudentGrade(List<TbStudentGrade[]> classStudentGrade) {
		this.classStudentGrade = classStudentGrade;
	}
	
	public Set<TbPlan> getClassPlans() {
		return classPlans;
	}
	public void setClassPlans(Set<TbPlan> classPlans) {
		this.classPlans = classPlans;
	}
	public TbClass getCla() {
		return cla;
	}
	public void setCla(TbClass cla) {
		this.cla = cla;
	}
	public List<TbClassType> getClassTypes() {
		return classTypes;
	}
	public void setClassTypes(List<TbClassType> classTypes) {
		this.classTypes = classTypes;
	}
	public TbGradePutout getGradePuto() {
		return gradePuto;
	}
	public void setGradePuto(TbGradePutout gradePuto) {
		this.gradePuto = gradePuto;
	}
	public List<TbGradePutout> getGradePutoutL() {
		return gradePutoutL;
	}
	public void setGradePutoutL(List<TbGradePutout> gradePutoutL) {
		this.gradePutoutL = gradePutoutL;
	}
	public TbPlanPutout getPlanPuto() {
		return planPuto;
	}
	public void setPlanPuto(TbPlanPutout planPuto) {
		this.planPuto = planPuto;
	}
	public List<TbPlanPutout> getPlanPutoL() {
		return planPutoL;
	}
	public void setPlanPutoL(List<TbPlanPutout> planPutoL) {
		this.planPutoL = planPutoL;
	}

	public TbPlan getPlan() {
		return plan;
	}

	public void setPlan(TbPlan plan) {
		this.plan = plan;
	}

	public List<TbExamCommit> getPlanCommitL() {
		return planCommitL;
	}

	public void setPlanCommitL(List<TbExamCommit> planCommitL) {
		this.planCommitL = planCommitL;
	}

	public TbStudent getStudent() {
		return student;
	}

	public void setStudent(TbStudent student) {
		this.student = student;
	}

	public List<TbPolicy> getPolicyL() {
		return policyL;
	}

	public void setPolicyL(List<TbPolicy> policyL) {
		this.policyL = policyL;
	}

	public List<TbPolicyThemes> getSelectThemeL() {
		return selectThemeL;
	}

	public void setSelectThemeL(List<TbPolicyThemes> selectThemeL) {
		this.selectThemeL = selectThemeL;
	}

	public List<TbPolicyThemes> getFillThemeL() {
		return fillThemeL;
	}

	public void setFillThemeL(List<TbPolicyThemes> fillThemeL) {
		this.fillThemeL = fillThemeL;
	}

	public List<TbPolicyThemes> getAnswerThemeL() {
		return answerThemeL;
	}

	public void setAnswerThemeL(List<TbPolicyThemes> answerThemeL) {
		this.answerThemeL = answerThemeL;
	}
	
	
	
	

	
}
