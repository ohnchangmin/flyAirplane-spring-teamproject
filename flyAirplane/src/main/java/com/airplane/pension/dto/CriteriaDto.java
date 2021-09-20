package com.airplane.pension.dto;

public class CriteriaDto {
	
	
	private int page; 			// 보여줄 페이지 번호							
	private int perPageNum; 	// 페이지당 보여줄 게시글의 수
	
	// 최초 게시판 진입시 디폴트값
	public CriteriaDto() {
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
			return;
		}
		this.page = page;
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		if(perPageNum<=0 || perPageNum >100) {
			this.perPageNum=10;
			return;
		}
		this.perPageNum = perPageNum;
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
