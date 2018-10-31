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
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MartyGott
 */
@WebServlet(name = "LoginArea", urlPatterns = {"/LoginArea"})
public class LoginArea extends HttpServlet {

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
            out.println("<title>Servlet LoginArea</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginArea at " + request.getContextPath() + "</h1>");
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
        String Username = request.getParameter("username");
        String Password = request.getParameter("password");
        String msg = " ";
        String sentence = "You have been successfully logged in ";
        String sentence2 = "Welcome to MooreLife! ";
        String sentence3 = "Sorry no user exists with that name or password ";
        String sentence4 = "Sorry incorrect username / password. Please try again ";

        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbName, dbUserName, dbPassword);
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery("select * from moore_life_members where username= '" + Username + "' and userpassword= '" + Password + "'");

            while (rs.next()) {

                if (rs.getObject("username").equals(Username)) {
                    msg = "<font size='6' color=green>" + sentence + Username + "!" + "<br />" + sentence2 + "</font>";
                    request.setAttribute("MESSAGE", msg);
                    RequestDispatcher rd = request.getRequestDispatcher("Welcome.jsp");
                    rd.forward(request, response);

                } else if (rs.getObject("username").equals(null)) {
                    msg = "<font size='6' color=red>" + sentence3 + "</font>";
                    request.setAttribute("MESSAGE", msg);
                    RequestDispatcher rd = request.getRequestDispatcher("FailedLogin.jsp");

                    rd.forward(request, response);

                } else {

                    msg = "<font size='6' color=red>" + sentence4 + "</font>";
                    request.setAttribute("MESSAGE", msg);
                    RequestDispatcher rd = request.getRequestDispatcher("FailedLogin.jsp");

                    rd.forward(request, response);
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
