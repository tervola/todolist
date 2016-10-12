<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Collection" %>
<%@ page language="java"
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<html>
<head>
    <title>HTTP Heder Request Example</title>
</head>
<body>
<table>
  <tr>
    <td> Header name</td>
    <td> Header value</td>
  </tr>
  <%
    Enumeration<String> headerNames =  request.getHeaderNames();
    while (headerNames.hasMoreElements()){
      String headerName = headerNames.nextElement();
      Collection<String> headerValue = response.getHeaderNames();
      out.print("<tr><td>" + headerName  + "</td>\n");
      out.println("<td>" + headerValue + "</td></tr>\n");
    }
  %>
</table>
</body>
</html>
