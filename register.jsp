
<html>
    <head>
        <title>new_registration</title>
        <script type="text/javascript">
            function validate()
            {
                var name = document.getElementById("name");
                var email = document.getElementById("email");
                var phone = document.getElementById("phone");
                var pass = document.getElementById("pass");
                var cpass = document.getElementById("cpass");
                
                if(name.value.trim()=="")
                {
                    alert("Name cann't be empty");
                    name.style.border = "solid 3px red";
                    return false;
                }
                else if(email.value.trim()=="")
                {
                    alert("Enter a valid email");
                    email.style.border = "solid 3px red";
                    return false;
                }
                else if(phone.value.trim()=="")
                {
                    alert("Phone cann't be empty");
                    phone.style.border = "solid 3px red";
                    return false;
                }
                else if(pass.value.trim()=="")
                {
                    alert("Password cann't be empty");
                    pass.style.border = "solid 3px red";
                    return false;
                }
                else if(cpass.value.trim()=="")
                {
                    alert("Password cann't be empty");
                    cpass.style.border = "solid 3px red";
                    return false;
                }
               
                else if(pass.value!=cpass.value)
                {
                    alert("Password and Conform password do not match!!");
                    pass.style.border = "solid 3px red";
                    cpass.style.border = "solid 3px red";
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
            <h1>Register</h1>
            <form onsubmit="return validate()" action="process_register.jsp" method="post">
                <input type="text" name="name" id="name" placeholder="Name">
                <input type="email" name="email" id="email" autocomplete="off" placeholder="Email">
                <input type="number" name="phone" id="phone" placeholder="Phone Number">
                <input type="password" name="pass" id="pass" placeholder="Password">
                <input type="password" name="cpass" id="cpass" placeholder="Conform Password">
                <input type="submit" value="Register">
                <div class="link">Already Have An Account? <a href="login.jsp">Log In</a></div>
            </form>
        </div>
    
        
    </body>
</html>