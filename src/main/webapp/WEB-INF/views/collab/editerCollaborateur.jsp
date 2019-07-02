<%@page import="dev.sgp.entite.Collaborateur"%>
<%@page import="java.util.List"%>
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
		<div class="p-2 bd-highlight"> <a href="<c:url value='/collaborateurs/lister'/>"
									>Collaborateurs</a></div>
		<div class="p-2 bd-highlight"><a href="<c:url value='/collaborateurs/statistiques'/>"
									>Statistiques</a></div>
		<div class="p-2 bd-highlight">Activités</div>
	</div>
</header>

<body>

	
	
	
	</div>
	<div class="card-body">

		<div class="d-flex justify-content-around">
			<div class="element">
				<img src=""
					alt="photo collaborateur" />
			</div>
			<div class="element">
				<div class="text-left">
					<p class="card-text">
					<h4 class="my-1 font-weight-normal">NOM Prénom - Matricule</h4>
						Matricule:
						

						</br>Departement: RH
						</br>Email:
						
						</br>Téléphone: 06.65.38.97.45
					</p>
				</div>
			</div>
		</div>
</body>

<footer>
				<div class="text-center">
				(c) Mathilde Munier - Juillet 2019
				</div>
				</footer>
</html>
