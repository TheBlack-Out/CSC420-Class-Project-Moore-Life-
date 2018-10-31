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
@WebServlet(name = "UserRegistered", urlPatterns = {"/UserRegistered"})
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
            out.println("<title>Servlet UserRegistered</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserRegistered at " + request.getContextPath() + "</h1>");
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
        response.setContentType("text/html");
        String fname = request.getParameter("first_name");
        String lname = request.getParameter("last_name");
        String email = request.getParameter("email");
        String age = request.getParameter("age");
        int a = Integer.parseInt(age);
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String userkey = request.getParameter("user_key");
        int usrkey = Integer.parseInt(userkey);
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "CSC420Project";
        String driver = "com.mysql.jdbc.Driver";
        PrintWriter pw = response.getWriter();
        

        try {

            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbName, "root", "TOl0Pok#4");
            PreparedStatement pst = (PreparedStatement) conn.prepareStatement("insert into Moore_Life_Members values (?,?,?,?,?,?)");

            pst.setString(1, fname);
            pst.setString(2, lname);
            pst.setString(3, email);
            pst.setInt(4, a);
            pst.setString(5, username);
            pst.setString(6, password);

            int i = pst.executeUpdate();
            String msg = " ";
            if (i != 0) {
                msg = "User account has been created.";
                pw.println("<font size='5' color=blue>" + msg + "</font>");

            } else {
                msg = "Failed to create new user record";
                pw.println("<font size='5' color=red>" + msg + "</font>");
            }
            pst.close();

        } catch (Exception e) {
            pw.println(e);
        }

        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbName, "root", "TOl0Pok#4");
            PreparedStatement pst = (PreparedStatement) conn.prepareStatement("insert into Userkey values (?)");

            pst.setInt(1, usrkey);

            int i = pst.executeUpdate();
            String msg = " ";
            if (i != 0) {
                msg = "<br />" + "New userkey record has also been inserted";
                pw.println("<font size='5' color=blue>" + msg + "</font>");

            } else {
                msg = "<br />" + "Failed to insert userkey record";
                pw.println("<font size='5' color=red>" + msg + "</font>");
            }
            pst.close();
        } catch (Exception e) {
            pw.println("<br />" + e);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
