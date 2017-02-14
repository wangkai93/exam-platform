package com.cissst.service;

import java.util.List;
import java.util.Set;

import com.cissst.entity.TbClass;
import com.cissst.entity.TbExamCommit;
import com.cissst.entity.TbGradePutout;
import com.cissst.entity.TbPlan;
import com.cissst.entity.TbPlanPutout;
import com.cissst.entity.TbPolicyThemes;
import com.cissst.entity.TbStudentGrade;

/**
 * @模块名称：AchievementMangerService(成绩管理模块接口)
 * @开发人名称：
 * @功          能：
 * @开发时间：
 */
public interface AchievementMangerService{
	 List<?> findExamPlan();
	 /**
		 * 查询学生信息，根据属性（班级编号）,查询同一班的学生成绩信息
		 * @param classId班级编号
		 * @return List<?>[]数组，包含两项，第一个为学生信息，第二个为成绩信息
		 */
	 public List<?>[] findAchievementByClassId(Object classId);
	 /**
	  * 
	  * @param classId
	  * @return
	  */
	 public List<TbPlan> findExamPlanByClassID(Object classId);
	 
	 
	 /**
	  * 通过班级编号在班级类中查找一个班
	  * @param classId
	  * @return TbClass
	  */
	 public TbClass findClassByClassId(String classId);
	 
	 
	 public List<TbStudentGrade[]>findAchievement(String claId);
	 
	 public Set<TbPlan> findPlansOfClass(String claId);
	 /**
		 * 查询所有班级类型
		 * @return
		 */
	 public List<?>findClassType();
	 /**
		 * 按条件查询所有的已发布的成绩信息（考试计划）
		 * @param gradePutout
		 * @return
		 */
		
	 public List<TbGradePutout> findExamPlanByExample(TbGradePutout gradePutout);
	 
	 /**
      * 按条件查询所有的已发布的成绩信息（考试计划）
	  * @param gradePutout
	  * @return
	  */
		
	public List<TbPlanPutout> findExamPlanByExample(TbPlanPutout planPutout);
	/**
	 * 通过ID查询一条记录
	 * @param object
	 * @param classId
	 * @return
	 */
	public Object findByID(Object object,Integer id);
	/**
     * 考试计划ID  在学生考试提交表TbExamCommit 查询
     * 状态tbStateflag.stateFlag为 已提交 的记录，tbDel.delFlag为未删除
     * @return
     */
	public List<TbExamCommit> findCommitPlan(Integer id);
	
	/**
	 * 根据考试计划ID与考生ID在考试提交表中查询一个学生的所有答案
	 * @param planID
	 * @param StuID
	 * @return
	 */
	public List<TbExamCommit> findCommitStu(Integer planID,Integer StuID);
	
	public List<TbPolicyThemes>findSelectTheme(Integer id);
	public List<TbPolicyThemes>findFillTheme(Integer id);
	public List<TbPolicyThemes>findAnswerTheme(Integer id);
	 
}
