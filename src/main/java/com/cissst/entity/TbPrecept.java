package com.cissst.entity;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
@SuppressWarnings("unchecked")
public class TbPrecept implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer preceptId;
	private TbUser tbUser;
	private TbStateflag tbStateflag;
	private TbDel tbDel;
	private String preId;//考试方案编号
	private String preName;
	private String preDesc;
	private String preIntime;
	private String col1;
	private String col2;
	private String col3;
	private Set<TbPreceptPolicy> tbPreceptPolicies = new HashSet(0);
	private Set tbPreceptAuditings = new HashSet(0);
	private Set tbPlans = new HashSet(0);
	private Set tbPreceptRemoves = new HashSet(0);
	private List<TbPreceptPolicy> tbPreceptPoliciesL=new ArrayList<TbPreceptPolicy>();
	
	
	public List<TbPreceptPolicy> getTbPreceptPoliciesL() {
		for (TbPreceptPolicy tbPreceptPolicy : tbPreceptPolicies) {
			TbPolicy tbPolicy=tbPreceptPolicy.getTbPolicy();
			if("选择题".equals(tbPolicy.getTbThemeType().getThetypeName())){
				
				tbPreceptPoliciesL.add(tbPreceptPolicy);
			}
		}
		for (TbPreceptPolicy tbPreceptPolicy : tbPreceptPolicies) {
			TbPolicy tbPolicy=tbPreceptPolicy.getTbPolicy();
			if("填空题".equals(tbPolicy.getTbThemeType().getThetypeName())){
				tbPreceptPoliciesL.add(tbPreceptPolicy);
			}
		}
		for (TbPreceptPolicy tbPreceptPolicy : tbPreceptPolicies) {
			TbPolicy tbPolicy=tbPreceptPolicy.getTbPolicy();
			if("问答题".equals(tbPolicy.getTbThemeType().getThetypeName())){
				tbPreceptPoliciesL.add(tbPreceptPolicy);
			}
		}
		for (TbPreceptPolicy prePolicy : tbPreceptPoliciesL) {
			System.out.println(prePolicy.getTbPolicy().getPolId());
			Set<TbPolicyThemes>s=prePolicy.getTbPolicy().getTbPolicyThemeses();
			for (TbPolicyThemes tbPolicyThemes : s) {
				List<TbThemeKey>keys=tbPolicyThemes.getTbTheme().getTbThemeKey();
				for (TbThemeKey tbThemeKey : keys) {
					System.out.println("############################"+tbThemeKey.getThekeyId()+tbThemeKey.getTheAllkey());
				}
				
			}
			
		}
		return tbPreceptPoliciesL;
	}


	


	public void setTbPreceptPoliciesL(List<TbPreceptPolicy> tbPreceptPoliciesL) {
		this.tbPreceptPoliciesL = tbPreceptPoliciesL;
	}





	public TbPrecept() {
	}


	public TbPrecept(TbUser tbUser, TbStateflag tbStateflag, TbDel tbDel,
			String preId, String preName, String preDesc, String preIntime,
			String col1, String col2, String col3, Set tbPreceptPolicies,
			Set tbPreceptAuditings, Set tbPlans, Set tbPreceptRemoves) {
		this.tbUser = tbUser;
		this.tbStateflag = tbStateflag;
		this.tbDel = tbDel;
		this.preId = preId;
		this.preName = preName;
		this.preDesc = preDesc;
		this.preIntime = preIntime;
		this.col1 = col1;
		this.col2 = col2;
		this.col3 = col3;
		this.tbPreceptPolicies = tbPreceptPolicies;
		this.tbPreceptAuditings = tbPreceptAuditings;
		this.tbPlans = tbPlans;
		this.tbPreceptRemoves = tbPreceptRemoves;
	}

	// Property accessors

	public Integer getPreceptId() {
		return this.preceptId;
	}

	public void setPreceptId(Integer preceptId) {
		this.preceptId = preceptId;
	}

	public TbUser getTbUser() {
		return this.tbUser;
	}

	public void setTbUser(TbUser tbUser) {
		this.tbUser = tbUser;
	}

	public TbStateflag getTbStateflag() {
		return this.tbStateflag;
	}

	public void setTbStateflag(TbStateflag tbStateflag) {
		this.tbStateflag = tbStateflag;
	}

	public TbDel getTbDel() {
		return this.tbDel;
	}

	public void setTbDel(TbDel tbDel) {
		this.tbDel = tbDel;
	}

	public String getPreId() {
		return this.preId;
	}

	public void setPreId(String preId) {
		this.preId = preId;
	}

	public String getPreName() {
		return this.preName;
	}

	public void setPreName(String preName) {
		this.preName = preName;
	}

	public String getPreDesc() {
		return this.preDesc;
	}

	public void setPreDesc(String preDesc) {
		this.preDesc = preDesc;
	}

	public String getPreIntime() {
		return this.preIntime;
	}

	public void setPreIntime(String preIntime) {
		this.preIntime = preIntime;
	}

	public String getCol1() {
		return this.col1;
	}

	public void setCol1(String col1) {
		this.col1 = col1;
	}

	public String getCol2() {
		return this.col2;
	}

	public void setCol2(String col2) {
		this.col2 = col2;
	}

	public String getCol3() {
		return this.col3;
	}

	public void setCol3(String col3) {
		this.col3 = col3;
	}
	

	public Set getTbPreceptPolicies() {
		return this.tbPreceptPolicies;
	}

	public void setTbPreceptPolicies(Set tbPreceptPolicies) {
		this.tbPreceptPolicies = tbPreceptPolicies;
	}

	public Set getTbPreceptAuditings() {
		return this.tbPreceptAuditings;
	}

	public void setTbPreceptAuditings(Set tbPreceptAuditings) {
		this.tbPreceptAuditings = tbPreceptAuditings;
	}

	public Set getTbPlans() {
		return this.tbPlans;
	}

	public void setTbPlans(Set tbPlans) {
		this.tbPlans = tbPlans;
	}

	public Set getTbPreceptRemoves() {
		return this.tbPreceptRemoves;
	}

	public void setTbPreceptRemoves(Set tbPreceptRemoves) {
		this.tbPreceptRemoves = tbPreceptRemoves;
	}

}