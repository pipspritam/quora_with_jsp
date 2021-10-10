<%@ include file="dbconnect.jsp"%>
<%!
    String get_answer_id(String qid, String email)
    {
        String tme = java.time.LocalTime.now().toString();
        String new_aid = qid.substring(4,6);
        String new_email = email.substring(0,4);
        String aid = "AID"+tme+new_aid+new_email;
        return aid;
    }
%>
<html>
    <%
    try
    {
        String email = (String)session.getAttribute("email");
        String name = (String)session.getAttribute("name");
        String answer = request.getParameter("answer");
        String qid = request.getParameter("qid");
        String aid = get_answer_id(qid, email);
        String answer_date = java.time.LocalDate.now().toString();
        String answer_time = java.time.LocalTime.now().toString();
        Statement stmt=con.createStatement();
        int i=stmt.executeUpdate("insert into QUORA_ANSWERS values ('"+aid+"','"+answer+"','"+qid+"','"+email+"','"+answer_date+"','"+answer_time+"','"+name+"')");
        response.sendRedirect("./answer.jsp");

    }
    catch(Exception e)
    {
        out.print(e);
    }
    %>
</html>