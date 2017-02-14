package com.cissst.iService;

import java.util.List;

import com.cissst.dao.ClassMangerDao;
import com.cissst.entity.TbClass;
import com.cissst.entity.TbClassType;
import com.cissst.service.ClassMangerService;


/**
 * @模块名称：ClassMangerService(班级学生管理模块接口实现类)
 * @开发人名称：
 * @开发时间：
 */
public class IClassMangerService  implements ClassMangerService{

	private  ClassMangerDao  classMangerDao;
	/**
	 * 查找所有的classType在TbClassType表中
	 */
	public void save(Object object) {
		classMangerDao.save(object);
		
	}
	
	public List<?> findList(String HQL) {
		return classMangerDao.findList(HQL);
	}
	public Iterable<?> findWithPage(int startPage, int pageSize, String HQL) {
		// TODO Auto-generated method stub
		return null;
	}
	public Object findByHQL(String HQL) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public final ClassMangerDao getClassMangerDao() {
		return classMangerDao;
	}
	public final void setClassMangerDao(ClassMangerDao classMangerDao) {
		this.classMangerDao = classMangerDao;
	}
	public void delete(Object object) {
		
		
	}
	public void update(Object object) {
		
	}
	public Object getByOne(Object object, int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<?> findClassType() {
		// TODO Auto-generated method stub
		return null;
	}

	public void save(TbClass tbClass) {
		// TODO Auto-generated method stub
		
	}

	public void delete(TbClass tbClass) {
		// TODO Auto-generated method stub
		
	}

	public void update(TbClass tbClass) {
		// TODO Auto-generated method stub
		
	}

	public Object getByOne(TbClass tbClass, int id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	

}
	
//	public static void main(String[] args) {
//		TbClassType classType=new TbClassType();
//		classType.setClatypeName("社会培训");
//		
//		classType.setClassTypeId(1);
//		classType=(TbClassType) classMangerDao.getByOne(classType.getClass(), 1);
		
//		System.out.println(classType.getClassTypeId()+classType.getClatypeName());
//				classMangerDao.delete(classType);
//	}
	
	




