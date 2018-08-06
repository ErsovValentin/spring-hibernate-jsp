<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="com.HibernateSpringServlet.DAO.StudentDAO" %>
<%@ page import="com.HibernateSpringServlet.model.Student" %><%--
  Created by IntelliJ IDEA.
  User: Валик
  Date: 20.06.2018
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    final ApplicationContext springContext = (ApplicationContext) config.getServletContext()
            .getAttribute("springContext");
    StudentDAO studentDAO = springContext.getBean(StudentDAO.class);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Update Student</h1>
    <form action="update/updateStudent2.jsp" method="post">
    <label>
        Student: <select name="student" required >
        <%
            for (Student s:studentDAO.getAllStudents())
            {
        %>
        <option value="<%=s.getId()%>"><%=s.getName()%></option>
        <%
            }
        %>
    </select>
    </label>
    <input type="submit" value="Update">
    </form>
</body>
</html>
