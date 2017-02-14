package com.cissst.iDao;

import java.sql.SQLException;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.cissst.dao.IndexMangerDao;
import com.cissst.entity.TbUser;




/**
 * @模块名称：IndexMangerDao(首页管理模块接口)
 * @开发人名称：
 * @功          能：
 * @开发时间：
 */
public class IIndexMangerDao extends HibernateDaoSupport  implements IndexMangerDao{
//	public void save(Object entity) {
//		super.getHibernateTemplate().save(entity);
//		super.getHibernateTemplate().flush();
//		super.getHibernateTemplate().clear();
//	}
	
	public String getId(String userName,String userPassword) {
		  
		List<String> li=this.getHibernateTemplate().find("select userId from TbUser where userName='"+userName+"'and userPassword='"+userPassword+"'");
		
		 String userId=(String)li.get(0);
			return userId ;
	}

//
	public void update(Object entity) {
		super.getHibernateTemplate().update(entity);
		super.getHibernateTemplate().flush();
		super.getHibernateTemplate().clear();
	}
//
//	public void delete(Object entity) {
//		super.getHibernateTemplate().delete(entity);
//		super.getHibernateTemplate().flush();
//		super.getHibernateTemplate().clear();
//	}
//
//	public Object getByOne(Object entity, int id) {
//		return getSession().get(entity.getClass(), id);
//	}
//	public Object findByHQL(final String HQL) {
//		
//		return super.getHibernateTemplate().execute(new HibernateCallback<Object>() {
//			public Object doInHibernate(Session session) throws HibernateException,
//					SQLException {
//				return session.createQuery("from TbUser where userName='"+userName+"'and userPassword='"+userPassword+"'").uniqueResult();
//			}
//		});
//		
//	}
//
	public List<?> findList(final String HQL) {
		List<?> list=super.getHibernateTemplate().executeFind(new HibernateCallback<Object>() {
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				return session.createQuery(HQL).list();
			}
		});
		return  list;
	}

	public List<TbUser> findWithPage(final int currentPage, final int pageSize, final String HQL) {
		List<TbUser> list=super.getHibernateTemplate().executeFind(new HibernateCallback<Object>() {
		
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				return session.createQuery(HQL).setFirstResult(currentPage).setMaxResults(pageSize).list();
			}
		});
		return list;
	}

//	public boolean verity(String userName, String userPassword) {
//	List<TbUser> lis=this.getHibernateTemplate().find("from TbUser where userName='"+userName+"'and userPassword='"+userPassword+"'");
//	    
//		System.out.println(lis);
//       if(lis.size()>0){
//        	return true;
//       }
//       return false; 
//	}

	public List<TbUser> verity(String userName, String userPassword) {
		List<TbUser> lis=this.getHibernateTemplate().find("from TbUser where userName='"+userName+"'and userPassword='"+userPassword+"'");
		    
			System.out.println(lis);
			return  lis;
	      
	}
//	public S find(String userName, String userPassword) {
//		
//		List<TbUser> li=this.getHibernateTemplate().find("from TbUser where userName='"+userName+"'and userPassword='"+userPassword+"'");
//		return (TbUser) li;
//		
//		
//			  
//			
//				
//	}
	

//
//	public TbUser getId(Integer userId) {
//		// TODO Auto-generated method stub
//		 return this.getHibernateTemplate().get(TbUser.class, userId);
//	}

	public TbUser getId(Integer userId) {
	
		return this.getHibernateTemplate().get(TbUser.class, userId);

	}

	public List<?> getList() {
	return 	this.getHibernateTemplate().find("from TbUser");
	
	}
	
		
}
