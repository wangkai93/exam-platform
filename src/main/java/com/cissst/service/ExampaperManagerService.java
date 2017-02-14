package com.cissst.service;

import java.util.List;

/**
 * @模块名称：ExampaperManagerService(题库管理模块接口)
 * @开发人名称：
 * @功          能：
 * @开发时间：
 */
public interface ExampaperManagerService  {
	
	/**
	 * 存储对象
	 * @param object
	 */
	public void save(Object object);
	/**
	 * 删除对象
	 * @param object
	 */
	public void delete(Object object);
	/**
	 * 更新对象
	 * @param object
	 */
	public void update(Object object);
	/**
	 * 查询数据
	 * @param HQL
	 * @return
	 */
	public List<?>findList(String HQL);
	/**
	 * 分页查询数据
	 * @param startPage
	 * @param pageSize
	 * @param HQL
	 * @return
	 */
	public Iterable<?>findWithPage(int startPage,int pageSize,String HQL);
	/**
	 * 查询一条记录，根据ID
	 * @param object
	 * @param id
	 * @return Object
	 */
	public Object getByOne(Object object,int id);
	
	/**
	 * 查询一条记录，根据Hql
	 * @param object
	 * @param id
	 * @return Object
	 */
	public Object findByHQL(String HQL);
		
}
