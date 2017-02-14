package com.cissst.iDao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.cissst.dao.AchievementMangerDao;
import com.cissst.entity.TbClass;
import com.cissst.entity.TbPlan;
import com.cissst.entity.TbStudent;
import com.cissst.entity.TbStudentGrade;

/**
 * @模块名称：AchievementMangerDao(成绩管理模块接口)
 * @开发人名称：
 * @功          能：
 * @开发时间:
 */
public class IAchievementMangerDao extends HibernateDaoSupport  implements AchievementMangerDao {

	public void save(Object entity) {
		super.getHibernateTemplate().save(entity);
		super.getHibernateTemplate().flush();
		super.getHibernateTemplate().clear();
		
	}

	public void update(Object entity) {
		super.getHibernateTemplate().update(entity);
		super.getHibernateTemplate().flush();
		super.getHibernateTemplate().clear();
	}

	public void delete(Object entity) {
		super.getHibernateTemplate().delete(entity);
		super.getHibernateTemplate().flush();
		super.getHibernateTemplate().clear();
	}

	public Object getByOne(Object entity, int id) {
		return getSession().get(entity.getClass(), id);
	}
	public Object findByHQL(final String HQL) {
		return super.getHibernateTemplate().execute(new HibernateCallback<Object>() {
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				return session.createQuery(HQL).uniqueResult();
			}
		});
		
	}

	public List<?> findList(final String HQL) {
		List<?> list=super.getHibernateTemplate().executeFind(
				new HibernateCallback<Object>() {
					public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				
				return session.createQuery(HQL).list();
			}
		});
		
		return list;
	}

	public List<?> findWithPage(final int startPage, final int pageSize, final String HQL) {
		List<?> list=super.getHibernateTemplate().executeFind(new HibernateCallback<Object>() {
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				return session.createQuery(HQL).setFirstResult(startPage).setMaxResults(pageSize).list();
			}
		});
		return list;
	}
	
public List<?> findByExample(Object exampleEntity) {
		
		return super.getHibernateTemplate().findByExample(exampleEntity);
	}

public List<?> findByPropertys(String queryString,Object... values){
	return super.getHibernateTemplate().find(queryString, values);
	
}

public List<?>findByProperty(String queryString,Object value ){
	return super.getHibernateTemplate().find(queryString, value);
}

public TbClass findClassByClassId(String classId){
	String HQL="from TbClass where claId='"+classId+"'"; 
	return (TbClass) this.findByHQL(HQL);
}
public List<TbStudentGrade[]>findAchievement(String claId){
	Session session=this.getHibernateTemplate().getSessionFactory().openSession();
	try {
		TbClass cla=this.findClassByClassId(claId);//这个班级
		@SuppressWarnings("unchecked")
		Set<TbStudent> classStus=cla.getTbStudents();//这个班的学生信息
		@SuppressWarnings("unchecked")
		Set<TbPlan> classPlans=cla.getTbPlans();//这个班级的考试计划
		for (TbStudent tbStudent : classStus) {
			@SuppressWarnings("unchecked")
			Set<TbStudentGrade>stuGrade=tbStudent.getTbStudentGrades();//这个学生的成绩
			TbStudentGrade[] stuGra=new TbStudentGrade[classPlans.size()];//存放每个学生成绩信息的数组
			//这个班学生的考试成绩信息,按照考试计划编号顺序存储
			List<TbStudentGrade[]> classStudentGrade=new ArrayList<TbStudentGrade[]>();
			for (TbStudentGrade tbStudentGrade : stuGrade) {
				for (int i=0;i<classPlans.size();i++) {
					for (TbPlan tbplan : classPlans) {
						//如果planId一样，则按planId的顺序存放
						if(tbStudentGrade.getTbPlan().getPlanTbId().equals(tbplan.getPlanTbId())){
							stuGra[i]=tbStudentGrade;
						}
					
					}
					
				}
				classStudentGrade.add(stuGra);
			}
			
			return classStudentGrade;
			
		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}finally{
		session.close();
	}
	return null;
	
}
public Set<TbPlan> findPlansOfClass(String claId){
	Session session=this.getHibernateTemplate().getSessionFactory().openSession();
	
		try {
			TbClass cla=this.findClassByClassId(claId);//这个班级
			
			@SuppressWarnings("unchecked")
			Set<TbPlan> classPlans= cla.getTbPlans();//这个班级的考试计划
			return classPlans;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			session.close();
		}
		return null;	
}
}