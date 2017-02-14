package com.cissst.iService;

import java.util.List;

import com.cissst.dao.IndexMangerDao;
import com.cissst.entity.TbUser;
import com.cissst.service.IndexMangerService;

/**
 * @模块名称：IndexMangerService(首页管理模块接口实现类)
 * @开发人名称：
 * @开发时间：
 */
public class IIndexMangerService implements IndexMangerService{

	private  IndexMangerDao  indexMangerDao;


//	public boolean verity(String userName, String userPassword) {
//		// TODO Auto-generated method stub
//		return indexMangerDao.verity(userName, userPassword);
//	}
	public List<?> findList(String HQL) {
	return indexMangerDao.findList(HQL);
}
	
	public List<TbUser> verity(String userName, String userPassword) {
		// TODO Auto-generated method stub
		return  indexMangerDao.verity(userName, userPassword);
	}


	
	public List<TbUser> findWithPage(int currentPage, int pageSize, String HQL) {
		// TODO Auto-generated method stub
		return indexMangerDao.findWithPage(currentPage, pageSize, "from TbUser");
	}
	public void update(TbUser tbuser) {
		indexMangerDao.update(tbuser);
		
		
	}
	public List<TbUser> getList() {
		// TODO Auto-generated method stub
		return  (List<TbUser>) indexMangerDao.getList() ;
	}

	
	public TbUser getId(Integer userId) {
		// TODO Auto-generated method stub
		return indexMangerDao.getId(userId);
	}

	
	public IndexMangerDao getIndexMangerDao() {
		return indexMangerDao;
	}

	public void setIndexMangerDao(IndexMangerDao indexMangerDao) {
		this.indexMangerDao = indexMangerDao;
	}

	
	

	

	
  
}
