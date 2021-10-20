<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GmDb</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link href="../css/style.css" rel="stylesheet">
        <link href="../css/star.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            body{
                background-image: url('../css/card.jpg');
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
                    <a class="navbar-brand" href="home.jsp"> Back to Home</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <ul class="nav navbar-nav">
                        <a class="navbar-brand" href="../logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Log Out</a>
                    </ul>

                </ul>

            </div>
        </nav>

        <%
            String action = request.getParameter("action");

            String flmNm = "";
            String flmRntime = "";
            String flmPrce = "";

            if (action.equals("price")) {
                flmNm = request.getParameter("filmName");
                flmRntime = request.getParameter("filmRuntime");
                flmPrce = request.getParameter("filmprice");

                System.out.print(flmNm);
                System.out.print(flmRntime);
                System.out.print(flmPrce);
            }

            session.setAttribute("filmName", flmNm);
            session.setAttribute("filmprice", flmPrce);

        %>

        <div class="card1">
            <div class="login-box1">
                <div class="login-space">
                    <div class="sign-up-form">
                        <form action="insert.jsp" method="post">
                            <div class="group"> 
                                <label for="user" class="labelTE">Film Name: </label>
                                <label class="labelTE" name="filmName"><%=flmNm%></label>

                            </div>
                            <div class="group"> 

                                <label for="pass" class="labelTE">Film Run Time:</label>
                                <label for="user" class="labelTE"><%=flmRntime%> minutes</label>

                            </div>
                            <div class="group"> 
                                <label for="pass" class="labelTE">Film Purchase Price:</label>
                                <label for="user" class="labelTE"><%=flmPrce%> $ </label>

                            </div>
                                <br>
                                <br>


<!--                            <div class="group">   
                                  <input type="radio" id="javascript" name="fav_language" value="Visa Card  ">
                                  <label for="javascript" class="labelTE">Visa Card  </label>
                                <input type="radio" id="css" name="fav_language" value="Bitcoin  ">
                                  <label for="css" class="labelTE">Bitcoin  </label>
                                <input type="radio" id="css" name="fav_language" value="Master Card ">
                                  <label for="css" class="labelTE">Master Card  </label>
                            </div>-->

                            <div class="group"> 

                                <button type="submit" class="btn btn-success btn-lg btn-block" style="background-color: #39195F" name="action" value="purchase" >Purchase</button>
                            </div>

                        </form>
                    </div>



                </div>
            </div>


        </div>

                                <div>
        <label style="color: white ">Rate The Film</label>
        <div class="ratingMain">
            <form action="insert.jsp">
                <div class="rate">
                    <input type="radio" id="star5" name="rate" value="5"/>
                    <label for="star5" title="text">5 stars</label>
                    <input type="radio" id="star4" name="rate" value="4" />
                    <label for="star4" title="text">4 stars</label>
                    <input type="radio" id="star3" name="rate" value="3" />
                    <label for="star3" title="text">3 stars</label>
                    <input type="radio" id="star2" name="rate" value="2" />
                    <label for="star2" title="text">2 stars</label>
                    <input type="radio" id="star1" name="rate" value="1" />
                    <label for="star1" title="text">1 star</label>
                </div>
                <button type="submit" class="btn" style="background-color: #39195F" name="action" value="starRate" ><text style="color: white">Rate</text></button>


            </form>
        </div>
        </div>



    </body>


</html>
