package com.cissst.service;

import java.util.List;

import com.cissst.entity.TbUser;

/**
 * @模块名称：IndexMangerService(首页管理模块接口)
 * @开发人名称：
 * @功          能：
 * @开发时间：
 */
public interface IndexMangerService{
//	public boolean verity(String userName,String userPassword);
	
	

		public List<TbUser> getList() ;
		public List verity(String userName,String userPassword);
		public TbUser getId(Integer userId);

		 
			public List<TbUser> findWithPage(int currentPage,int pageSize,String HQL);
		 
			public void update(TbUser tbuser);
			
			public List<?> findList(String HQL);
}