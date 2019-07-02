<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SGP - App</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-4.3.1-dist/css/bootstrap.css">
</head>

<header>

	<div class="d-flex flex-row bd-highlight mb-3">
		<div class="p-2 bd-highlight">
			<a href="<c:url value='/collaborateurs/lister'/>">Collaborateurs</a>
		</div>
		<div class="p-2 bd-highlight">
			<a href="<c:url value='/collaborateurs/statistiques'/>">Statistiques</a>
		</div>
		<div class="p-2 bd-highlight">Activités</div>
	</div>
</header>

<body>
	<div class="form-group row py-sm-5 mb-3 ml-4">


		<div class="container">
			<div class="form-group row py-sm-3 mb-0">
				<h1 class="display-5">Statistiques</h1>
			</div>
			
			
			<div class="form-group row py-sm-3 mb-0">
			
			
			
				<table class="table table-striped">
				
					<thead>
						<tr>
							<th scope="col">Chemin</th>
							<th scope="col">Nombre de visites</th>
							<th scope="col">Min (ms)</th>
							<th scope="col">Max (ms)</th>
							<th scope="col">Moyenne (ms)</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${listeVisites}" var="visiteWeb">
						<tr>
							<th scope="row">${visiteWeb.chemin}</th>
							<td></td>
							<td><c:out value='${visiteWeb.tempsExecution}'/></td>
							<td></td>
							<td></td>
						</tr>
							</c:forEach>
					</tbody>
				
				</table>
				
			</div>
	
		</div>
	</div>
</body>

</html>