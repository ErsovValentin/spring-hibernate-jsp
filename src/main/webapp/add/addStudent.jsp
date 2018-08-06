<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="com.HibernateSpringServlet.DAO.GroupDAO" %>
<%@ page import="com.HibernateSpringServlet.model.Group" %><%--
  Created by IntelliJ IDEA.
  User: Валик
  Date: 20.06.2018
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    final ApplicationContext springContext = (ApplicationContext) config.getServletContext()
            .getAttribute("springContext");
    GroupDAO groupDAO = springContext.getBean(GroupDAO.class);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Add Student</h1>
<form action="add/addStudentAction.jsp" method="post">
    <label>
        Name: <input type="text" name="studentName" required>
    </label>
    <label>
        Date of Birth: <input type="date" name="studentDob" required>
    </label>
    <label>
        Group: <select name="studentGroup" required >
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
    <input type="submit" value="ADD">
</form>

</body>
</html>
