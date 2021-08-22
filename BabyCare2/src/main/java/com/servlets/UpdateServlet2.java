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

public class UpdateServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UpdateServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			
			
			String babyName = request.getParameter("babyname");
			String meaning = request.getParameter("meaning");
			String sex = request.getParameter("sex");
			String religion = request.getParameter("religion");
			
			int bid=Integer.parseInt(request.getParameter("id").trim());
			
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			
			Baby baby=s.get(Baby.class, bid);
			
			baby.setBabyName(babyName);
			baby.setMeaning(meaning);
			baby.setSex(sex);
			baby.setReligion(religion);
			
			tx.commit();
			s.close();
			
			response.sendRedirect("all_baby.jsp");
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
