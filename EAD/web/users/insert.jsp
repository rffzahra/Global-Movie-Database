<%@page import="com.hibernate.entity.UserPurchase"%>
<%@page import="com.hibernate.eao.AverageRatingEao"%>
<%@page import="com.hibernate.eao.AverageRatingEaoImpl"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.hibernate.eao.UserPurchaseEaoImpl"%>
<%@page import="com.hibernate.eao.UserPurchaseEao"%>
<%@page import="com.hibernate.eao.MovieEaoImp"%>
<%@page import="com.hibernate.eao.MovieEao"%>
<%@page import="com.hibernate.eao.UsersEaoImp"%>
<%@page import="com.hibernate.eao.UsersEao"%>
<%@page import="com.hibernate.client.SignInUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*,java.util.*" %>

<%
    String action = request.getParameter("action");

    if (action.equals("signup")) {
        String nm = request.getParameter("name_up");
        String eml = request.getParameter("email_up");
        String pw = request.getParameter("pass_up");
        String cn_pw = request.getParameter("con_pass_up");

        if (pw.equals(cn_pw)) {

            boolean result = false;
            UsersEao usEao = new UsersEaoImp();
            result = usEao.UserSignUp(nm, eml, pw);

            if (result) {

                


%>


<script>
    alert("You are registered successfully ");
    window.location.href = "../signin.jsp";
</script>

<%} else {%>
<script>
    alert("Operation failed, please try again");
    window.location.href = "../signin.jsp";
</script>

<%}

} else {%>
<script>
    alert("Password Error");
    window.location.href = "../signin.jsp";
</script>
<%}

    }

    if (action.equals("signin")) {
        String nm = request.getParameter("name_in");
        String pw = request.getParameter("pass_in");

        if (nm.equals("Admin")) {

            boolean result = false;
            UsersEao usEao = new UsersEaoImp();
            result = usEao.AdminSignIn(nm, pw);

            if (result) {
                session.setAttribute("name_in", nm);

%>
<script>
    alert("Welcome GmDb");
    window.location.href = "../admin/adminHome.jsp";
</script>

<%} else {%>
<script>
    alert("Operation failed, please try again");
    window.location.href = "../signin.jsp";
</script>

<%}

} else {

    boolean result = false;
    UsersEao usEao = new UsersEaoImp();
    result = usEao.UserSignIn(nm, pw);

    if (result) {
        session.setAttribute("name_in", nm);

%>
<script>
    alert("Welcome GmDb");
    window.location.href = "../users/home.jsp";
</script>

<%} else {%>
<script>
    alert("Operation failed, please try again");
    window.location.href = "../signin.jsp";
</script>

<%}
        }

    }

    if (action.equals("purchase")) {

        String pchs = request.getParameter("action");

        session.setAttribute("action", pchs);

        boolean result = false;
        MovieEao mvEao = new MovieEaoImp();
        UserPurchaseEao usprchEao = new UserPurchaseEaoImpl();

        String usPrchName = (String) session.getAttribute("name_in");
        String filmName = (String) session.getAttribute("filmName");
        String filmPrice = (String) session.getAttribute("filmprice");

        Date date = new Date();

        result = usprchEao.UserPurchaseIn(usPrchName, filmName, filmPrice, date);

        if (result) {


%>
<script>
    alert("Purchase Complete");
    window.location.href = "home.jsp";
</script>

<%} else {%>
<script>
    alert("Operation failed, please try again");
    window.location.href = "../users/purchase.jsp";
</script>

<%}

    }

    if (action.equals("starRate")) {

        int rateNm = Integer.parseInt(request.getParameter("rate"));

        String rateUserNm = (String) session.getAttribute("name_in");
        String filmName = (String) session.getAttribute("filmName");
        boolean result = false;
        UserPurchaseEao usrEao = new UserPurchaseEaoImpl();
        List filmList = null;
        filmList = usrEao.getUserPurchaseCheck(rateUserNm);        
        if(!filmList.isEmpty()){
        Iterator it2 = filmList.iterator();

        String fm = "";
        
        while(it2.hasNext()){
            UserPurchase usrP = (UserPurchase) it2.next();
            System.out.print("alalalalallalalalaallalallalalallalalallal");
            System.out.print(usrP);
        
            System.out.print("amamamamamamamamamamamamamamama");
            fm = usrP.getMoviePurchaseName();
            System.out.print(fm);
          
        if(fm.equals(filmName)){

            System.out.print("///////////////////////////////////////");

            AverageRatingEao avrgrtEao = new AverageRatingEaoImpl();

            result = avrgrtEao.rateAdd(rateUserNm, filmName, rateNm);

            if (result) {

%>
<script>
    alert("Successfuly Rating");
    window.location.href = "home.jsp";
</script>

<%} else {%>
<script>
    alert("Operation failed, please try again");
    window.location.href = "purchase.jsp";
</script>

<%}
        }else{%>
        
<!--        <script>
            alert("Please Purches film firstt");
            
        </script>-->

        <%
//            response.sendRedirect("home.jsp");
        }
        
    }
        
        }
        
        %>
        <script>
            alert("Please purchase the Film");
            window.location.href = "home.jsp";
        </script>
        
    <%    
   }
 
 %>
