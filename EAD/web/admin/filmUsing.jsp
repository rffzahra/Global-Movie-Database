<%@page import="com.hibernate.eao.AverageRatingEaoImpl"%>
<%@page import="com.hibernate.eao.AverageRatingEao"%>
<%@page import="com.hibernate.entity.UserPurchase"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.hibernate.eao.UserPurchaseEaoImpl"%>
<%@page import="com.hibernate.eao.UserPurchaseEao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>GmDb</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../css/table.css">

    </head>
    <body>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">GmDb</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Admin</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <ul class="nav navbar-nav">
                        <a class="navbar-brand" href="../logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Log out</a>
                    </ul>

                </ul>

            </div>
        </nav>
        
        <%
        
        String flmNm = String.valueOf(session.getAttribute("filmName"));    
        
        
        %>


        <div class="container1">
            <div class="table">
                <div class="table-header">
                    <div class="header__item"><a id="name" class="filter__link" href="#">User Name</a></div>
                    <div class="header__item"><a id="wins" class="filter__link filter__link--number" href="#">Date of Purchase</a></div>
                    

                </div>
                <%
                    UserPurchaseEao usrpurchEao = new UserPurchaseEaoImpl();
                    
                    System.out.print("//////////////////////////////////////////////////////////////");
                    System.out.print(flmNm);
                    
                    List list = null;

                    int i = 1;

                    list = usrpurchEao.getPurchaseDetails(flmNm);
                    Iterator it = list.iterator();
                    
                    
                    while (it.hasNext()) {

                        UserPurchase upch = (UserPurchase) it.next();
                        System.out.print("//////////////////////////////////////////////////////////////");
                        
                        

                %>

                <div class="table-content">	
                    <div class="table-row">		
                        <div class="table-data"><%=upch.getUserPurchaseName()%></div>
                        <div class="table-data"><%=upch.getPurchaseDate()%></div>
                        

                    </div>

                </div>	

                <%
                        i++;
                    }
                %> 

            </div>
        </div>

    </body>
</html>

