<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Add Question</title>

</head>

<body>
  <h1>Ask a Question</h1>
  <form action="./add_new_question.jsp">
    <label>Subject</label>
    <select name="subject" id="subject">
        <option value="Python">Python</option>
        <option value="Java">Java</option>
        <option value="Android Studio">Android Studio</option>
        <option value="Operating System">Operating System</option>
    </select>
    <br>
    <br>
    <textarea name="question" id="question" cols="30" rows="10"></textarea>
    <br>
    <br>
    <button>Submit</button>
  </form>
</body>

</html>