<%@ include file="navbar.jsp" %>
<%@ include file="dbconnect.jsp"%>
<html>
    <body>
        <%
            try{
                Statement stmt=con.createStatement(); 
                ResultSet rs=stmt.executeQuery("select * from questions");
                while(rs.next())
                {
                    String qid = rs.getString("QID");
                    Statement stmt1=con.createStatement(); 
                    ResultSet rs1=stmt1.executeQuery("select * from quora_answers where qid='"+qid+"'");
                    if(!(rs1.next())) {
                %>
                    <p><%= rs.getString("SUBJECT") %></p> 
                     <h4><%= rs.getString("QUESTION") %></h4>
                    <form action="./process_answer.jsp" method="POST">
                     <input type="hidden" name="qid" value="<%= rs.getString("QID") %>">
                     <textarea name="answer" id="answer" cols="30" rows="4" placeholder="Write Answer"></textarea> 
                     <button>Submit Answer</button>
                    
                </form><% }

                }

            }
            catch(Exception e)
            {
                out.print(e);
            }




        %>
    </body>
</html>