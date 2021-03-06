<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="container-fluid">
			<c:import url="header.jsp"></c:import>
			<div class="row">
				<c:import url="menu_bar.jsp"></c:import>
				
				<div class="col-md-9">
					<form:form method="post" modelAttribute="chamado" action="${url_base}${acao}">
						<form:input path="codigo" type="hidden"  />
						
						<spring:bind path="descricao">
						<div class="form-group ${status.error ? 'has-error' : ''}">
							<form:label path="descricao">Descri��o</form:label>
							<form:input path="descricao" type="text" cssClass="form-control" />
							<form:errors path="descricao" />
						</div>
						</spring:bind>
						
						<button type="submit" class="btn btn-primary">Salvar</button>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<c:import url="footer.jsp"></c:import>
	
<script src="js/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>