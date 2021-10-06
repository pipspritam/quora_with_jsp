<html>
    <body>
        <%@ include file="dbconnect.jsp"%>
        <%@ page contentType="text/html" pageEncoding="UTF-8"%>
        <%
        try{
            String email=(String)session.getAttribute("email");
            String password=request.getParameter("password");
            String conformpassword=request.getParameter("conformpassword");
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");

            PreparedStatement ps =con.prepareStatement("Update quora_users set name=?,phone=?, password=?  where email='"+email+"'");
            ps.setString(1,name);
            ps.setString(2,phone);
            ps.setString(3,password);
            int i = ps.executeUpdate();
            
            response.sendRedirect("./account.jsp");
            con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }    
        %>
    </body>
</html>