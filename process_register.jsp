<%@ include file="dbconnect.jsp"%>
<html>
    <body>
        <%
        try
        {
            String newpassword=request.getParameter("pass");
            String conformpassword=request.getParameter("cpass");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            Statement stmt=con.createStatement();
	        ResultSet rs=stmt.executeQuery("select * from quora_users where email='"+email+"'");
            if(rs.next())
            {
                
                    %><center><h1 >Already have an account with this email!!</h1></center><%
                    %> <center><p>Try Again: <a style="color: #fb641b;" href="register.jsp">Register</a></p></center> <%
            }
            else
            {
                int i=stmt.executeUpdate("insert into quora_users values ('"+name+"','"+email+"','"+phone+"','"+newpassword+"')");
                %><center><h1 ><%=name%>, You are registered successfully</h1></center><%
                %> <center><p>Login here <a style="color: #fb641b;" href="login.jsp">Login</a></p></center> <%
            }
            con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }
        %>
    </body>
</html>