package com.dbs.dbs.pojo;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

import lombok.Data;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({ "page", "per_page", "total_pages", "count", "total_count" })
@Data
public class ResultInfo {

	@JsonProperty("page")
	private Integer page;
	@JsonProperty("per_page")
	private Integer perPage;
	@JsonProperty("total_pages")
	private Integer totalPages;
	@JsonProperty("count")
	private Integer count;
	@JsonProperty("total_count")
	private Integer totalCount;
}