package com.admin.servlet;

import java.io.IOException;
//import java.util.ArrayList;
//import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SpecialistDao;
import com.db.DBConnect;
@WebServlet("/addspecialist")
public class SpecialistSerrvlet extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String specname=req.getParameter("specname");
		
		SpecialistDao specdao =new SpecialistDao(DBConnect.getConn());
		boolean f=specdao.addSpecialist(specname);
		
		HttpSession session =req.getSession();
		
		if(f)
		{
			session.setAttribute("succcMSG", "Specialist Added");
			
			resp.sendRedirect("admin/index.jsp");
		}
		else
		{
			session.setAttribute("errorMSG","Something wrong on server" );
			resp.sendRedirect("admin/index.jsp");
		}
		
	}
	
}
