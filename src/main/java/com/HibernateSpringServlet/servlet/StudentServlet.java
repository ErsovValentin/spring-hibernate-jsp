package com.HibernateSpringServlet.servlet;

import com.HibernateSpringServlet.DAO.StudentDAO;
import org.springframework.context.ApplicationContext;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "StudentServlet",urlPatterns = "/StudentServlet")
public class StudentServlet extends HttpServlet {

    /*private StudentDAO studentDAO;

    @Override
    public void init(final ServletConfig config) throws ServletException {
        super.init(config);

        final ApplicationContext springContext = (ApplicationContext) config.getServletContext()
                .getAttribute("springContext");
        this.studentDAO = springContext.getBean(StudentDAO.class);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doGet(final HttpServletRequest req, final HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("students", studentDAO.getAllStudents());
        req.getRequestDispatcher("/form.jsp").forward(req, resp);
    }*/
}
