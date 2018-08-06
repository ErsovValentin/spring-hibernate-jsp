<%--
  Created by IntelliJ IDEA.
  User: Валик
  Date: 20.06.2018
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if("addStudent".equals(request.getParameter("dao")))
    {
%>
<jsp:forward page="add/addStudent.jsp"/>
<%
    }
    else if("updateStudent".equals(request.getParameter("dao")))
    {
%>
<jsp:forward page="update/updateStudent.jsp"/>
<%
    }
    else if ("deleteStudent".equals(request.getParameter("dao")))
    {
%>
<jsp:forward page="delete/deleteStudent.jsp"/>
<%
    }
%>