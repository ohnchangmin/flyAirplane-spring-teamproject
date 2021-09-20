package com.airplane.pension.dto;

public class PageMakerDto {
	
	private int totalCount;				// 게시판 전체 데이터 개수
	private int displayPageNum=10;		// 게시판에 한번에 보여질 페이지 개수
	private int startPage;				// 현재 화면에서 보이는 startPage 번호
	private int endPage;				// 현재 화면에서 보이는 endPage 번호
	private boolean prev;
	private boolean next;
	
	private CriteriaDto cri;

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		
		calcData();
	}
	
	private void calcData() {
		endPage = (int)(Math.ceil(cri.getPage() / (double)displayPageNum) * displayPageNum);
		startPage = (endPage - displayPageNum) + 1;
		
		int tempEndPage = (int)(Math.ceil(totalCount / (double)cri.getPerPageNum()));
		
		if(endPage>tempEndPage) {
			endPage = tempEndPage;
		}
		
		prev = startPage == 1 ? false : true;
		next = endPage * cri.getPerPageNum() >= totalCount ? false : true;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public CriteriaDto getCri() {
		return cri;
	}

	public void setCri(CriteriaDto cri) {
		this.cri = cri;
	}

	@Override
	public String toString() {
		return "PageMakerDto [totalCount=" + totalCount + ", displayPageNum=" + displayPageNum + ", startPage="
				+ startPage + ", endPage=" + endPage + ", prev=" + prev + ", next=" + next + ", cri=" + cri + "]";
	}
}
