<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="url_base" value="/" />
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Lista Chamados</title>
	<link rel="stylesheet" href="${url_base}css/bootstrap.min.css" />
</head>
<body>
<div class="container">
	<h1>Lista de Chamados</h1>
	<c:if test="${not empty msg}">
		<div class="alert alert-success alert-dismissible" role="alert">
		<button type="button" class="close" data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
		<p>${msg}</p>
		</div>
	</c:if>
	<a href="/chamados/add" class="btn btn-primary">Novo chamado</a>
	<c:if test="${not empty chamados}">
	<table id="tabela_chamados" class="table table-hover">
		<thead>
			<tr><th>Código</th><th>Descrição</th><th>Status</th></tr>
		</thead>
		<tbody>
		<c:forEach var="c" items="${chamados}">
			<tr><td>${c.codigo}</td><td>${c.descricao}</td><td>${c.status}</td>
			<td><a href="${url_base}chamados/${c.codigo}/update" class="btn btn-primary">Altera</a></td>
			<td><a href="${url_base}chamados/${c.codigo}/delete" class="btn btn-danger" onclick="return confirm('Confirma remoção?')" >Deleta</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	</c:if>
</div>
<script src="${url_base}js/jquery-3.2.1.min.js"></script>
<script src="${url_base}js/bootstrap.min.js"></script>
<script>
</script>
</body>
</html>