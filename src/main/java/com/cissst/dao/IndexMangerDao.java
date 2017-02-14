package com.cissst.dao;

import java.util.List;

import com.cissst.entity.TbUser;

/**
 * @模块名称：IndexMangerDao(首页管理模块接口)
 * 本接口定义类最基本的操作方法，程序员根据自己的模块功能可以扩展本接口，扩展时注意通用性，
 * 不要定义具体的业务操作对象，具体的业务操作对象在业务逻辑层定义
 * @开发人名称：
 * @功          能：
 * @开发时间：
 */
public interface IndexMangerDao{
	/**
	 * 查询表
	 * @param tbuser
	 * @return
	 */
	public String getId(String userName,String userPassword);
    /**
     * 登录验证
     * @param cname
     * @param cpass
     * @return
     */
	public List<TbUser> verity(String userName,String userPassword);

	/**
	 * 根据用户名，密码查询用户类型，
	 * @param cname
	 * @param cpass
	 * @return
	 */

	 /**
	  * 保存对象
	  * @param object
	  */
	  
//	public void save(Object object);
//	/**
//	 * 更新对象
//	 * @param object
//	 */
	public void update(Object object);
//	/**
//	 * 查询数据
//	 * @param HQL
//	 * @return
//	 */
	public List<?> findList(String HQL);
//
//	/**
//	 * 删除数据
//	 * @param tbuser
//	 * @return
//	 */
//	public void delete(Object object);
//	/**
//	 * 提取id;
//	 * @param cid
//	 * @return
//	 */
	
	public List<?> getList();
	
	
	public TbUser getId(Integer userId);
	
	/**
	 * 分页查询数据
	 * @param startPage
	 * @param pageSize
	 * @param HQL
	 * @return
	 */
	public List<TbUser> findWithPage(int currentPage,int pageSize,String HQL);

	/**
	 * 查询一条记录，根据Hql
	 * @param object
	 * @param id
	 * @return Object
	 */
//	public Object findByHQL(String HQL);
//	/**
//	 * 查询一条记录，根据ID
//	 * @param object
//	 * @param id
//	 * @return Object
//	 */
//	public Object getByOne(Object object,int id);
//	
//	
}
