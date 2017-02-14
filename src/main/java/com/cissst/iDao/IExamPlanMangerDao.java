package com.cissst.iDao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.cissst.dao.ExamPlanMangerDao;

/**
 * @模块名称：ExamPlanMangerDao(考试计划管理模块接口)
 * @开发人名称：
 * @功          能：
 * @开发时间：
 */
public class IExamPlanMangerDao extends HibernateDaoSupport  implements ExamPlanMangerDao{
	//保存修改
	public void save(Object entity) {
		try {
			this.getHibernateTemplate().saveOrUpdate(entity);
		} catch (DataAccessException e) {
			e.printStackTrace();
		}
	}

	public void update(Object entity) {
		this.getHibernateTemplate().update(entity);
	}

	public void delete(Object entity) {
		this.getHibernateTemplate().delete(entity);
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
		List<?> list=super.getHibernateTemplate().executeFind(new HibernateCallback<Object>() {
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				System.out.println(session.createQuery(HQL).list().isEmpty());
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
		return this.getHibernateTemplate().findByExample(exampleEntity);
	}
		
}
