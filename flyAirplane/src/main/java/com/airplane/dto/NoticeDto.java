package com.airplane.dto;

public class NoticeDto {
	private int idx;
	private String title;
	private String name;
	private String content;
	private String wdate;
	
	public NoticeDto(int idx, String title, String name, String content, String wdate) {
		super();
		this.idx = idx;
		this.title = title;
		this.name = name;
		this.content = content;
		this.wdate = wdate;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	@Override
	public String toString() {
		return "NoticeDto [idx=" + idx + ", title=" + title + ", name=" + name + ", content=" + content + ", wdate="
				+ wdate + "]";
	}
	
	
	
	
}
