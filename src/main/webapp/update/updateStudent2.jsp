<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="com.HibernateSpringServlet.DAO.StudentDAO" %>
<%@ page import="com.HibernateSpringServlet.DAO.GroupDAO" %>
<%@ page import="com.HibernateSpringServlet.model.Group" %>
<%@ page import="com.HibernateSpringServlet.model.Student" %><%--
  Created by IntelliJ IDEA.
  User: Валик
  Date: 20.06.2018
  Time: 18:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    final ApplicationContext springContext = (ApplicationContext) config.getServletContext()
            .getAttribute("springContext");
    StudentDAO studentDAO = springContext.getBean(StudentDAO.class);
    GroupDAO groupDAO = springContext.getBean(GroupDAO.class);
    Student student = studentDAO.getStudentById(Integer.parseInt(request.getParameter("student")));

%>
<html>
<head>
    <title>Update student</title>
</head>
<body>
<form action="updateStudentAction.jsp" method="post">
    <input type="text" required value="<%=student.getId()%>" name="studentId" hidden>
    <label>
        Name: <input type="text" name="studentName" required value="<%=student.getName()%>">
    </label>
    <label>
        Date of Birth: <input type="date" name="studentDob" required value="<%=student.getDateOfBirth()%>">
    </label>
    <label>
        Group: <select name="studentGroup" required>
        <%
            for (Group g: groupDAO.getAllGroups())
            {
        %>
        <option value="<%=g.getId()%>"><%=g.getName()%></option>
        <%
            }
        %>
    </select>
    </label>
    <input type="submit" value="Update">
</form>
</body>
</html>
