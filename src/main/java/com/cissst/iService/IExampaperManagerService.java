package com.cissst.iService;


import java.util.List;

import com.cissst.dao.ExampaperManagerDao;
import com.cissst.service.ExampaperManagerService;

/**
 * @模块名称：ExampaperManagerService(题库管理模块接口实现类)
 * @开发人名称：
 * @开发时间：
 */
public class IExampaperManagerService  implements ExampaperManagerService{
	private  ExampaperManagerDao  exampaperManagerDao;
  
	public ExampaperManagerDao getExampaperManagerDao() {
		return exampaperManagerDao;
	}

	public void setExampaperManagerDao(ExampaperManagerDao exampaperManagerDao) {
		this.exampaperManagerDao = exampaperManagerDao;
	}

	public void save(Object object) {
		exampaperManagerDao.save(object);
		
	}

	public void delete(Object object) {
		exampaperManagerDao.delete(object);
		
	}

	public void update(Object object) {
		exampaperManagerDao.update(object);
		
	}

	public List<?> findList(String HQL) {
		return exampaperManagerDao.findList(HQL);
	}

	public Iterable<?> findWithPage(int startPage, int pageSize, String HQL) {
		return exampaperManagerDao.findWithPage(startPage, pageSize, HQL);
	}

	public Object getByOne(Object object, int id) {
		return exampaperManagerDao.getByOne(object, id);
	}

	public Object findByHQL(String HQL) {
		return exampaperManagerDao.findByHQL(HQL);
	}

	
	
}
