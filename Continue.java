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
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MartyGott
 */
@WebServlet(name = "Continue", urlPatterns = {"/Continue"})
public class Continue extends HttpServlet {

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
            out.println("<title>Servlet Continue</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Continue at " + request.getContextPath() + "</h1>");
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
        PrintWriter pw = response.getWriter();
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "CSC420Project";
        String driver = "com.mysql.jdbc.Driver";

        String dbUserName = "root";
        String dbPassword = "TOl0Pok#4";
        String Username = request.getParameter("otherusername");
        String msg = " ";
        String sentence = "";

        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbName, dbUserName, dbPassword);
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from levelkey where username= '" + Username + "'");

            if (rs.next()) {

                if (rs.getObject("username").equals(Username) && rs.getObject("levelkey").equals(1)) {
                    RequestDispatcher rd = request.getRequestDispatcher("Abstract.jsp");
                    rd.forward(request, response);

                } else if (rs.getObject("username").equals(Username) && rs.getObject("levelkey").equals(2)) {
                    RequestDispatcher rd = request.getRequestDispatcher("Genesis.jsp");
                    rd.forward(request, response);

                } else if (rs.getObject("username").equals(Username) && rs.getObject("levelkey").equals(3)) {
                    RequestDispatcher rd = request.getRequestDispatcher("SceneA.jsp");
                    rd.forward(request, response);

                } 
                
                else {
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.include(request, response);
                }

            }
            
            
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
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
