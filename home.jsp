<html>
    <%@ include file="dbconnect.jsp"%>
    <%@ include file="navbar.jsp" %>
    <h1>Home</h1>
    <body>
        <%
            try{
                Statement stmt=con.createStatement(); 
                ResultSet rs=stmt.executeQuery("select * from questions");
                while(rs.next())
                { %>
                    
                    
                     <p><%= rs.getString("SUBJECT") %></p> 
                     <h4><%= rs.getString("question") %></h4>
                     <h5>Answer: </h5>
                     <%
                        String qid=rs.getString("QID");
                        Statement stmt1=con.createStatement(); 
                        ResultSet rs1=stmt1.executeQuery("select * from quora_answers where qid = '"+qid+"'");
                        while(rs1.next())
                        { %>
                            <h5><%= rs1.getString("answerer_name") %></h5>
                            <p><%= rs1.getString("answer") %></p>

                            <%  
                        }

                }

            }
            catch(Exception e)
            {
                out.print(e);
            }




        %>
    </body>
</html>
