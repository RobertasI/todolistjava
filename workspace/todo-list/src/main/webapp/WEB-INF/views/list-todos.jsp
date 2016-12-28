<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
}

.custom-container-header {
	text-align: center;
}

.custom-container-content {
	margin-top: 30px;
}

.custom-container-content li {
	height: 50px;
	font-size: 1.4em;
}

.custom-container-content li a {
	float: right;
}

.navbar-right {
	margin-right: 10px;
}

.button-wrapper {
	text-align: center;
	margin-top: 40px;
}

.button-wrapper a {
	width: 40%;
    height: 40px;
    font-size: 1.2em;
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
    	<div class="custom-container-header">
    		<H1>Sveiki ${name}</H1>

        	<em>Jusu uzduotys:</em>
    	</div>
    	
    	<div class="custom-container-content">
    		<ol>
            <c:forEach items="${todos}" var="todo">
                <li>${todo.name}&nbsp;<a class="btn btn-danger"
                    href="/delete-todo.do?todo=${todo.name}">Padaryta</a></li>
            	</c:forEach>
        	</ol>

        	<p>
            	<font color="red">${errorMessage}</font>
        	</p>
    	</div>
        
        <div class="button-wrapper">
        	<a class="btn btn-primary" href="/add-todo.do">Prideti nauja uzduoti</a>
        </div>
    </div>

    <footer class="footer">
        <div>Visos teises saugomos</div>
    </footer>

    <script src="webjars/jquery/1.9.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>