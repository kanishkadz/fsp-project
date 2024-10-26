package com.bank.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/withdraw")
public class withdraw extends HttpServlet {
	
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=resp.getWriter();
		out.println("Withdraw Page");
		int d=Integer.parseInt(req.getParameter("withdraw1"));
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank_system","root","Arun@2001");
			
			HttpSession session=req.getSession();  
		    int sk1=(int)session.getAttribute("session_key");
			
			
			PreparedStatement ps=con.prepareStatement("select amount from bank_record where acc=?");
			ps.setInt(1, sk1);
			ResultSet s=ps.executeQuery();
			
			int val=0;
			if(s.next()) {
				val=s.getInt("amount");}
			
			
			if(d>val) {
				resp.setContentType("text/html");
				out.println("<h4>Insufficient Balance</h4>");
				RequestDispatcher rd=req.getRequestDispatcher("/mainoption.jsp");
				rd.include(req, resp);
			}
			
			
			
			else {
			int sum=val-d;
			
			//   update
			
			
			 Statement statement = con.createStatement();
			 int count = statement.executeUpdate("UPDATE bank_record SET amount =" + sum + " WHERE acc=" + sk1);
			
			
			resp.setContentType("text/html");
			out.println("<h4>withdraw Successfully</h4>");
			RequestDispatcher rd=req.getRequestDispatcher("/mainoption.jsp");
			rd.forward(req, resp);
			}
			
			
			
			
		}
		catch(Exception e) {
			out.print(e.getMessage());
		}
		

	
	
	
	
	}
	
	
	
	

}
