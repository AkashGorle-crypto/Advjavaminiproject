package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Baby;

import com.helper.FactoryProvider;


public class DeleteServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteServlet2() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			int bId=Integer.parseInt(request.getParameter("id").trim());
			
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			Baby baby=(Baby)s.get(Baby.class, bId);
			s.delete(baby);		
			tx.commit();
			s.close();
			response.sendRedirect("all_baby.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
