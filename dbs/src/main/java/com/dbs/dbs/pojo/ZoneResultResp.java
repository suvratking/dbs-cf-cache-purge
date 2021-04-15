package com.dbs.dbs.pojo;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

import lombok.Data;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({ "result", "result_info", "success", "errors", "messages" })
@Data
public class ZoneResultResp {

	@JsonProperty("result")
	private List<Result> result = null;
	@JsonProperty("result_info")
	private ResultInfo resultInfo;
	@JsonProperty("success")
	private Boolean success;
	@JsonProperty("errors")
	private List<Object> errors = null;
	@JsonProperty("messages")
	private List<Object> messages = null;

}