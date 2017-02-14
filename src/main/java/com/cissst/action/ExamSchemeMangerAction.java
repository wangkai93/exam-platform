package com.cissst.action;

import java.util.List;

import com.cissst.entity.TbPolicy;
import com.cissst.entity.TbPrecept;
import com.cissst.entity.TbPreceptPolicy;
import com.cissst.entity.TbThemeType;
import com.cissst.service.ExamSchemeMangerService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @模块名称：ExamSchemeMangerAction(考试方案管理)
 * @开发人名称：
 * @功 能：
 * @开发时间：
 */
public class ExamSchemeMangerAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private ExamSchemeMangerService examSchemeMangerService;

	private List<TbThemeType> types;//
	private TbThemeType type;
	private List tps;//策略集合
	private List<Integer> tpsIds;


	private TbPolicy tp;
	private TbPrecept tpt;//考试方案表
	private List<TbPreceptPolicy> tpps;//方案策略集合


	
	@SuppressWarnings("unchecked")
	public String findList() {
		
		tps = (List<TbPolicy>) examSchemeMangerService
				.findList("from TbPolicy");
		
//		for (TbPolicy tp : tps) {
//			System.out.println(tp.getPolicyId());
//			System.out.println(tp.getPolOnescore());
//
//		}
		return "add";
	}

	@SuppressWarnings("unchecked")
	public String save(){
		 //examSchemeMangerService.save(tpt);//保存方案
//		 for (TbPolicy tp : tpsIds) {
//			 TbPreceptPolicy tpp=new TbPreceptPolicy();
//			 tpp.setTbPolicy(tp);
//			 tpp.setTbPrecept(tpt);
//			 tpt.getTbPreceptPolicies().add(tpp);
////			 examSchemeMangerService.save(tpp);
////			 System.out.println("策略编号"+tpp.getTbPolicy().getPolId()+"方案编号："+tpp.getTbPrecept().getPreId());
//		}
		 
		 for (Integer tpId: tpsIds) {
			 TbPreceptPolicy tpp=new TbPreceptPolicy();
//			 tpp.setTbPolicy(tp);
			 TbPolicy  tp =new TbPolicy();
			 tp.setPolicyId(tpId);
			 
			 tpp.setTbPolicy(tp);
			 
			 tpp.setTbPrecept(tpt);
			 
			 tpt.getTbPreceptPolicies().add(tpp);
		 }
		examSchemeMangerService.save(tpt);
		tpps=(List<TbPreceptPolicy>) examSchemeMangerService.findList("from TbPreceptPolicy");
		return "query3";
		 
	}
	@Override
	public String execute() throws Exception {
		
		return SUCCESS;
	}

	public List<TbThemeType> getTypes() {
		return types;
	}

	public void setTypes(List<TbThemeType> types) {
		this.types = types;
	}

	public TbThemeType getType() {
		return type;
	}

	public void setType(TbThemeType type) {
		this.type = type;
	}
	

	

	

	public List<TbPolicy> getTps() {
		return tps;
	}

	public void setTps(List<TbPolicy> tps) {
		this.tps = tps;
	}

	public TbPolicy getTp() {
		return tp;
	}

	public void setTp(TbPolicy tp) {
		this.tp = tp;
	}

	public ExamSchemeMangerService getExamSchemeMangerService() {
		return examSchemeMangerService;
	}
	

	public TbPrecept getTpt() {
		return tpt;
	}

	public void setTpt(TbPrecept tpt) {
		this.tpt = tpt;
	}

	public List<TbPreceptPolicy> getTpps() {
		return tpps;
	}

	public void setTpps(List<TbPreceptPolicy> tpps) {
		this.tpps = tpps;
	}

	public void setExamSchemeMangerService(
			ExamSchemeMangerService examSchemeMangerService) {
		//System.out.println("@@@@@@@@@@" + examSchemeMangerService);
		this.examSchemeMangerService = examSchemeMangerService;
	}
	public List getTpsIds() {
		return tpsIds;
	}

	public void setTpsIds(List tpsIds) {
		this.tpsIds = tpsIds;
	}

}
