<%@ include file="dbconnect.jsp"%>
	<%@ page contentType="text/html" pageEncoding="UTF-8" %>
		<html>
		<body>
		
			<% 
				String email=request.getParameter("email"); 
				String pass=request.getParameter("pass"); 
				boolean res=true;
				try { 
					Statement stmt=con.createStatement(); 
					ResultSet rs=stmt.executeQuery("select * from quora_users where email='" + email + "'"); 
		
					res = rs.next();
					if(!res) {
						%>
						<div class="container">
						<h1>
							Email does not exist!</h1> <a href="./login.jsp">
							Login Again</a> or <a href="./register.jsp">Sign Up</a> </div>
						<% }
					else if(rs.getString("password").equals(pass)) {
						session.setAttribute("email", email); 
						session.setAttribute("name", rs.getString("name"));
						response.sendRedirect("./home.jsp");
					} 
					else{ %>
						<div class="container"> <h1>Incorrect Password ! </h1>
						<a href="./login.jsp">Login Again</a> </div>
					<% }
						
						con.close(); 
					}
				     catch (Exception e) { 
							
						}
					 %>
</body>
</html>