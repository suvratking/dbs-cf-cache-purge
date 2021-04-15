package com.dbs.dbs.pojo;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

import lombok.Data;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({ "id", "name", "status", "paused", "type", "development_mode", "verification_key", "cname_suffix",
		"original_name_servers", "original_registrar", "original_dnshost", "modified_on", "created_on", "activated_on",
		"meta", "owner", "account", "permissions", "plan" })
@Data
public class Result {

	@JsonProperty("id")
	private String id;
	@JsonProperty("name")
	private String name;
	@JsonProperty("status")
	private String status;
	@JsonProperty("paused")
	private Boolean paused;
	@JsonProperty("type")
	private String type;
	@JsonProperty("development_mode")
	private Integer developmentMode;
	@JsonProperty("verification_key")
	private String verificationKey;
	@JsonProperty("cname_suffix")
	private String cnameSuffix;
	@JsonProperty("original_name_servers")
	private List<String> originalNameServers = null;
	@JsonProperty("original_registrar")
	private Object originalRegistrar;
	@JsonProperty("original_dnshost")
	private Object originalDnshost;
	@JsonProperty("modified_on")
	private String modifiedOn;
	@JsonProperty("created_on")
	private String createdOn;
	@JsonProperty("activated_on")
	private String activatedOn;
}