package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.User;

@WebServlet("/adminlogin")
public class AdminServlet extends HttpServlet
{

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws IOException,ServletException
	{
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		HttpSession session =req.getSession();
		
		
		if("admin@gmail.com".equals(email) && "admin".equals(password))
		{
			session.setAttribute("adminObj", new User());
			
			resp.sendRedirect("admin/index.jsp");
		}
		else
		{
			session.setAttribute("errorMSG","Invalid email and password" );
			resp.sendRedirect("admin_login_page.jsp");
		}
	}
}
