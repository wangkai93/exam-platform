package com.cissst.action;

import java.util.List;

import com.cissst.entity.TbTheme;
import com.cissst.entity.TbThemeArea;
import com.cissst.entity.TbThemeDifficulty;
import com.cissst.entity.TbThemeKey;
import com.cissst.entity.TbThemeType;
import com.cissst.service.ExampaperManagerService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @模块名称：ExampaperManagerAction(题库管理)
 * @开发人名称：
 * @功 能：
 * @开发时间：
 */
public class ExampaperManagerAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	// TbTheme tbTheme = new TbTheme();
	private ExampaperManagerService exampaperManagerService;
	TbThemeKey tbThemeKey = new TbThemeKey();
	private TbTheme theme;
	private TbThemeKey key;
	private TbThemeType type;
    private TbThemeArea area;
    private TbThemeDifficulty diff;
	private List<TbTheme> themelist;
	private List<TbThemeKey> keys;
	private List<TbThemeType> types;
	private List<TbThemeArea> themearealist;
	private List<TbThemeDifficulty> themedifficultylist;

	public String stepTwo() {
		
		System.out.println(type.getThetypeId());
		System.out.println(area.getTheareaId());
		System.out.println(diff.getThedifId());

		return "stepTwo";
	}

	@SuppressWarnings("unchecked")
	public String saveTheme() {
		exampaperManagerService.save(theme);
		
		themelist = (List<TbTheme>) exampaperManagerService
				.findList("from TbTheme");

		return "questadd";
	}

	@SuppressWarnings("unchecked")
	public String savekey() {
		exampaperManagerService.save(key);
		keys = (List<TbThemeKey>) exampaperManagerService
				.findList("from TbThemeKey");

		return "questadd3";
	}

	public String delete() {
		exampaperManagerService.delete(themelist);
		exampaperManagerService.delete(tbThemeKey);
		return SUCCESS;
	}

	public String update() {
		exampaperManagerService.update(tbThemeKey);
		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	public String findList() {
		types = (List<TbThemeType>) exampaperManagerService.findList("from TbThemeType");
		themearealist = (List<TbThemeArea>) exampaperManagerService.findList("FROM TbThemeArea");
		themedifficultylist = (List<TbThemeDifficulty>) exampaperManagerService.findList("FROM TbThemeDifficulty");
		for (TbThemeType type : types) {
			System.out.println(type.getThetypeId());
			System.out.println(type.getThetypeName());
		}
		for (TbThemeArea area : themearealist) {
			System.out.println(area.getTheareaId());
			System.out.println(area.getTheareaName());
		}
		for (TbThemeType type : types) {
			System.out.println(type.getThetypeId());
			System.out.println(type.getThetypeName());
		}
		return "questadd";
	}

	public List<TbThemeType> getThemetypelist() {
		return types;
	}

	public void setThemetypelist(List<TbThemeType> themetypelist) {
		this.types = themetypelist;
	}

	public List<TbThemeArea> getThemearealist() {
		return themearealist;
	}

	public void setThemearealist(List<TbThemeArea> themearealist) {
		this.themearealist = themearealist;
	}

	public List<TbThemeDifficulty> getThemedifficultylist() {
		return themedifficultylist;
	}

	public void setThemedifficultylist(
			List<TbThemeDifficulty> themedifficultylist) {
		this.themedifficultylist = themedifficultylist;
	}

	public TbThemeKey getTbThemeKey() {
		return tbThemeKey;
	}

	public void setTbThemeKey(TbThemeKey tbThemeKey) {
		this.tbThemeKey = tbThemeKey;
	}

	public List<TbTheme> getThemelist() {
		return themelist;
	}

	public void setThemelist(List<TbTheme> themelist) {
		this.themelist = themelist;
	}

	public ExampaperManagerService getExampaperManagerService() {
		return exampaperManagerService;
	}

	public void setExampaperManagerService(
			ExampaperManagerService exampaperManagerService) {
		this.exampaperManagerService = exampaperManagerService;
	}

	public List<TbThemeType> getTypes() {
		return types;
	}

	public void setTypes(List<TbThemeType> types) {
		this.types = types;
	}

	public TbTheme getTheme() {
		return theme;
	}

	public void setTheme(TbTheme theme) {
		System.out.println("########################" + theme);
		this.theme = theme;
	}

	public TbThemeKey getKey() {
		return key;
	}

	public void setKey(TbThemeKey key) {
		this.key = key;
	}

	public List<TbThemeKey> getKeys() {
		return keys;
	}

	public void setKeys(List<TbThemeKey> keys) {
		this.keys = keys;
	}

	public TbThemeType getType() {
		return type;
	}

	public void setType(TbThemeType type) {
		this.type = type;
	}

	public TbThemeArea getArea() {
		return area;
	}

	public void setArea(TbThemeArea area) {
		this.area = area;
	}

	public TbThemeDifficulty getDiff() {
		return diff;
	}

	public void setDiff(TbThemeDifficulty diff) {
		this.diff = diff;
	}

}
