package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBConnect;
@WebServlet("/deletedoctor")
public class deletedoctor extends HttpServlet
{
	protected void doGet(HttpServletRequest req,HttpServletResponse resp)throws IOException,ServletException
	{
		int id=Integer.parseInt(req.getParameter("id"));
		
		DoctorDao dao=new DoctorDao(DBConnect.getConn());
		HttpSession session=req.getSession();
		
		if(dao.deleteDoctor(id))
		{
			session.setAttribute("succcMSG","Doctor Deleted Succesfuly");
			resp.sendRedirect("admin/viewdoctor.jsp");
		}
		else
		{
			session.setAttribute("errorMSG","Something wrong on server");
			resp.sendRedirect("admin/viewdoctor.jsp");
		}
	}
}
