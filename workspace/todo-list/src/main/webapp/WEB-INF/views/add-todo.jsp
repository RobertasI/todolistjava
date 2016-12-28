<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Todos</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
    rel="stylesheet">

<style>
.custom-container {
	width: 500px;
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}

.custom-form {
	margin-top: 30px;
}

.add-task-button {
	margin-top: 30px;
	width: 30%;
    height: 40px;
    font-size: 1.2em;
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
            <li><a href="/list-todos.do">Uzduotys</a></li>

        </ul>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="/logout.do">Atsijungti</a></li>
        </ul>

    </nav>

    <div class="container custom-container">
    	<h1>Prideti nauja uzduoti</h1>
        <p><em>Nauja uzduotis</em></p>
        
        <form class="custom-form" method="POST" action="/add-todo.do">
            <input class="form-control" name="todo" type="text" />
            <input name="add" class="btn btn-success add-task-button" type="submit" />
        </form>
    </div>

    <footer class="footer">
        <div>Visos teises saugomos</div>
    </footer>

    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>