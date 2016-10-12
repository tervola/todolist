<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>

<head>
    <title>Tervola's TODO List</title>
</head>
  <body>
    <table bordercolor="black" border="5" align="center" cellpadding="50">
      <tr><td>

      <table border="0" width="100%">
        <tr align=left bgcolor="#808080"><td><h2>My Tasks</h2></td></tr>
      </table>

      <h1>My TODO List</h1>
      <hr color="grey">
      <br/><br/>

      <table border="1" width="100%" cellpadding="10">
        <tr align=left bgcolor="#808080">
          <td width="60%"><h1>Name</h1></td>
          <td><h1>Category</h1></td>
          <td><h1>Complete</h1></td>
        </tr>

        <form METHOD="POST" name="update_tasks">
          <c:set var="count" value="0" scope="page" />
          <c:forEach items="${result}" var="record" varStatus="loop">
          <tr align=left >
            <td>${record.key}</td>
            <td>${record.value} </td>
            <td><input type="checkbox" name = "${record.key}" ></td></tr>
              <c:set var="count" value="${count + 1}" scope="page"/>
        </c:forEach>
      </table>

      <br/><br/>
      <input TYPE="submit" value="Update Tasks">
      </form>

      <br/><br/>
      <form METHOD="POST">
        <input TYPE="submit" value="Clear Table" name="clear_tasks">
      </form>
      <hr color="grey">
      <br/><br/>

      <form METHOD="POST">
      <table width="1200" border="0" cellpadding="5">
        <tr>
          <td width="15%">Task Name </td>
          <td><input type="text" name="task_name" ></td>
        </tr>
        <tr>
          <td>Task Category </td>
          <td><input type="text" name="category"></td>
        </tr>
        <tr>
          <td><input TYPE="submit" value="Add Task" name="new_record"></td><td></td>
        </tr>
      </table>
      </form>
      <font color="red"> <h1>${error}</h1></font><br/></h1>

      </td></tr>
    </table>
  </body>
</html>
