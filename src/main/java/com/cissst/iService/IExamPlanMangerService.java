package com.cissst.iService;

import com.cissst.dao.ExamPlanMangerDao;
import com.cissst.entity.TbPlan;
import com.cissst.service.ExamPlanMangerService;


/**
 * @模块名称：ExamPlanMangerService(考试计划管理模块接口实现类)
 * @开发人名称：
 * @开发时间：
 */
public class IExamPlanMangerService implements ExamPlanMangerService{
	private  ExamPlanMangerDao  examPlanMangerDao;
	public ExamPlanMangerDao getExamPlanMangerDao() {
		return examPlanMangerDao;
	}

	public void setExamPlanMangerDao(ExamPlanMangerDao examPlanMangerDao) {
		this.examPlanMangerDao = examPlanMangerDao;
	}

	public boolean save(Object entity) {
		boolean result=true;
		try {
			examPlanMangerDao.save(entity);
		} catch (Exception e) {
			result=false;
			e.printStackTrace();
		}
		return result;
	}
 }
