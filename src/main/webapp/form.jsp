<%--
  Created by IntelliJ IDEA.
  User: Валик
  Date: 20.06.2018
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.HibernateSpringServlet.DAO.StudentDAO" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="com.HibernateSpringServlet.DAO.GroupDAO" %>
<%@ page import="com.HibernateSpringServlet.model.Student" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--<% final ArrayList<Student> students = (ArrayList<Student>)request.getAttribute("students"); %>--%>
<%
    final ApplicationContext springContext = (ApplicationContext) config.getServletContext()
            .getAttribute("springContext");
    StudentDAO studentDAO = springContext.getBean(StudentDAO.class);
//    ArrayList<Student>students = studentDAO.getAllStudents();
%>


<head>
    <title>Form JSP</title>
</head>
<body>

<h1>Table student</h1>

    <table border="1px">
        <thead align="center">Students</thead>

        <%
            for(Student s : studentDAO.getAllStudents())
            {
        %>
            <tr>
                 <td>
                    <%=s.getName()%>
                 </td>
                <td>
                    <%=s.getDateOfBirth()%>
                </td>
                <td>
                    <%=s.getGroup().getName()%>
                </td>
            </tr>
        <%
            }
        %>

    </table>

    <form action="../controller.jsp" method="post">
        <label>
            Add student<input type="radio" name="dao" value="addStudent">
        </label><br>
        <label>
            Update student<input type="radio" name="dao" value="updateStudent">
        </label><br>
        <label>
            Delete student<input type="radio" name="dao" value="deleteStudent">
        </label><br>
        <input type="submit">
    </form>

</body>
</html>
