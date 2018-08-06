<%@ page import="com.HibernateSpringServlet.DAO.StudentDAO" %>
<%@ page import="org.springframework.context.ApplicationContext" %><%--
  Created by IntelliJ IDEA.
  User: Валик
  Date: 20.06.2018
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    final ApplicationContext springContext = (ApplicationContext) config.getServletContext()
            .getAttribute("springContext");

    StudentDAO studentDAO = springContext.getBean(StudentDAO.class);
    studentDAO.deleteStudent(studentDAO.getStudentById(Integer.parseInt(request.getParameter("student"))));
%>
<jsp:forward page="/form.jsp"/>
