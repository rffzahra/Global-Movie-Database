<%@page import="java.math.BigDecimal"%>
<%@page import="com.hibernate.eao.AverageRatingEaoImpl"%>
<%@page import="com.hibernate.eao.AverageRatingEao"%>
<%@page import="com.hibernate.entity.AverageRating"%>
<%@page import="com.hibernate.entity.Genres"%>
<%@page import="com.hibernate.entity.Directors"%>
<%@page import="com.hibernate.entity.Actors"%>
<%@page import="java.util.Collection"%>
<%@page import="com.hibernate.eao.GenresEaoImp"%>
<%@page import="com.hibernate.eao.GenresEao"%>
<%@page import="com.hibernate.eao.DirectorsEaoImp"%>
<%@page import="com.hibernate.eao.DirectorsEao"%>
<%@page import="com.hibernate.eao.ActorEaoImp"%>
<%@page import="com.hibernate.eao.ActorEao"%>
<%@page import="com.hibernate.entity.Movie"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.hibernate.eao.MovieEaoImp"%>
<%@page import="com.hibernate.eao.MovieEao"%>
<%@page import="java.util.List"%>
<%@page import="java.math.RoundingMode"%>
<%@page import="java.text.DecimalFormat"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="../css/moviecard1.css">
        <link rel="stylesheet" href="../css/star1.css">
        <title>GmDb</title>
    </head>
    <body>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">GmDb</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Admin Home Page</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <ul class="nav navbar-nav">
                        <a class="navbar-brand" href="addFilm.jsp"><span class="glyphicon glyphicon-plus"></span> Add film </a>
                        <a class="navbar-brand" href="../logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Log out</a>
                    </ul>

                </ul>

            </div>
        </nav>

        <div>

            <%

                MovieEao mvEao = new MovieEaoImp();

                List list = null;

                int i = 1;
                list = mvEao.getMovies();

                Iterator it = list.iterator();

                while (it.hasNext()) {

                    Movie mv = (Movie) it.next();
                    Collection<Actors> actors = mv.getActors();
                    Collection<Directors> directors = mv.getDirectors();
                    Collection<Genres> genres = mv.getGenres();

            %>

            <form action="filmInsert.jsp" method="post">
                <div class="col-3 col-md-4">
                    <div class="card">

                        <div class="img1" style="background-image: url(<%=mv.getLink()%>)"></div>
                        <div class="img2" style="background-image: url(<%=mv.getLink()%>)"></div>
                        <div class="title"><%=mv.getMovieName()%></div>
                        <div class="text">
                            <div class="col-md-4">
                                <p style="font-size: 16px "><b>Actors:</b></p>
                                <%
                                    for (Actors a : actors) {
                                %>
                                <p><%= a.getActorsName()%></p>
                                <%
                                    }
                                %>
                            </div>
                            <div class="col-md-4">
                                <p style="font-size: 16px"><b>Directors:</b></p>
                                <%
                                    for (Directors dir : directors) {
                                %>
                                <p><%= dir.getDirectorName()%></p>
                                <%
                                    }
                                %>
                            </div>

                            <div class="col-md-4">
                                <p style="font-size: 16px"><b>Genres:</b></p>
                                <%
                                    for (Genres gn : genres) {
                                %>
                                <p><%= gn.getGenresName()%></p>
                                <%
                                    }
                                %>
                            </div>



                        </div>
                        <a href="#"><div class="catagory"><%=mv.getOrigin()%> <span class="glyphicon glyphicon-film"></span></div></a>
                        <a href="#"><div class="views"><%=mv.getMovieRuntime()%> minutes <span class="glyphicon glyphicon-time"></span> </div></a>
                        <a href="#"><div class="views1"><%=mv.getPrice()%> $</div></a>
                        <a href="#">
                            <div class="views2">
                                <div class="d-flex justify-content-center">

                                    <div class="stars">
                                        <%
                                            AverageRatingEao avrRatingEao = new AverageRatingEaoImpl();

                                            List avrlist = null;
                                            System.out.print("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww");
                                            avrlist = avrRatingEao.getRate(mv.getMovieName());

                                            System.out.print(avrlist);
                                            
                                            double total = 0;
                                            int k = 0;
                                            
                                            double avr = 0;
                                            double avrg = 0;
                                            
                                            if(!avrlist.isEmpty()){
                                            
                                            
                                            System.out.print("qqqqqqqqqqqqqqqqqqqsssssssssssssssss");
                                            
                                            Iterator it1 = avrlist.iterator();

                                            while (it1.hasNext()) {
                                                
                                                System.out.print("/////////////.............,,,,,,,,,,,,ddddddddddddddd");
                                                AverageRating avrRate = (AverageRating) it1.next();

                                                System.out.print(avrRate.getMovieName());

                                                int a = avrRate.getRateVal();
                                                System.out.print(a);
                                                System.out.print("///////////$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$dddd");

                                                total += a;
                                                k++;

                                            }
                                           }                         
                                            try {
                                                avr = total / k;
                                                System.out.print(avr);

                                            BigDecimal bd = new BigDecimal(avr).setScale(2, RoundingMode.HALF_UP);
                                            avrg = bd.doubleValue();
                                            
                                            } catch (Exception e) {
                                                
                                            }
                                            
                                        %>
   
                                        <i class="fa fa-star"></i>
                                                                                
                                        <label><%=avrg*2%></label>
                                        

                                    </div>

                                </div>

                            </div>
                        </a>
                        <button type="submit" class="views3" name="action" value="details" >Purchase Details</button>
                        <button type="submit" class="views4" name="action" value="delete" >Delete</button>
                    
                    </div>
                </div>

                <input type="hidden" name="filmName" value="<%=mv.getMovieName()%>">
                <input type="hidden" name="filmRuntime" value="<%=mv.getMovieRuntime()%>">
                <input type="hidden" name="filmprice" value="<%=mv.getPrice()%>">


            </form>

            <%
                    i++;
                }
            %> 


        </div>






    </body>   


</html>


