<%@ include file="navbar.jsp"%>
<%@ include file="dbconnect.jsp"%>
<html>
    <head>
        <title>Account Stats</title>
    </head>
    <body>
        <% 
        Statement stmt=con.createStatement();
        String email=(String)session.getAttribute("email");
        ResultSet rs=stmt.executeQuery("select count(*) from questions where asker_email='"+email+"'");
        if(rs.next())
        {
            %> 
            
            <p>No of question asked: <%=rs.getString("count(*)")%></p>
        <%
        } %>
    </body>
</html>