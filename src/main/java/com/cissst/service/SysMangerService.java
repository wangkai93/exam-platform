package com.cissst.service;

import java.util.List;

/**
 * @模块名称：SysMangerService(系统管理模块接口)
 * @开发人名称：
 * @功          能：
 * @开发时间：
 */
public interface SysMangerService{	
	// 存储对象
	public void save(Object object);

	public void delete(Object object);
	
	public void update(Object object);
	
	public void saveOrUpdate(Object object);
	// 查询数据
	public List<?>findList(String HQL);
	// 分页查询数据
	public List<?>findWithPage(int startPage,int pageSize,String HQL);
	// 查询一条记录，根据ID;本方法和下边的的方法效果是一样的都是查询一条记录，两者可选其一

	public Object getByOne(Object object,int id);
	// 查询一条记录，根据Hql
	public Object findByHQL(String HQL);
	
}
