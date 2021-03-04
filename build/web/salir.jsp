<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 request.getSession().invalidate();
 request.getRequestDispatcher("index.jsp").forward(request, response);
%>
