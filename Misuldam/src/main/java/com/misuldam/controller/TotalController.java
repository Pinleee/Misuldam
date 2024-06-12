package com.misuldam.controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class TotalController extends HttpServlet{
	private static final long serialVersionUID = 5073606535912945162L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getRequestURI();
		PrintWriter out = resp.getWriter();
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
	}
	
}
