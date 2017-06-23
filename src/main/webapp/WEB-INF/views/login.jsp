<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<c:url var="url_base" value="/" />
	<link rel="stylesheet" href="${url_base}css/bootstrap.min.css" />
</head>
<body>
<div class="container">
	<h1>Login</h1>
	<form:form method="post" modelAttribute="form" action="${url_base}${acao}" > </form:form>
		
		<spring:bind path="login">
			<div class="form-group" ${status.error ? 'has-error' : ''}>
				<form:label path="login">Usuário: </form:label>
				<form:input path="login" type="text" cssClass="form-control"/>
				<form:errors path="login" />
			</div>
		</spring:bind>
		
		<spring:bind path="senha">
			<div class="form-group" ${status.error ? 'has-error' : ''}>
				<form:label path="senha">Senha: </form:label>
				<form:input path="senha" type="text" cssClass="form-control"/>
				<form:errors path="senha" />
			</div>
		</spring:bind>
		
		<button type="submit" class="btn btn-primary pull-right">Entrar</button>
		<button type="button" class="btn btn-default">
			<a href="${url_base}cadastro_usuario">Cadastrar - se</a>
		</button>
	
</div>
<script src="${url_base}js/jquery-3.2.1.min.js"></script>
<script src="${url_base}js/bootstrap.min.js"></script>
</body>
</html>