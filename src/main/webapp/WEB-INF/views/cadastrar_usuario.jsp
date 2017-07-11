<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Cadastrar Usuário</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>	
	<div class="container">
		<div class="container-fluid">
			<c:import url="header.jsp"></c:import>
			<div class="row">
				<c:import url="menu_bar.jsp"></c:import>
				<div class="col-md-9">
					<form:form method="post" modelAtribute="usuario" action="/usuarios">
					
						<input name="id" type="hidden"  />
					
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="email">E-mail: </label>
								<input type="text" class="form-control" />
								<spring:hasBindErrors name="email"/> 
							</div>
						
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="telefone">Telefone: </label>
								<input name="telefone" type="number" class="form-control" />
								<form:errors path="telefone" />
							</div>
					
					
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="username">Username: </label>
								<input name="username" type="text" class="form-control" />
								<form:errors path="username" />
							</div>
					
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="senha">Senha: </label>
								<input name="senha" type="password" class="form-control" />
								<form:errors path="senha" />
							</div>
							
<%-- 							<div class="form-group ${status.error ? 'has-error' : ''}"> --%>
<!-- 								<label for="nome">Nome: </label> -->
<!-- 								<input name="nome" type="text" class="form-control" /> -->
<%-- 								<form:errors path="nome" /> --%>
<!-- 							</div> -->
						
							<div class="form-group ${status.error ? 'has-error' : ''}">
								<label for="tipo">Tipo: </label>
								<input name="tipo" type="text" class="form-control" />
								<form:errors path="tipo" />
							</div>
						
							<button type="submit" class="btn btn-primary">Salvar</button>
						
					</form:form>
				</div>
			</div>
			<c:import url="footer.jsp"></c:import>
		</div>
	</div>
</body>
</html>
