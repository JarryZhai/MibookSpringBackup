package com.servlet;

import java.io.*;
import javax.servlet.*;


//@WebServlet("/GenericServlet1")
public class GenericServlet1 extends GenericServlet {

	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out response.getWriter();
		out.println("<html><body>");
		out.println("<h1>welcome</h1>");
		out.println("</html</body>");
	}

}
