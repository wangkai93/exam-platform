package com.cissst.action;

import java.util.List;

import com.cissst.entity.TbUser;
import com.cissst.service.IndexMangerService;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @模块名称：IndexMangerAction(首页管理,该首先包括学生端的首页模块和查询模块)
 * @开发人名称：
 * @功 能：
 * @开发时间：
 */
public class IndexMangerAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private IndexMangerService indexMangerService;
	private Integer userId;
	String newpass;
	String userName;
	String userPassword;
	String userType;
	List<TbUser> tbuser;
	String userSex;
	TbUser tu;
	String userAccount;
	String userLasttime;
	String userpass;

	// public String login() {
	// String resultStr = this.NONE;
	// boolean bl = indexMangerService.verity(userName, userPassword);
	// userType=indexMangerService.find(userName, userPassword);
	//
	//
	// System.out.println("userType"+userType);
	//
	// if (bl) {
	// if ("教务主任".equals(userType)) {
	// System.out.println(11111111);
	// resultStr = "jiaowuzhuren";
	// }
	// if ("班主任".equals(userType)) {
	// System.out.println(11111111);
	// resultStr = "banzhuren";
	// }
	// if ("讲师".equals(userType)) {
	// System.out.println(11111111);
	// resultStr = "jiangshi";
	// }
	// if ("一般用户".equals(userType)) {
	// System.out.println(11111111);
	// resultStr = "yibanyonghu";
	// }
	// if ("管理员".equals(userType)) {
	// System.out.println(2222222);
	// resultStr = "guanliyuan";
	// }
	//
	// } else {
	// resultStr ="error";
	// }
	// return resultStr;
	// }

	public String login() {
		System.out.println("tbuser" + tbuser);
		String resultStr = this.NONE;
		tbuser = indexMangerService.verity(userName, userPassword);
		userSex = tbuser.get(0).getUserSex();
		userAccount = tbuser.get(0).getUserAccount();
		userLasttime = tbuser.get(0).getUserLasttime();
		userType = tbuser.get(0).getUserType();
		System.out.println("tbuser" + tbuser);
		System.out.println("userType" + userType);
		System.out.println("tbuser" + tbuser.get(0).getUserName());

		System.out.println("tbuser.size()" + tbuser.size());
		if (tbuser.size() > 0) {
			if ("教务主任".equals(userType)) {
				System.out.println(11111111);
				resultStr = "jiaowuzhuren";
			}
			if ("班主任".equals(userType)) {
				System.out.println(11111111);
				resultStr = "banzhuren";
			}
			if ("讲师".equals(userType)) {
				System.out.println(11111111);
				resultStr = "jiangshi";
			}
			if ("一般用户".equals(userType)) {
				System.out.println(11111111);
				resultStr = "yibanyonghu";
			}
			if ("管理员".equals(userType)) {
				tbuser=indexMangerService.getList();
				
				resultStr = "guanliyuan";
			}
		} else {
			resultStr = "error";
		}
		return resultStr;
	}

	public String pass() {
		tbuser = indexMangerService.verity(userName, userPassword);
		
		return "pass";
	}

	public void update() {

		tbuser = indexMangerService.verity(userName, userPassword);
		userId = tbuser.get(0).getUserId();
		userPassword = tbuser.get(0).getUserPassword();
	
		tu = indexMangerService.getId(userId);
	
		tu.setUserPassword(newpass);
		indexMangerService.update(tu);
	}
	
	public String findUserList(){
	    tbuser=indexMangerService.getList();
		System.out.println(tbuser);
		return "guanliyuan";
	}
	
	public IndexMangerService getIndexMangerService() {
		return indexMangerService;
	}

	public void setIndexMangerService(IndexMangerService indexMangerService) {
		this.indexMangerService = indexMangerService;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public List<TbUser> getTbuser() {
		return tbuser;
	}

	public void setTbuser(List<TbUser> tbuser) {
		this.tbuser = tbuser;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getUserAccount() {
		return userAccount;
	}

	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}

	public String getUserLasttime() {
		return userLasttime;
	}

	public void setUserLasttime(String userLasttime) {
		this.userLasttime = userLasttime;
	}

	public TbUser getTu() {
		return tu;
	}

	public void setTu(TbUser tu) {
		this.tu = tu;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getNewpass() {
		return newpass;
	}

	public void setNewpass(String newpass) {
		this.newpass = newpass;
	}

	public String getUserpass() {
		return userpass;
	}

	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}

}
