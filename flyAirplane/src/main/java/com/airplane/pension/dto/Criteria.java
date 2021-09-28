package com.airplane.pension.dto;

public class Criteria {
	
	
	private int page; 			// 보여줄 페이지 번호							
	private int perPageNum; 	// 페이지당 보여줄 게시글의 수
	
	// 최초 게시판 진입시 디폴트값
	public Criteria() {
		super();
		this.page = 1;
		this.perPageNum = 10;	
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if(page<=0) {
			this.page=1;
		}
		else {
			this.page = page;
		}
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int pageCount) {
		int cnt = this.perPageNum;
		if(pageCount != cnt) {
			this.perPageNum = cnt;
		}
		else {			
			this.perPageNum = pageCount;
		}
	}
	
	//mybatis 조회쿼리의 limit에 전달될 값
	public int getPageStart() {
		return (this.page - 1) * perPageNum;
	}

	@Override
	public String toString() {
		return "CriteriaDto [page=" + page + ", perPageNum=" + perPageNum + "]";
	}	
}
