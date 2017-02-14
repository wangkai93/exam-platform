package com.cissst.iService;

import java.util.List;
import java.util.Set;

import com.cissst.dao.AchievementMangerDao;
import com.cissst.dao.ClassMangerDao;
import com.cissst.dao.ExamPlanMangerDao;
import com.cissst.entity.TbClass;
import com.cissst.entity.TbExamCommit;
import com.cissst.entity.TbGradePutout;
import com.cissst.entity.TbPlan;
import com.cissst.entity.TbPlanPutout;
import com.cissst.entity.TbPolicyThemes;
import com.cissst.entity.TbStudentGrade;
import com.cissst.service.AchievementMangerService;

/**
 * @模块名称：AchievementMangerService(成绩管理模块接口实现类)
 * @开发人名称：estelle
 * @开发时间：
 */
public class IAchievementMangerService implements AchievementMangerService {

	private AchievementMangerDao iAchievementMangerDao;
	private ExamPlanMangerDao iExamPlanMangerDao;
	private ClassMangerDao iClassMangerDao;

	/**
	 * 查询已发布的考试计划的信息，分页显示
	 * 
	 * @param startPage
	 * @param pageSize
	 */

	// public void findExamPlanWithPage(HttpServletRequest request,int
	// totalRows){
	// String
	// HQL="from TbPlan p ,TbGradePutout g where p.planId=g.tbPlan.planId ";
	// Pager page=PagerHelper.getPager(request, totalRows);
	// iExamPlanMangerDao.findWithPage(startPage, pageSize, HQL);
	// }

	/**
	 * 查询学生信息，根据属性（班级编号）,查询同一班的学生成绩信息
	 * 
	 * @param classId班级编号
	 * @return List<?>[]数组，包含两项，第一个为学生信息，第二个为成绩信息
	 */
//	public List<?>[] findAchievementByClassId(Object classId) {
//		List<?>[] achievement = new List<?>[3];
//		achievement[0] = iClassMangerDao.findByExample(classId);
//
//		for (Object o : achievement[0]) {
//			TbStudent students = (TbStudent) o;
//			achievement[1] = iAchievementMangerDao.findByExample(students
//					.getStuId());
//		}
//		return achievement;
//	}
	

	/**
	 * 查询所有已发布的考试成绩
	 * 
	 * @return
	 */
	public List<?> findExamPlan() {
		String HQL = "from TbGradePutout";

		return (List<?>) iExamPlanMangerDao.findList(HQL);
	}
	/**
	 * 查询所有班级类型
	 * @return
	 */
	public List<?>findClassType(){
		String HQL="from TbClassType";
		return (List<?>) iExamPlanMangerDao.findList(HQL);
	}
	
	/**
	 * 查询一个班级，通过表ID
	 */
	
	public  Object findByID(Object object,Integer id){
		return    iExamPlanMangerDao.getByOne(object, id);
	}
	/**
	 * 通过班级编号在班级类中查找一个班
	 * @param claId
	 * @return
	 */
	public TbClass findClassByClassId(String classId){
		String HQL="from TbClass where claId='"+classId+"'"; 
		return (TbClass) iAchievementMangerDao.findByHQL(HQL);
	}
	/**
	 * 按条件查询所有的已发布的成绩信息（考试计划）
	 * @param gradePutout
	 * @return
	 */
	
	
	@SuppressWarnings("unchecked")
public List<TbGradePutout> findExamPlanByExample(TbGradePutout gradePutout){
		
		String HQL=null;
		if(gradePutout==null){
			HQL="from TbGradePutout";
		}else{
			HQL=this.query(gradePutout);
		}
		
		System.out.println("#########################################"+HQL+"###########################################################");
		return (List<TbGradePutout>) iAchievementMangerDao.findList(HQL);
	}
	
	public String query(TbGradePutout gradePutout){
		String table=gradePutout.getClass().getSimpleName();
		String HQL="from   "+table+"  g where 1=1  ";
		String pre="and   g.tbPlan.";
		TbPlan plan=gradePutout.getTbPlan();
		if(plan.getPlanId()!=null&&!"".equals(plan.getPlanId())){
			HQL+=pre+"planId='"+plan.getPlanId().trim()+"'";
		}else if(plan.getPlanName()!=null&&!"".equals(plan.getPlanName())){
			HQL+=pre+"planName='"+plan.getPlanName().trim()+"'";
		}
		else if(plan.getTbClass().getClaName()!=null&&!"".equals(plan.getTbClass().getClaName())){
			HQL+=pre+"tbClass.claName='"+plan.getTbClass().getClaName().trim()+"'";
		}
		else if(plan.getTbClass().getClaState()!=null&&!"".equals(plan.getTbClass().getClaState())
				&&plan.getTbClass().getClaState().trim()!="全部"){
			HQL+=pre+"tbClass.claState='"+plan.getTbClass().getClaState().trim()+"'";
		}
		else if(plan.getPlanStarttime()!=null&&!"".equals(plan.getPlanStarttime())){
			 HQL+="and to_date(g.tbPlan.planStarttime,'yyyy-mm-dd hh:mi:ss')>=to_date('"+plan.getPlanStarttime().trim()+"','yyyy-mm-dd hh:mi:ss')";
			 if(plan.getPlanEndtime()!=null&&!"".equals(plan.getPlanEndtime())){
				 HQL+="and to_date(g.tbPlan.planStarttime,'yyyy-mm-dd hh:mi:ss')<=to_date('"+plan.getPlanEndtime().trim()+"','yyyy-mm-dd hh:mi:ss')";
			 }
		}
		else if(plan.getPlanEndtime()!=null&&!"".equals(plan.getPlanEndtime())){
			HQL+=" and to_date(g.tbPlan.planEndtime,'yyyy-mm-dd hh:mi:ss')<=to_date('"+plan.getPlanEndtime().trim()+"','yyyy-mm-dd hh:mi:ss')";
			
			if(plan.getPlanStarttime()!=null&&!"".equals(plan.getPlanStarttime())){
				HQL+=" and to_date(g.tbPlan.planEndtime,'yyyy-mm-dd hh:mi:ss')>=to_date('"+plan.getPlanStarttime().trim()+"','yyyy-mm-dd hh:mi:ss')";
			}
					
					
		}
		return HQL;
	}
	
	/**
	 * 按条件查询所有的已发布的成绩信息（考试计划）
	 * @param planPutout
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<TbPlanPutout> findExamPlanByExample(TbPlanPutout planPutout){
		String HQL=null;
		if(planPutout==null){
			HQL="from  TbPlanPutout";
			
		}else{
			HQL=this.query(planPutout);
		}
		System.out.println("#########################################"+HQL+"###########################################################");
		return (List<TbPlanPutout>) iAchievementMangerDao.findList(HQL);
	}
	public String query(TbPlanPutout planPutout){
		String table=planPutout.getClass().getSimpleName();
		String HQL="from   "+table+"  g where 1=1  ";
		String pre="and   g.tbPlan.";
		TbPlan plan=planPutout.getTbPlan();
		
		if(plan.getPlanId()!=null&&!"".equals(plan.getPlanId())){
			HQL+=pre+"planId='"+plan.getPlanId().trim()+"'";
		}
		else if(plan.getPlanDesc()!=null&&!"".equals(plan.getPlanDesc())){
			HQL+=pre+"planDesc='"+plan.getPlanDesc().trim()+"'";
		}
		else if(plan.getModState()!=null&&!"".equals(plan.getModState())){
			HQL+=pre+"modState='"+plan.getModState().trim()+"'";
		}
		else if(plan.getTbClass().getClaName()!=null&&!"".equals(plan.getTbClass().getClaName())){
			HQL+=pre+"tbClass.claName='"+plan.getTbClass().getClaName().trim()+"'";
		}
		else if(plan.getTbPrecept().getPreId()!=null&&!"".equals(plan.getTbPrecept().getPreId())
				&&plan.getTbPrecept().getPreId().trim()!="全部"){
			HQL+=pre+"tbPrecept.preId='"+plan.getTbPrecept().getPreId().trim()+"'";
		}
		else if(plan.getPlanStarttime()!=null&&!"".equals(plan.getPlanStarttime())){
			 HQL+="and to_date(g.tbPlan.planStarttime,'yyyy-mm-dd hh:mi:ss')>=to_date('"+plan.getPlanStarttime().trim()+"','yyyy-mm-dd hh:mi:ss')";
			 if(plan.getPlanEndtime()!=null&&!"".equals(plan.getPlanEndtime())){
				 HQL+="and to_date(g.tbPlan.planStarttime,'yyyy-mm-dd hh:mi:ss')<=to_date('"+plan.getPlanEndtime().trim()+"','yyyy-mm-dd hh:mi:ss')";
			 }
		}
		else if(plan.getPlanEndtime()!=null&&!"".equals(plan.getPlanEndtime())){
			HQL+=" and to_date(g.tbPlan.planEndtime,'yyyy-mm-dd hh:mi:ss')<=to_date('"+plan.getPlanEndtime().trim()+"','yyyy-mm-dd hh:mi:ss')";
			
			if(plan.getPlanStarttime()!=null&&!"".equals(plan.getPlanStarttime())){
				HQL+=" and to_date(g.tbPlan.planEndtime,'yyyy-mm-dd hh:mi:ss')>=to_date('"+plan.getPlanStarttime().trim()+"','yyyy-mm-dd hh:mi:ss')";
			}
					
					
		}
		return HQL;
	}
    /**
     * 根据考试计划ID  在学生考试提交表TbExamCommit 查询
     * 状态tbStateflag.stateFlag为 已提交 的记录，tbDel.delFlag为未删除
     * @return
     */
	@SuppressWarnings("unchecked")
	public List<TbExamCommit> findCommitPlan(Integer id){
		String HQL="from TbExamCommit t where t.tbStateflag.stateFlag='已提交' " +
				"  and t.tbDel.delFlag='未删除' " +
				"  and t.tbPlan.planTbId="+id;
		System.out.println(HQL);
		return (List<TbExamCommit>) iAchievementMangerDao.findList(HQL);
	}
	/**
	 * 根据考试计划ID与考生ID在考试提交表中查询一个学生的所有答案
	 * @param planID
	 * @param StuID
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<TbExamCommit> findCommitStu(Integer planID,Integer StuID){
		String HQL="from TbExamCommit t where t.tbStateflag.stateFlag='已提交' " +
				"  and t.tbDel.delFlag='未删除' " +
				"  and t.tbPlan.planTbId="+planID+
				"  and t.tbStudent.stuId="+StuID;
		System.out.println(HQL);
		return (List<TbExamCommit>) iAchievementMangerDao.findList(HQL);
	}
	
	@SuppressWarnings("unchecked")
	public List<TbPolicyThemes>findSelectTheme(Integer id){
		String HQL="from TbPolicyThemes t where trim((t.tbTheme.tbThemeType.thetypeName))='选择题' " +
				"  and t.tbPolicy.policyId="+ id+"  order by t.tbTheme.themeId";
		return (List<TbPolicyThemes>)iAchievementMangerDao.findList(HQL);
	}
	
	@SuppressWarnings("unchecked")
	public List<TbPolicyThemes>findFillTheme(Integer id){
		String HQL="from TbPolicyThemes t where trim((t.tbTheme.tbThemeType.thetypeName))='填空题' " +
				" and t.tbPolicy.policyId="+ id+"  order by t.tbTheme.themeId";
		return (List<TbPolicyThemes>)iAchievementMangerDao.findList(HQL);
	}
	
	@SuppressWarnings("unchecked")
	public List<TbPolicyThemes>findAnswerTheme(Integer id){
		String HQL="from TbPolicyThemes t where trim((t.tbTheme.tbThemeType.thetypeName))='问答题' " +
				" and t.tbPolicy.policyId="+ id+"  order by t.tbTheme.themeId";
		return (List<TbPolicyThemes>)iAchievementMangerDao.findList(HQL);
	}
	
	public List<TbStudentGrade[]>findAchievement(String claId){
		return iAchievementMangerDao.findAchievement(claId);
	}
	
	public Set<TbPlan> findPlansOfClass(String claId){
		return iAchievementMangerDao.findPlansOfClass(claId);
	}
	
	
	
	public AchievementMangerDao getiAchievementMangerDao() {
		return iAchievementMangerDao;
	}

	public void setiAchievementMangerDao(
			AchievementMangerDao iAchievementMangerDao) {
		this.iAchievementMangerDao = iAchievementMangerDao;
	}

	public ExamPlanMangerDao getiExamPlanMangerDao() {
		return iExamPlanMangerDao;
	}

	public void setiExamPlanMangerDao(ExamPlanMangerDao iExamPlanMangerDao) {
		this.iExamPlanMangerDao = iExamPlanMangerDao;
	}

	public ClassMangerDao getiClassMangerDao() {
		return iClassMangerDao;
	}

	public void setiClassMangerDao(ClassMangerDao iClassMangerDao) {
		this.iClassMangerDao = iClassMangerDao;
	}
	public List<?>[] findAchievementByClassId(Object classId) {
		// TODO Auto-generated method stub
		return null;
	}
	public List<TbPlan> findExamPlanByClassID(Object classId) {
		// TODO Auto-generated method stub
		return null;
	}
	public List<?> findList(String HQL) {
		// TODO Auto-generated method stub
		return null;
	}

}
