
<%@page import="com.hibernate.eao.GenresEaoImp"%>
<%@page import="com.hibernate.eao.GenresEao"%>
<%@page import="com.hibernate.entity.Genres"%>
<%@page import="com.hibernate.entity.Directors"%>
<%@page import="com.hibernate.entity.Actors"%>
<%@page import="com.hibernate.entity.Actors"%>
<%@page import="com.hibernate.entity.Movie"%>
<%@page import="com.hibernate.eao.ActorEaoImp"%>
<%@page import="com.hibernate.eao.ActorEao"%>
<%@page import="com.hibernate.eao.DirectorsEaoImp"%>
<%@page import="com.hibernate.eao.DirectorsEao"%>
<%@page import="com.hibernate.eao.MovieEaoImp"%>
<%@page import="com.hibernate.eao.MovieEao"%>
<%@page import="com.hibernate.eao.UsersEao"%>
<%@page import="com.hibernate.client.SignInUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*,java.util.*" %>

<%

    String flmNm = "";

    String action = request.getParameter("action");
    System.out.print("....................");
    if (action.equals("details")) {
        flmNm = request.getParameter("filmName");
        System.out.print(flmNm);

        session.setAttribute("filmName", flmNm);
        
       
%>

<script>
    window.location.href = "filmUsing.jsp";
</script>

<%            }
    
    else if (action.equals("delete")) {
        flmNm = request.getParameter("filmName");

        session.setAttribute("filmName", flmNm);

        MovieEao mvEao = new MovieEaoImp();

        Movie movie = new Movie();
        
        movie.setMovieName(flmNm);

        mvEao.delete(movie);

%>
<script>
    alert("Delete Film")
    window.location.href = "adminHome.jsp";
</script>




<%    } else {

        MovieEao mvEao = new MovieEaoImp();
        DirectorsEao dirEao = new DirectorsEaoImp();
        ActorEao actEao = new ActorEaoImp();

        Movie movie = new Movie();
        
        

        movie.setMovieName(request.getParameter("name_flup"));
        movie.setMovieRuntime(request.getParameter("runtime_flup"));
        movie.setOrigin(request.getParameter("origin_flup"));
        movie.setPrice(request.getParameter("price_flup"));
        movie.setLink(request.getParameter("link_flup"));

        int i = 0;
        int j = 0;

        while (true) {
            String act = request.getParameter("act_flup" + i);
            if (act == null) {
                break;
            }
            Actors actors = new Actors();
            actors.setActorsName(act);
            actors.setMovie(movie);
            movie.getActors().add(actors);
            i++;
        }

        while (true) {
            String dir = request.getParameter("dir_flup" + j);
            if (dir == null) {
                break;
            }
            Directors directors = new Directors();
            directors.setDirectorName(dir);
            directors.setMovie(movie);;
            movie.getDirectors().add(directors);
            j++;
        }

        for (int k = 1; k < 8; k++) {

            String check = request.getParameter("check" + k);
            if (check != null) {
                Genres genres = new Genres();
                genres.setGenresName(check);
                genres.setMovie(movie);
                movie.getGenres().add(genres);

            }

        }
        
        System.out.print(movie);

        mvEao.create(movie);

        response.sendRedirect("adminHome.jsp");
    }
%>

