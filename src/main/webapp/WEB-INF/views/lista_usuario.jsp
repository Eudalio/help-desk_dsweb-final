<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Lista Usuarios</title>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
</head>
<body>
<div class="container">
	<h1>Lista de Usuários</h1>
	<c:if test="${not empty msg}">
		<div class="alert alert-success alert-dismissible" role="alert">
		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
		<p>${msg}</p>
		</div>
	</c:if>
	<a href="/usuarios/add" class="btn btn-primary">Novo Usuário</a>
	<c:if test="${not empty usuarios}">
	<table id="tabela_usuarios" class="table table-hover">
		<thead>
			<tr><th>Nome</th><th>E-mail</th><th>Tipo</th></tr>
		</thead>
		<tbody>
		<c:forEach var="u" items="${usuarios}">
			<tr><td>${u.nome}</td><td>${u.email}</td><td>${u.tipo}</td>
			<td><a href="/usuarios/${u.id}/update" class="btn btn-primary">Alterar</a></td>
			<td><a href="/usuarios/${u.id}/delete" class="btn btn-danger" onclick="return confirm('Confirma remoção?')" >Deleta</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	</c:if>
</div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
</script>
</body>
</html>