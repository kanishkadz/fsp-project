package com.bank.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

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
        
        PrintWriter out = resp.getWriter();
        
        // Generate a random 10-digit account number
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        sb.append(random.nextInt(9) + 1); // Ensure first digit is non-zero
        for (int i = 0; i < 9; i++) {
            sb.append(random.nextInt(10));
        }
        long account1 = Long.parseLong(sb.toString());
        System.out.println("Generated Account Number: " + account1);
        
        // Fetching input parameters and initializing variables
        String accParam = req.getParameter("acc");
        String name = req.getParameter("name");
        String pincodeParam = req.getParameter("pincode");
        String openingBalanceParam = req.getParameter("opblc");

        // Validate and parse inputs
        long an;
        int pc;
        long opening_balance;

        try {
            // Parse account number and check if it's exactly 10 digits
            if (accParam == null || accParam.length() != 10) {
                throw new NumberFormatException("Account number must be 10 digits.");
            }
            an = Long.parseLong(accParam);

            // Parse pincode and check if it's exactly 4 digits
            if (pincodeParam == null || pincodeParam.length() != 4) {
                throw new NumberFormatException("Pincode must be 4 digits.");
            }
            pc = Integer.parseInt(pincodeParam);

            // Parse opening balance
            opening_balance = Long.parseLong(openingBalanceParam);

        } catch (NumberFormatException e) {
            resp.setContentType("text/html");
            out.println("<h3>Invalid input: " + e.getMessage() + "</h3>");
            RequestDispatcher rd = req.getRequestDispatcher("/reg.jsp");
            rd.include(req, resp);
            return;
        }

        // Database connection and record insertion
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank_system", "root", "kanishka");
            PreparedStatement ps = con.prepareStatement("INSERT INTO bank_record (account_number, pincode, name, opening_balance, generated_account) VALUES (?, ?, ?, ?, ?)");
            
            ps.setLong(1, an);
            ps.setInt(2, pc);
            ps.setString(3, name);
            ps.setLong(4, opening_balance);
            ps.setLong(5, account1);

            // Execute the query and check for success
            int check = ps.executeUpdate();
            if (check == 1) {
                out.println("<h1>Registration Successful</h1>");
                RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
                rd.forward(req, resp);
            } else {
                out.println("<h1>Registration Failed</h1>");
                RequestDispatcher rd = req.getRequestDispatcher("/NewReg");
                rd.include(req, resp);
            }
        } catch (SQLException e) {
            resp.setContentType("text/html");
            out.println("<h3>Account Number or pincode already exists</h3>");
            RequestDispatcher rd = req.getRequestDispatcher("/reg.jsp");
            rd.include(req, resp);
        } catch (Exception e) {
            resp.setContentType("text/html");
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
            RequestDispatcher rd = req.getRequestDispatcher("/reg.jsp");
            rd.include(req, resp);
        }
    }
}
