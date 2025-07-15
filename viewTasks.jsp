<%@ page import="java.sql.*, java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>View Tasks</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h2>All Tasks</h2>
    <table border="1">
        <tr><th>ID</th><br><br>
        <th>Title</th><br><br>
        <th>Description</th><br><br>
        <th>Assigned To</th></tr><br><br>
        <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tasktracker", "root", "Root123");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("SELECT * FROM tasks");
                while(rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("id") %></td>
            <td><%= rs.getString("title") %></td>
            <td><%= rs.getString("description") %></td>
            <td><%= rs.getString("assignedTo") %></td>
        </tr>
        <%
                }
                con.close();
            } catch(Exception e) {
                out.print("Error: " + e);
            }
        %>
    </table>
    <a href="assignTasks.jsp">Back to Assign</a>
</body>
</html>
