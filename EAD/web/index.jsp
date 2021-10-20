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
        <link href="css/home.css" rel="stylesheet">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
       
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


    </head>
    <body>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">GmDb</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <ul class="nav navbar-nav">
                        <a class="navbar-brand" href="signin.jsp"><span class="glyphicon glyphicon-log-in"></span> Sign In</a>
                    </ul>

                </ul>

            </div>
        </nav>
        <div class="accordian">
    <ul>
		<li>
			<a href="#">
				<img src="css/1.jpg"/>
			</a>
		</li>
		<li>
			
			<a href="#">
				<img src="css/2.jpg"/>
			</a>
		</li>
		<li>
			
			<a href="#">
				<img src="css/3.jpg"/>
			</a>
		</li>
		<li>
			
			<a href="#">
				<img src="css/4.jpg"/>
			</a>
		</li>
		<li>
			
			<a href="#">
				<img src="css/5.jpg"/>
			</a>
		</li>
	</ul>
</div>

        <div></div>

        <jsp:include page="footer.html"/>
    </body>
</html>
