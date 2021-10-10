
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="./CSS/navbar.css">
    </head>
<body>
    <%
            if(((String)session.getAttribute("email"))!=null){
                String name = (String)session.getAttribute("name");
        %>
    <ul>
        <li><a href="./home.jsp">Home</a></li>
        <li><a href="./ask_question.jsp">Ask A Question</a></li>
        <li><a href="./answer.jsp">Answer</a></li>
        <li><a href="./stat.jsp">Stats</a></li>
        <li><a href="./account.jsp"><%= name.split(" ", 0)[0] %></a></li>
      </ul>
      <% } else { %>
        <ul>
            <li><a href="./home.jsp">Home</a></li>
            <li><a href="./login.jsp">Ask A Question</a></li>
            <li><a href="./login.jsp">Answer</a></li>
            <li><a href="./login.jsp">Stats</a></li>
            <li><a href="./login.jsp">Login</a></li>
          </ul>
     <% } %>
</body>
</html>