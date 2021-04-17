package com.stl.chseApp.config;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import lombok.extern.slf4j.Slf4j;

@Component
@Order(value = Integer.MIN_VALUE)
@Slf4j
public class JsonToUrlEncodedAuthenticationFilter extends OncePerRequestFilter {

	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws IOException,
            ServletException {
		log.info(request.getServletPath());
		if (request.getServletPath().equals("/login")) {
        	filterChain.doFilter(request, response);
        }
		filterChain.doFilter(request, response);
    }

}
