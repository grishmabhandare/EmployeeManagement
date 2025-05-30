package com.servlet;

import java.io.IOException;

import com.dao.EmployeeDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeleteEmployeeServlet extends HttpServlet {
    private EmployeeDAO employeeDAO;

    public void init() {
        employeeDAO = new EmployeeDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int empno = Integer.parseInt(request.getParameter("empno"));

        try {
            boolean deleted = employeeDAO.deleteEmployee(empno);
            if(deleted) {
                response.sendRedirect("empdisplay.jsp");
            } else {
                response.getWriter().println("Employee deletion failed");
            }
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
