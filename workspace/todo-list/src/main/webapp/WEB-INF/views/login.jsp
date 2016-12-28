<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Todos</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
    rel="stylesheet">

<style>
.custom-form {
	width: 300px;
	margin-left: auto;
	margin-right: auto;
}

.custom-control {
	margin-top: 20px;
}

.input-label {
	font-size: 1.5em;
}

.login-button-wrapper {
	text-align: center;
	margin-top: 40px;
}

.login-button {
	width: 50%;
    height: 46px;
    font-size: 1.5em;
}

.navbar-right {
	margin-right: 10px;
}

.footer {
    position: absolute;
    bottom: 0;
    width: 100%;
    height: 60px;
    background-color: #f5f5f5;
    padding-left: 20px;
    padding-top: 20px;
}


</style>
</head>

<body>
    <nav class="navbar navbar-default">

        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Pradzia</a></li>
            <li><a href="/todo.do">Uzduotys</a></li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="/login.do">Prisijungti</a></li>
        </ul>

    </nav>

    <div class="container">
        <form class="custom-form" action="/login.do" method="post">
            <p>
                <font color="red">${errorMessage}</font>
            </p>
            
            <div class="custom-control">
            	<span class="input-label">Prisijungimo vardas</span>
            	<input class="form-control" type="text" name="name" />
            </div>
            
            <div class="custom-control">
            	<span class="input-label">Slaptazodis</span>
            	<input class="form-control" type="password" name="password" />
            </div>
            
            <div class="login-button-wrapper">
            	<input class="btn btn-danger login-button" type="submit" value="Prisijungti" />
            </div>
        </form>

    </div>

    <footer class="footer">
        <div>Visos teises saugomos</div>
    </footer>

    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>