<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="com.HibernateSpringServlet.DAO.GroupDAO" %>
<%@ page import="com.HibernateSpringServlet.DAO.StudentDAO" %>
<%@ page import="com.HibernateSpringServlet.model.Student" %><%--
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
    GroupDAO groupDAO = springContext.getBean(GroupDAO.class);
    StudentDAO studentDAO = springContext.getBean(StudentDAO.class);

    Student student = studentDAO.getStudentById(Integer.parseInt(request.getParameter("studentId")));
    student.setName(request.getParameter("studentName"));
    student.setDateOfBirth(request.getParameter("studentDob"));
    student.setGroup(groupDAO.getGroupById(Integer.parseInt(request.getParameter("studentGroup"))));

    studentDAO.updateStudent(student);
%>
<jsp:forward page="../form.jsp"/>