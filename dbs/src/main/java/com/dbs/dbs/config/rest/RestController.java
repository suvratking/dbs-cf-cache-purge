package com.dbs.dbs.config.rest;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.client.RestTemplate;

import com.dbs.dbs.pojo.Resp;
import com.dbs.dbs.pojo.ZoneResultResp;

@org.springframework.web.bind.annotation.RestController
public class RestController {

	private final RestTemplate restTemplate = new RestTemplate();

	@Value("${base.url}")
	private String baseUrl;

	@Value("${api.token}")
	private String apiToken;

	@PostMapping("/purgeDomains")
	public ResponseEntity<Object> pugerDomains(@RequestBody List<String> domains) {
		List<String> resp = new ArrayList<>();
		domains.forEach(domain -> {
			String url2 = null;
			try {
				url2 = getUrl(domain.replace("cug-", ""));
				System.out.println("URL ====> " + url2);
				String zoneId = getZonegId(url2);
				System.out.println(zoneId);
				if (!purgeDomainPerform(zoneId))
					resp.add(domain + "Error with the URL");
				else
					resp.add(domain + ": <span style='color:green'>Cleared</span>");
			} catch (Exception e) {
//				e.printStackTrace();
				resp.add(domain + ":   <span style='color:red'>" + e.getMessage() + "</span>");
			}

		});
		return new ResponseEntity<Object>(resp, HttpStatus.OK);

	}

	@PostMapping("/purgeUrls")
	public ResponseEntity<Object> purgeUrls(@RequestBody List<String> purgeUrls) {
		List<String> resp = new ArrayList<>();
		purgeUrls.forEach(url -> {
			String url2;
			try {
				url2 = getUrl(url.replace("cug-", ""));
				System.out.println("URL ====> " + url2);
				String zoneId = getZonegId(url);
				System.out.println(zoneId);
				if (!purgeUrlPerform(zoneId, url))
					resp.add(url + "Error with the URL");
				else
					resp.add(url + ": <span style='color:green'>Cleared</span>");
			} catch (Exception e) {
//				e.printStackTrace();
				resp.add(url + ":   <span style='color:red'>" + e.getMessage() + "</span>");
			}

		});
		return new ResponseEntity<Object>(resp, HttpStatus.OK);

	}

	private boolean purgeUrlPerform(String zoneId, String purgedUrl) {
		final String url = baseUrl + "/" + zoneId + "/purge_cache";
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		headers.set("Authorization", apiToken);
		String data = "{\r\n" + "    \"files\": [\r\n" + "        {\r\n" + "            \"url\": \"" + purgedUrl
				+ "\",\r\n" + "            \"headers\": {\r\n"
				+ "                \"Origin\": \"https://www.cloudflare.com\",\r\n"
				+ "                \"CF-IPCountry\": \"US\",\r\n"
				+ "                \"CF-Device-Type\": \"desktop\"\r\n" + "            }\r\n" + "        }\r\n"
				+ "    ]\r\n" + "}";
		HttpEntity<String> entity = new HttpEntity<String>(data, headers);
		ResponseEntity<Resp> response = restTemplate.exchange(url, HttpMethod.POST, entity, Resp.class);
		System.out.println(response.getBody());
		return response.getBody().getSuccess();
	}

	private boolean purgeDomainPerform(String zoneId) {
		final String url = baseUrl + "/" + zoneId + "/purge_cache";
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		headers.set("Authorization", apiToken);
		String data = "{\"purge_everything\":true}";
		HttpEntity<String> entity = new HttpEntity<String>(data, headers);
		ResponseEntity<Resp> response = restTemplate.exchange(url, HttpMethod.POST, entity, Resp.class);
		System.out.println(response.getBody());
		return response.getBody().getSuccess();
	}

	private String getZonegId(String domainName) {
		final String url = baseUrl + "?name=" + domainName;
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		headers.set("Authorization", apiToken);
		HttpEntity<String> entity = new HttpEntity<String>(headers);
		ResponseEntity<ZoneResultResp> response = restTemplate.exchange(url, HttpMethod.GET, entity,
				ZoneResultResp.class);
		ZoneResultResp res = response.getBody();
		System.out.println(response);
		if (res.getResultInfo().getCount() == 1) {
			System.out.println("ZONE ID ======>" + res.getResult().get(0).getId());
			return res.getResult().get(0).getId();
		} else
			throw new NullPointerException("Invalid domain, can not get ZONE id");
	}

	private String getUrl(String url) throws URISyntaxException {
		if (url.startsWith("http:/")) {
			if (!url.contains("http://")) {
				url = url.replaceAll("http:/", "http://");
			}
		}
		if (url.startsWith("https:/")) {
			if (!url.contains("https://")) {
				url = url.replaceAll("https:/", "https://");
			}
		} else {
			url = "http://" + url;
		}
		URI uri = new URI(url);
		String domain = uri.getHost();
		return domain.startsWith("www.") ? domain.substring(4) : domain;
	}

}
