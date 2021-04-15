package com.dbs.dbs.pojo;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

import lombok.Data;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({ "result", "success", "errors", "messages" })
@Data
public class Resp {

	@JsonProperty("result")
	private RespResult result;
	@JsonProperty("success")
	private Boolean success;
	@JsonProperty("errors")
	private List<Object> errors = null;
	@JsonProperty("messages")
	private List<Object> messages = null;

}