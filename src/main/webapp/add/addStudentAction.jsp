<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="com.HibernateSpringServlet.DAO.GroupDAO" %>
<%@ page import="com.HibernateSpringServlet.DAO.StudentDAO" %>
<%@ page import="com.HibernateSpringServlet.model.Student" %><%--
  Created by IntelliJ IDEA.
  User: Валик
  Date: 20.06.2018
  Time: 17:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    final ApplicationContext springContext = (ApplicationContext) config.getServletContext()
            .getAttribute("springContext");
    GroupDAO groupDAO = springContext.getBean(GroupDAO.class);
    StudentDAO studentDAO = springContext.getBean(StudentDAO.class);

    Student studentAdd = new Student();
    studentAdd.setName(request.getParameter("studentName"));
    studentAdd.setDateOfBirth(request.getParameter("studentDob"));
    studentAdd.setGroup(groupDAO.getGroupById(Integer.parseInt(request.getParameter("studentGroup"))));
    studentDAO.addStudent(studentAdd);
%>
<jsp:forward page="/form.jsp"/>