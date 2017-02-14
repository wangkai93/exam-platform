package com.cissst.iService;

import java.util.List;

import com.cissst.dao.SysMangerDao;
import com.cissst.service.SysMangerService;

/**
 * @模块名称：SysMangerService(系统管理模块接口实现类)
 * @开发人名称：
 * @开发时间：
 */
public class ISysMangerService implements SysMangerService{
	private  SysMangerDao  sysMangerDao;
	public SysMangerDao getSysMangerDao() {
		return sysMangerDao;
	}
	public void setSysMangerDao(SysMangerDao sysMangerDao) {
		this.sysMangerDao = sysMangerDao;
}
	public void save(Object object) {
		sysMangerDao.save(object);
		
	}
	public void delete(Object object) {
		sysMangerDao.delete(object);
		
	}
	public void update(Object object) {
		sysMangerDao.update(object);
		
	}
	public void saveOrUpdate(Object object) {
		sysMangerDao.saveOrUpdate(object);
		
	}
	public List<?> findList(String HQL) {
        return sysMangerDao.findList(HQL);

	}
	public List<?> findWithPage(int startPage, int pageSize, String HQL) {
		
		return sysMangerDao.findWithPage(startPage, pageSize, HQL);
	}
	public Object getByOne(Object object, int id) {
		
		return sysMangerDao.getByOne(object, id);
	}
	public Object findByHQL(String HQL) {
		
		return sysMangerDao.findByHQL(HQL);
	}
	}