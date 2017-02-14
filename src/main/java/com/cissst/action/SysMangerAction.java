package com.cissst.action;
import java.util.List;

import com.cissst.entity.TbClassType;
import com.cissst.entity.TbStudentType;
import com.cissst.entity.TbThemeArea;
import com.cissst.entity.TbThemeDifficulty;
import com.cissst.entity.TbThemeType;
import com.cissst.entity.TbUser;
import com.cissst.service.SysMangerService;
import com.opensymphony.xwork2.ActionSupport;
/**
 * @模块名称：SysMangerAction(系统管理)
 * @开发人名称：
 * @功          能：
 * @开发时间：
 */
 
public class SysMangerAction extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	private SysMangerService sysMangerService;
	private List<TbUser> users;
	private TbUser user;
	private List<TbThemeType> tts;
	private TbThemeType tt;
	private List<TbThemeArea> tas;
	private List<TbThemeDifficulty> de;
	private List<TbClassType> cts;
	private List<TbStudentType>   sts;


   public String execute() throws Exception {
	    users=(List<TbUser>) sysMangerService.findList("FROM TbUser");
	      return SUCCESS;
      }	
	@SuppressWarnings("unchecked")
	public String findUser(){
	      users=(List<TbUser>) sysMangerService.findList("FROM TbUser");
          for (TbUser user : users) {System.out.println(user.getUserName()+" " +user.getUserId()+" "+user.getUserAccount());} 
		  return "findUser";
	}
    public String findThemeType(){
		 tts=(List<TbThemeType>) sysMangerService.findList("from TbThemeType");
		 for (TbThemeType tt : tts) {System.out.print(tt.getThetypeName());}
		return "findThemeType";
	}
	public String findThemeArea(){
		tas=(List<TbThemeArea>) sysMangerService.findList("from TbThemeArea");
		 for (TbThemeArea ta : tas) {System.out.print(ta.getTheareaName());}
		return "findThemeArea";
	}
	public String findThemeDifficulty(){
		 de=(List<TbThemeDifficulty>) sysMangerService.findList("from TbThemeDifficulty");
		 for (TbThemeDifficulty t : de) {System.out.print(t.getThedifName());}
		return "findThemeDifficulty";
	}
	public String findClassType(){
		 cts=(List<TbClassType>) sysMangerService.findList("from TbClassType");
		 for (TbClassType ct : cts) {System.out.print(ct.getClatypeName());}
		 return "findClassType";
	}
	public String findStudentType(){
		sts=(List<TbStudentType>) sysMangerService.findList("from TbStudentType");
		 for (TbStudentType st : sts) {System.out.print(st.getStutypeName());}
		return "findStudentType";
	}
	
    
	
	
	public String delete(){
    	sysMangerService.delete(user);
	//将删除后的结果展现给用户
    	users=(List<TbUser>) sysMangerService.findList("FROM TbUser");
	    return SUCCESS;
}

     public String save(){
	    sysMangerService.save(user);
	    users =  (List<TbUser>) sysMangerService.findList("FROM TbUser");
	    return "save";
}
	
	public SysMangerService getSysMangerService() {
		return sysMangerService;
	}

	public void setSysMangerService(SysMangerService sysMangerService) {
		this.sysMangerService = sysMangerService;
	}

	public List<TbUser> getUsers() {
		return users;
	}

	public void setUsers(List<TbUser> users) {
		this.users = users;
	}
	public TbUser getUser() {
		return user;
	}
	public void setUser(TbUser user) {
		this.user = user;
	}
	public List<TbThemeType> getTts() {
		return tts;
	}
	public void setTts(List<TbThemeType> tts) {
		this.tts = tts;
	}
	public TbThemeType getTt() {
		return tt;
	}
	public void setTt(TbThemeType tt) {
		this.tt = tt;
	}
	public List<TbThemeArea> getTas() {
		return tas;
	}
	public void setTas(List<TbThemeArea> tas) {
		this.tas = tas;
	}
	public List<TbThemeDifficulty> getDe() {
		return de;
	}
	public void setDe(List<TbThemeDifficulty> de) {
		this.de = de;
	}
	public List<TbClassType> getCts() {
		return cts;
	}
	public void setCts(List<TbClassType> cts) {
		this.cts = cts;
	}
	public List<TbStudentType> getSts() {
		return sts;
	}
	public void setSts(List<TbStudentType> sts) {
		this.sts = sts;
	}
	

	
	
	
}
