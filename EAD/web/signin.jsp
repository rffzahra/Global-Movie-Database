<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>GmDb</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link href="css/style.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


    </head>
    <body>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">GmDb</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.jsp">Home</a></li>
                </ul>
<!--                    <ul class="nav navbar-nav navbar-right">
                        <ul class="nav navbar-nav">
                            <a class="navbar-brand" href="signIn.jsp"><span class="glyphicon glyphicon-log-in"></span> Sign In</a>
                        </ul>
                
                    </ul>-->

            </div>
        </nav>


        <div class="card">
            <div class="login-box">
                <div class="login-snip"> <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label> <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
                    <div class="login-space">
                        <div class="login">
                            <form action="users/insert.jsp" method="post">
                                <div class="group"> 
                                    <label for="user" class="labelT " style="cent">Username</label> 
                                    <input id="name_in" name="name_in" type="text" class="inputT" placeholder="Enter your username"> 
                                </div>
                                <div class="group"> 
                                    <label for="pass" class="labelT">Password</label> 
                                    <input id="pass_in" name="pass_in" type="password" class="inputT" data-type="password" placeholder="Enter your password"> 
                                </div>
                                <div class="group"> 
                                    <input id="check" type="checkbox" class="check" checked> 
                                    <label for="check"><span class="icon"></span>   As a sign up member</label> 
                                </div>
                                <div class="group"> 
                                    
                                    <button type="submit" class="btn btn-success btn-lg btn-block" style="background-color: #39195F" name="action" value="signin" >Login</button>
                                </div>
                                <div class="hr"></div>
                                <div class="foot"> <a href="#">Forgot Password?</a> </div>
                            </form>

                        </div>
                       
                        
                        <div class="sign-up-form">
                            <form action="users/insert.jsp" method="post">
                                <div class="group"> 
                                    <label for="user" class="labelT">Username</label> 
                                    <input id="name_up" name="name_up" type="text" class="inputT" placeholder="Create your Username" required> 
                                </div>
                                <div class="group"> 
                                    <label for="pass" class="labelT">Email Address</label> 
                                    <input id="email_up" name="email_up" type="text" class="inputT" placeholder="Enter your email address" required> 
                                </div>
                                <div class="group"> 
                                    <label for="pass" class="labelT">Password</label> 
                                    <input id="pass_up" name="pass_up" type="password" class="inputT" data-type="password" placeholder="Create your password" required> 
                                </div>
                                <div class="group"> 
                                    <label for="pass" class="labelT">Repeat Password</label> 
                                    <input id="con_pass_up" name="con_pass_up" type="password" class="inputT" data-type="password" placeholder="Repeat your password"> 
                                </div>

                                <div class="group"> 
                                    
                                    <button type="submit" class="btn btn-success btn-lg btn-block" style="background-color: #39195F" name="action" value="signup" >Sign Up</button>
                                </div>

                                <div class="foot"> 
                                    <label for="tab-1">Already Member?</label> 
                                </div>
                                
                                

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>

<jsp:include page="footer.html"/>

    </body>
</html>

