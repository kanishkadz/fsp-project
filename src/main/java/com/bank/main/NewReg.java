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
        
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        // Generate a random 10-digit account number
        Random random = new Random();
        StringBuilder sb = new StringBuilder();
        sb.append(random.nextInt(9) + 1); // Ensure first digit is non-zero
        for (int i = 0; i < 9; i++) {
            sb.append(random.nextInt(10));
        }
        long generatedAccountNumber = Long.parseLong(sb.toString());
        System.out.println("Generated Account Number: " + generatedAccountNumber);
        
        // Fetching input parameters
        String name = req.getParameter("name");
        String pincodeParam = req.getParameter("pincode");
        String openingBalanceParam = req.getParameter("opblc");

        // Validate and parse inputs
        int pincode;
        long openingBalance;

        try {
            // Validate pincode length (4 digits)
            if (pincodeParam == null || pincodeParam.length() != 4) {
                throw new NumberFormatException("Pincode must be 4 digits.");
            }
            pincode = Integer.parseInt(pincodeParam);

            // Validate opening balance input
            openingBalance = Long.parseLong(openingBalanceParam);

        } catch (NumberFormatException e) {
            out.println("<h3>Invalid input: " + e.getMessage() + "</h3>");
            RequestDispatcher rd = req.getRequestDispatcher("/reg.jsp");
            rd.include(req, resp);
            return;
        }

        // Database connection and record insertion
        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank_system", "root", "kanishka");
             PreparedStatement ps = con.prepareStatement(
                     "INSERT INTO bank_record (account_number, pincode, name, opening_balance) VALUES (?, ?, ?, ?)")) {
            
            // Register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            ps.setLong(1, generatedAccountNumber);
            ps.setInt(2, pincode);
            ps.setString(3, name);
            ps.setLong(4, openingBalance);

            // Execute the query and check for success
            int check = ps.executeUpdate();
            if (check == 1) {
                out.println("<h1>Registration Successful</h1>");
                RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
                rd.forward(req, resp);
            } else {
                out.println("<h1>Registration Failed</h1>");
                RequestDispatcher rd = req.getRequestDispatcher("/reg.jsp");
                rd.include(req, resp);
            }
        } catch (SQLException e) {
            // Check for specific SQL error codes for better error handling
            out.println("<h3>Error: Account Number or Pincode already exists</h3>");
            RequestDispatcher rd = req.getRequestDispatcher("/reg.jsp");
            rd.include(req, resp);
        } catch (Exception e) {
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
            RequestDispatcher rd = req.getRequestDispatcher("/reg.jsp");
            rd.include(req, resp);
        }
    }
}
