package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Baby;

import com.helper.FactoryProvider;

public class SaveServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SaveServlet2() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// title,content fetch
			String babyName = request.getParameter("babyname");
			String meaning = request.getParameter("meaning");
			String sex = request.getParameter("sex");
			String religion = request.getParameter("religion");
			Baby baby = new Baby(babyName, meaning, sex, religion);
//			System.out.println(note.getId() + " : " + note.getTitle());
			// hibernate:save()
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			s.save(baby);
			tx.commit();
			s.close();
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.println("<h1 style='text-align:center;'>Data is added successfully</h1>");
			out.println("<h1 style='text-align:center;'><a href='all_baby.jsp'>View all Babies Name</a></h1>");


		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
