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
        }
        Statement stmt1=con.createStatement();
        ResultSet rs1=stmt.executeQuery("select count(*) from quora_answers where answerer_email='"+email+"'");
        if(rs1.next())
        {
            %>
            <p>No of question answered: <%=rs1.getString("count(*)")%></p>
        <%
        } 
        %>
        <h5>My questions </h5>
        <%
            Statement stmt2=con.createStatement(); 
            ResultSet rs2=stmt.executeQuery("select * from questions where asker_email='"+email+"'");
            while(rs2.next())
            { %>

                <p><%= rs2.getString("SUBJECT") %></p> 
                <h4><%= rs2.getString("question") %></h4>

                <%

            }
        %>
    </body>
</html>