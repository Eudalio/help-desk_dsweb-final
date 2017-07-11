<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Ocorreu um erro</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="container-fluid">
			<c:import url="header.jsp"></c:import>
			<div class="row">
				<c:import url="menu_bar.jsp"></c:import>
				
				<div class="col-md-9">
					<h1 class="jumbotron">Ocorreu um erro! Entre em contato com o Administrador do sistema!</h1>
					<h2 class="jumbotron">${erro}</h2>
				</div>
			</div>
		</div>
	</div>
	<c:import url="footer.jsp"></c:import>
	
<script src="js/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>