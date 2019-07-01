<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>SGP - App</title>
</head>


</head>

<header>

	<div id="conteneur">
		<div class="element">Collaborateurs</div>
		<div class="element">Statistiques</div>
		<div class="element">Activités</div>
	</div>
</header>

<body>

	<div class="form-group row py-sm-5 mb-3 ml-4">
		<h1 class="display-5">Nouveau Collaborateur</h1>
	</div>

	<div class="container">
		<div class="form-group row py-sm-3 mb-0">
			<label class="col-sm-2 col-form-label">Nom:</label>
			<div class="col-sm-10">
				<input class="form-control" type="text">
			</div>
		</div>

		<div class="form-group row py-sm-3 mb-0">
			<label class="col-sm-2 col-form-label">Prénom:</label>
			<div class="col-sm-10">
				<input class="form-control" type="text">
			</div>
		</div>

		<div class="form-group row py-sm-3 mb-0">
			<label class="col-sm-2 col-form-label">Date de naissance: </label>
			<div class="col-sm-10">
				<input class="form-control" type="text">
			</div>
		</div>

		<div class="form-group row py-sm-3 mb-0">
			<label class="col-sm-2 col-form-label">Adresse: </label>
			<div class="col-sm-10">
				<textarea class="form-control" id="exampleFormControlTextarea1"
					rows="2"></textarea>
			</div>
		</div>

		<div class="form-group row py-sm-3 mb-0">
			<label class="col-sm-2 col-form-label">Numéro de sécurité
				sociale: </label>
			<div class="col-sm-10">
				<input class="form-control" type="text">
			</div>
		</div>

		<div class="offset-sm-1 offset-md-10 col-sm-1">
			<input name="commit" value="Créer" class="btn btn-info" type="submit">
		</div>
	</div>
	</div>





</body>

</html>