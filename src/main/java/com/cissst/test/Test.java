package com.cissst.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.cissst.dao.AchievementMangerDao;
import com.cissst.entity.TbClass;
import com.cissst.service.AchievementMangerService;


public class Test {


public void testClassId(){}

public static void main(String[] args) {
	ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
	
	@SuppressWarnings("unused")
	AchievementMangerService service = (AchievementMangerService) ac.getBean("iAchievementMangerService");
//	ExamPlanMangerDao dao=(ExamPlanMangerDao) ac.getBean("iExamPlanMangerDao");
//	AchievementMangerDao dao = (AchievementMangerDao) ac.getBean("iAchievementMangerDao");
	TbClass cla=service.findClassByClassId("ISSTCWH_J001_01");

}

}
