package com.cissst.iService;

import java.util.List;

import com.cissst.dao.ExamSchemeMangerDao;
import com.cissst.service.ExamSchemeMangerService;

/**
 * @模块名称：ExamSchemeMangerService(考试方案管理模块接口实现类)
 * @开发人名称：
 * @开发时间：
 */
public class IExamSchemeMangerService implements ExamSchemeMangerService{
	private  ExamSchemeMangerDao  examSchemeMangerDao;	
	public ExamSchemeMangerDao getExamSchemeMangerDao() {
		return examSchemeMangerDao;
	}

	public void setExamSchemeMangerDao(ExamSchemeMangerDao examSchemeMangerDao) {
		this.examSchemeMangerDao = examSchemeMangerDao;
	}

	public void save(Object object) {
		examSchemeMangerDao.save(object);
		
	}

	public void delete(Object object) {
		examSchemeMangerDao.delete(object);
		
	}

	public void update(Object object) {
		examSchemeMangerDao.update(object);
		
	}

	public List<?> findList(String HQL) {
		
		return examSchemeMangerDao.findList(HQL);
	}

	public List<?> findWithPage(int startPage, int pageSize, String HQL) {
		
		return examSchemeMangerDao.findWithPage(startPage, pageSize, HQL);
	}

	public Object findByHQL(String HQL) {
		
		return examSchemeMangerDao.findByHQL(HQL);
	}

	public Object getByOne(Object object, int id) {
		
		return examSchemeMangerDao.getByOne(object, id);
	}

}
