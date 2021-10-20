<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>GmDb</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link href="../css/style.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            body{
                background-image: url('../css/addfilm.jpg');
                background-repeat: no-repeat;
                background-attachment: fixed;  
                background-size: cover;
            }

        </style>

    </head>
    <body>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">GmDb</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="../index.jsp">Home</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <ul class="nav navbar-nav">
                        <a class="navbar-brand" href="../logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Log Out</a>
                    </ul>

                </ul>

            </div>
        </nav>

        <div class="card1">
            <div class="login-box">
                <div class="login-space">
                    <div class="sign-up-form">
                        <form action="filmInsert.jsp" method="post">


                            <div class="group"> 
                                <label for="user" class="labelTE">Film Name</label> 
                                <input id="name_flup" name="name_flup" type="text" class="inputT" placeholder="Enter Film Name" required> 
                            </div>
                            <div class="group"> 
                                <label for="pass" class="labelTE">Film Run Time</label> 
                                <input id="runtime_flup" name="runtime_flup" type="text" class="inputT" placeholder="Enter Film Run Time" required> 
                            </div>
                            <div class="group"> 
                                <label for="user" class="labelTE">Origin</label> 
                                <input id="origin_flup" name="origin_flup" type="text" class="inputT" placeholder="Enter Film Origin" required> 
                            </div>
                            <div class="group"> 
                                <label for="pass" class="labelTE">Film Purchase Price</label> 
                                <input id="price_flup" name="price_flup" type="text" class="inputT" placeholder="Enter Film Purchase Prize" required> 
                            </div>
                            
                            <div class="group"> 
                                <label for="user" class="labelTE">Enter URL Link</label> 
                                <input id="link_flup" name="link_flup" type="text" class="inputT" placeholder="Enter Link of Image" required> 
                            </div>
                            
                            <div class="group" id="actors"> 
                                <label for="user" class="labelTE">Actors</label>
                                <br>
                                <input id="act_flup" name="act_flup0" type="text" class="inputTD" placeholder="Enter Name of Actor " required>
                                <button type="button" class="btnDir" id="btnAct" onclick="addActor()">Add</button>

                            </div>
                            <div class="group" id="directors"> 
                                <label for="user" class="labelTE">Directors</label>
                                <br>
                                <input id="dir_flup" name="dir_flup0" type="text" class="inputTD" placeholder="Enter Name of Director " required>

                                <button type="button" class="btnDir" id="btnDir" onclick="addDirector()">Add</button>

                            </div>
                            
                            
                            
                            <div class="group"> 
                                <label for="pass" class="labelTE">Genres</label> 

                                <div class="group">    
                                    <label for="pass" class="labelTC">Action
                                        <input type="checkbox" name="check1" value="Action">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label for="pass" class="labelTC">Comedy
                                        <input type="checkbox" name="check2" value="Comedy">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label for="pass" class="labelTC">Drama
                                        <input type="checkbox" name="check3" value="Drama">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label for="pass" class="labelTC">Crime
                                        <input type="checkbox" name="check4" value="Crime">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label for="pass" class="labelTC">Mystery
                                        <input type="checkbox" name="check5" value="Mystery">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label for="pass" class="labelTC">Thriller
                                        <input type="checkbox" name="check6" value="Thriller">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label for="pass" class="labelTC">Horror
                                        <input type="checkbox" name="check7" value="Horror">
                                        <span class="checkmark"></span>
                                    </label>

                                    

                                    <br>
                                    <br>
                                    <div class="group"> 

                                        <button type="submit" class="btn btn-success btn-lg btn-block" style="background-color: #39195F" name="action" value="signup" >Add Movie</button>
                                    </div>



                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script>
            var d = 1;

            function addActor() {


                var bbbb = document.getElementById("actors");

                var ab = document.createElement("input");
                ab.setAttribute("type", "text");
                ab.setAttribute("class", "inputTD");
                ab.setAttribute("name", "act_flup" + d);
                ab.setAttribute("placeholder", "Enter Name of Actor");


                bbbb.appendChild(ab.cloneNode(true));

                d++;

            }

            var e = 1;

            function addDirector() {


                var bbbb = document.getElementById("directors");

                var ab = document.createElement("input");
                ab.setAttribute("type", "text");
                ab.setAttribute("class", "inputTD");
                ab.setAttribute("name", "dir_flup" + e);
                ab.setAttribute("placeholder", "Enter Name of Director");

                bbbb.appendChild(ab.cloneNode(true));

                e++;


            }




        </script>


    </body>
</html>

