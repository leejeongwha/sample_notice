package com.sample.notice.model;

public class Paging {
	private Integer page = 1;
	private Integer count = 10;

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}
}
