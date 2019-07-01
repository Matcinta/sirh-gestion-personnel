<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SGP - App</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>


<header>

	<div class="d-flex flex-row bd-highlight mb-3">
		<div class="p-2 bd-highlight">Collaborateurs</div>
		<div class="p-2 bd-highlight">Statistiques</div>
		<div class="p-2 bd-highlight">Activités</div>
	</div>
</header>

<body>


	<div class="container-fluid m-1">
		<div class="text-right">

			<button type="button" class="btn btn-info"
				onclick="window.location.href = 'creer-collab.html';">Ajouter
				un collaborateur</button>
		</div>
	</div>
	<div class="d-flex flex-column bd-highlight mb-4">
		<div class="p-2 bd-highlight">

			<h1 class="display-4">Les collaborateurs</h1>

			<ul>
			<%
			List<String> listeNoms =(List<String>)request.getAttribute("listeNoms");
			for (String nom: listeNoms) {
			%>
				<li><%= nom %></li>
				<%
				}
				%>
			</ul>

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
					<div class="card mb-4 shadow-sm">
						<div class="card-header">
							<h4 class="my-0 font-weight-normal">Melle Rose</h4>
						</div>
						<div class="card-body">

							<div class="d-flex justify-content-around">
								<div class="element">
									<img src="rose.jpg" alt="photo Melle Rose" />
								</div>
								<div class="element">
									<div class="text-left">
										<p class="card-text">
											Fonction: Assistante de Direction </br>Departement: RH </br>Email:
											rose@bootsrap.com </br>Téléphone: 06.65.38.97.45
										</p>
									</div>
								</div>
							</div>
							<div class="text-right">
								<button type="button" class="btn btn-info">Editer</button>
							</div>
						</div>
					</div>

					<div class="card mb-4 shadow-sm">
						<div class="card-header">
							<h4 class="my-0 font-weight-normal">Pr Violet</h4>
						</div>
						<div class="card-body">

							<div class="d-flex justify-content-around">
								<div class="element">
									<img src="violet.jpg" alt="photo Melle Rose" />
								</div>
								<div class="element">
									<div class="text-left">
										<p class="card-text">
											Fonction: Assistante de Direction </br>Departement: RH </br>Email:
											rose@bootsrap.com </br>Téléphone: 06.65.38.97.45
										</p>
									</div>
								</div>
							</div>
							<div class="text-right">
								<button type="button" class="btn btn-info">Editer</button>
							</div>
						</div>
					</div>

					<div class="card mb-4 shadow-sm">
						<div class="card-header">
							<h4 class="my-0 font-weight-normal">Mme Pervenche</h4>
						</div>
						<div class="card-body">

							<div class="d-flex justify-content-around">
								<div class="element">
									<img src="pervenche.jpg" alt="photo Melle Rose" />
								</div>
								<div class="element">
									<div class="text-left">
										<p class="card-text">
											Fonction: Assistante de Direction </br>Departement: RH </br>Email:
											rose@bootsrap.com </br>Téléphone: 06.65.38.97.45
										</p>
									</div>
								</div>
							</div>
							<div class="text-right">
								<button type="button" class="btn btn-info">Editer</button>
							</div>
						</div>
					</div>
				</div>

				<div class="card-deck mb-3 text-center">
					<div class="card mb-4 shadow-sm">
						<div class="card-header">
							<h4 class="my-0 font-weight-normal">Colonel Moutarde</h4>
						</div>
						<div class="card-body">

							<div class="d-flex justify-content-around">
								<div class="element">
									<img src="moutarde.jpg" alt="photo Colonel Moutarde" />
								</div>
								<div class="element">
									<div class="text-left">
										<p class="card-text">
											Fonction: Assistante de Direction </br>Departement: RH </br>Email:
											rose@bootsrap.com </br>Téléphone: 06.65.38.97.45
										</p>
									</div>
								</div>
							</div>
							<div class="text-right">
								<button type="button" class="btn btn-info">Editer</button>
							</div>
						</div>
					</div>

					<div class="card mb-4 shadow-sm">
						<div class="card-header">
							<h4 class="my-0 font-weight-normal">Mme LeBlanc</h4>
						</div>
						<div class="card-body">

							<div class="d-flex justify-content-around">
								<div class="element">
									<img src="leblanc.jpg" alt="photo Melle Rose" />
								</div>
								<div class="element">
									<div class="text-left">
										<p class="card-text">
											Fonction: Assistante de Direction </br>Departement: RH </br>Email:
											rose@bootsrap.com </br>Téléphone: 06.65.38.97.45
										</p>
									</div>
								</div>
							</div>
							<div class="text-right">
								<button type="button" class="btn btn-info">Editer</button>
							</div>
						</div>
					</div>

					<div class="card mb-4 shadow-sm">
						<div class="card-header">
							<h4 class="my-0 font-weight-normal">Dr Olive</h4>
						</div>
						<div class="card-body">

							<div class="d-flex justify-content-around">
								<div class="element">
									<img src="olive.jpg" alt="photo Melle Rose" />
								</div>
								<div class="element">
									<div class="text-left">
										<p class="card-text">
											Fonction: Assistante de Direction </br>Departement: RH </br>Email:
											rose@bootsrap.com </br>Téléphone: 06.65.38.97.45
										</p>
									</div>
								</div>
							</div>
							<div class="text-right">
								<button type="button" class="btn btn-info">Editer</button>
							</div>
						</div>
					</div>
				</div>

				<footer> </footer>

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