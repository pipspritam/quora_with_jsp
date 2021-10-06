<%@ include file="dbconnect.jsp"%>
<%!
    String get_question_id(String subject, String email)
    {
        String tme = java.time.LocalTime.now().toString();
        String new_qid = subject.substring(0,2);
        String new_email = email.substring(0,4);
        String qid = "QID"+tme+new_qid+new_email;
        return qid;
    }
%>
<html>
    <%
    try
    {
        String email = (String)session.getAttribute("email");
        String subject = request.getParameter("subject");
        String question = request.getParameter("question");
        String qid = get_question_id(subject, email);
        String ask_date = java.time.LocalDate.now().toString();
        String ask_time = java.time.LocalTime.now().toString();
        Statement stmt=con.createStatement();
        int i=stmt.executeUpdate("insert into questions values ('"+qid+"','"+subject+"','"+question+"','"+email+"','"+ask_date+"','"+ask_time+"')");
        response.sendRedirect("./home.jsp");

    }
    catch(Exception e)
    {
        out.print(e);
    }
    %>
</html>