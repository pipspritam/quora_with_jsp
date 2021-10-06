<%@ include file="navbar.jsp" %>
<html>
<head>
    <title>
        Login Page
    </title>
    
    <script type="text/javascript">
        function validate()
        {
            var email = document.getElementById("email");
            var pass = document.getElementById("pass");
            if(email.value.trim()=="")
            {
                alert("Enter a valid email");
                email.style.border = "solid 3px red";
                return false;
            }
            else if(pass.value.trim()=="")
            {
                alert("Password cann't be empty");
                pass.style.border = "solid 3px red";
                return false;
            }
            else
            {
                return true;
            }
        }


    </script>
</head>

<body>
    <div class="container">
        <h1>Login</h1>
        <form onsubmit="return validate();" action="./process_login.jsp" method="post">
            <input type="email" name="email" id="email" autocomplete="off" placeholder="Email">
            <input type="password" name="pass" id="pass" placeholder="Password">
            <input type="submit" value="Login">
            <div class="link">Don't Have An Account? <a href="./register.jsp">Sign Up</a></div>
        </form>
    </div>
</body>

</html>