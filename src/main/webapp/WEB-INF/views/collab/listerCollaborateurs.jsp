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


	<div class="container-fluid m-1">
		<div class="text-right">

			<a href="<c:url value='/collaborateurs/creer'/>"
				class="btn btn-info" role="button" aria-pressed="true">Ajouter
				un nouveau collaborateur</a>
		</div>
	</div>
	<div class="d-flex flex-column bd-highlight mb-4">
		<div class="p-2 bd-highlight">

			<h1 class="display-4">Les collaborateurs</h1>




			<div class="d-flex flex-column">
				<div class="p-2">
					<div class="d-flex justify-content-around">
						<div class="element">Rechercher un nom ou un prénom qui
							commence par:</div>
						<div class="element">
							<input class="form-control" type="text">
						</div>
						<div class="element">
							<button type="button" class="btn btn-info">Rechercher</button>
						</div>
						<div class="element">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input"
									id="customCheck1"> <label class="custom-control-label"
									for="customCheck1">Voir les collaborateurs désactivés</label>
							</div>
						</div>
					</div>
				</div>
				<div class="p-2">
					<div class="d-flex">
						<div class="element">Filtrer par département:</div>
						<div class="element">
							<select class="form-control">
								<option>Tous</option>
								<option>Comptabilité</option>
								<option>Ressources humaines</option>
								<option>Informatique</option>
							</select>
						</div>
					</div>

				</div>



				<div class="card-deck mb-3 text-center">

					<c:forEach items="${listeCollabs}" var="collab">
					
					

					<div class="card mb-4 shadow-sm">
						<div class="card-header">
							<h4 class="my-0 font-weight-normal"> <c:out value='${collab.nom}'/> <c:out value='${collab.prenom}'/></h4>
						</div>
						<div class="card-body">

							<div class="d-flex justify-content-around">
								<div class="element">
									<img src="<c:url value='/${collab.photo}'/>"
										alt="photo Melle Rose" />
								</div>
								<div class="element">
									<div class="text-left">
										<p class="card-text">
											Matricule: ${collab.matricule}
											</br>Departement: RH
											</br>Email: ${collab.emailPro}
											
											</br>Téléphone: 06.65.38.97.45
										</p>
									</div>
								</div>
							</div>
							<div class="text-right">
								<a href="<c:url value='/collaborateurs/editer'/>"
									class="btn btn-info" role="button" aria-pressed="true">Editer</a>
							</div>
						</div>
					</div>

					</c:forEach>





				</div>

				<footer>
				<div class="text-center">
				(c) Mathilde Munier - Juillet 2019
				</div>
				</footer>

				<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
					integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
					crossorigin="anonymous"></script>
				<script
					src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
					integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
					crossorigin="anonymous"></script>
				<script
					src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
					integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
					crossorigin="anonymous"></script>
</body>


</html>