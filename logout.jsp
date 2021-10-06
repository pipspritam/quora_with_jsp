<html>
    <body>
        <% 
        try{
            session.setAttribute("email",null); 
            response.sendRedirect("./home.jsp");
        }
        catch(Exception e)
        {
            out.print(e);
        }
         %>
    </body>
</html>