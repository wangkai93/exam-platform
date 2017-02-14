package com.cissst.utils;

import java.util.List;

public class PagerUtil {

	private int pageNo = 1 ;
	
	private int pageSize = 5;
	
	private int totalPages;
	
	private int totalRecords;
	
	private List data;
	
	public int getStartRow(){
		if(pageNo<=0)
			pageNo=1;
		else if(pageNo>totalPages)
			pageNo=totalPages;
		
		return (pageNo-1)*pageSize;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
		
		this.totalPages=(totalRecords+this.pageSize-1)/this.pageSize;
	}

	public List getData() {
		return data;
	}

	public void setData(List data) {
		this.data = data;
	}
	

}
