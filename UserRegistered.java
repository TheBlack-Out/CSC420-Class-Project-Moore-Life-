/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MartyGott
 */
@WebServlet(name = "NewServlet", urlPatterns = {"/NewServlet"})
public class UserRegistered extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "Asgnmnt2BackEnd";
        String driver = "com.mysql.jdbc.Driver";
        PrintWriter pw = response.getWriter();
        String msg = " ";

        // String msg2 = " ";
        int a = Integer.parseInt(Age);
        if (a < 18) {
            pw.println("Sorry " + Fname + ", you are too young to proceed");
        } else {
            pw.println("Welcome " + Fname + " " + Lname);

            try {

                Class.forName(driver).newInstance();
                conn = DriverManager.getConnection(url + dbName, "root", "TOl0Pok#4");
                PreparedStatement pst = (PreparedStatement) conn.prepareStatement("insert into membership values (?,?,?,?)");

                pst.setString(1, Fname);
                pst.setString(2, Lname);
                pst.setString(3, Email);
                pst.setInt(4, a);

                int i = pst.executeUpdate();
                if (i != 0) {
                    // msg = "Record has been inserted" + "\n";
                    msg = "Registration Successful!" + "\n";
                    pw.println("<font size='6' color=blue>" + msg + "</font>");

                } else {
                    msg = "An error has occurred. Registration unsuccessful.";
                    pw.println("<font size='6' color=blue>" + msg + "</font>");
                }
                pst.close();

            } catch (Exception e) {
                pw.println(e);
            }
        }

        /**
         * Returns a short description of the servlet.
         *
         * @return a String containing servlet description
         */
        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
