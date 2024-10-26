package com.bank.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/NewReg")
public class NewReg extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		PrintWriter out=resp.getWriter();
		int an=Integer.parseInt(req.getParameter("acc"));
		String name=req.getParameter("name");
		int pc=Integer.parseInt(req.getParameter("pincode"));
		int opening_balance=Integer.parseInt(req.getParameter("opblc"));
		
		
		//   counting
		int c1=req.getParameter("acc").length();
		int c2=req.getParameter("pincode").length();
		
		
		
		
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank_system","root","Arun@2001");
			PreparedStatement ps=con.prepareStatement("insert into bank_record values(?,?,?,?)");
			ps.setInt(1, an);
			ps.setInt(2, pc);
			ps.setString(3, name);
			ps.setInt(4, opening_balance);
			
			if(c1==10 && c2==4) {
		int check=ps.executeUpdate();
		if(check==1) {
			out.println("<h1>Register Successful</h1>");
			RequestDispatcher rd=req.getRequestDispatcher("/login.jsp");
			rd.forward(req, resp);
		}
		else {
			out.println("<h1>not sucessful</h1>");
			RequestDispatcher rd=req.getRequestDispatcher("/NewReg");
			rd.include(req, resp);
		}
			}
			else {
				resp.setContentType("text/html");
				out.println("<h3>Please provide correct details</h3>");
				RequestDispatcher rd=req.getRequestDispatcher("/reg.jsp");
				rd.include(req, resp);
			}
		}
		
		catch(SQLException e ) {
			resp.setContentType("text/html");
			out.println("<h3>Acount Number or pincode already exist</h3>");
			RequestDispatcher rd=req.getRequestDispatcher("/reg.jsp");
			rd.include(req, resp);
		}
		catch(Exception e) {
			out.print(e.getMessage());
		}
		
		
		
		
		
		
		
		
		
	}

}
