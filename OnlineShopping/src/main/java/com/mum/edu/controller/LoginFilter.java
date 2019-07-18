package com.mum.edu.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mum.edu.model.Role;
import com.mum.edu.model.User;

public class LoginFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest in = (HttpServletRequest)request;
		HttpServletResponse out = (HttpServletResponse) response;
		HttpSession session = in.getSession();

		User authenticate = (session != null) ? (User)session.getAttribute("user") : null;

		boolean loggedIn = authenticate != null;
		boolean resourceRequest = in.getRequestURI().matches(".*(css|jpg|png|gif|js)");

		System.out.println("Do Filter: " + in.getRequestURI().toString());

		if (in.getRequestURI().contains("/GameStore_war/checkout") && !loggedIn) {
//			RequestDispatcher dispatcher = request.getRequestDispatcher("resources/jsp/login.jsp");
//			dispatcher.forward(request, response);

			((HttpServletResponse) response).sendRedirect("resources/jsp/login.jsp");
		} else {
			System.out.println("Do filter 2");
			System.out.println(resourceRequest);
			if (!resourceRequest) {
				System.out.println("dofilter3");
				out.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
				out.setHeader("Pragma", "no-cache"); // HTTP 1.0.
				out.setDateHeader("Expires", 0); // Proxies.
			}

			request.getRequestDispatcher("resources/jsp/checkout.jsp").forward(request, response);
		}

	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
	}

	@Override
	public void destroy() {

	}

}
