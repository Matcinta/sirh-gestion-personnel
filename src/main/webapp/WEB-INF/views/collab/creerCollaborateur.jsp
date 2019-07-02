<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<div class="p-2 bd-highlight">Collaborateurs</div>
		<div class="p-2 bd-highlight">Statistiques</div>
		<div class="p-2 bd-highlight">Activités</div>
	</div>
</header>

<body>

	<div class="form-group row py-sm-5 mb-3 ml-4">
		<h1 class="display-5">Nouveau Collaborateur</h1>
	</div>

	<div class="container">
		<form method="post" class="needs-validation" novalidate>
			<div class="form-group row py-sm-3 mb-0">
				<label class="col-sm-2 col-form-label" for="nom">Nom:</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="nom" id="nom"
						required>
					<div class="invalid-feedback">Le nom est obligatoire</div>
				</div>
			</div>

			<div class="form-group row py-sm-3 mb-0">
				<label class="col-sm-2 col-form-label" for="prenom">Prénom:</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="prenom" id="prenom"
						required>
					<div class="invalid-feedback">Le prénom est obligatoire</div>
				</div>
			</div>

			<div class="form-group row py-sm-3 mb-0">
				<label class="col-sm-2 col-form-label" for="dateNaissance">Date
					de naissance: </label>
				<div class="col-sm-10">
					<input class="form-control" type="date" name="dateNaissance"
						id="dateNaissance" required>
					<div class="invalid-feedback">La date de naissance est
						obligatoire</div>
				</div>
			</div>

			<div class="form-group row py-sm-3 mb-0">
				<label class="col-sm-2 col-form-label" for="adresse">Adresse:
				</label>
				<div class="col-sm-10">
					<textarea class="form-control" name="adresse" id="adresse" rows="3"
						required></textarea>
					<div class="invalid-feedback">L'adresse est obligatoire</div>
				</div>
			</div>

			<div class="form-group row py-sm-3 mb-0">
				<label class="col-sm-2 col-form-label" for="securiteSociale">Numéro
					de sécurité sociale: </label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="securiteSociale"
						id="securiteSociale" maxlength="15" minlength="15"
						pattern="[0-9]{15}" placeholder="n° de sécurité sociale" required>
					<div class="invalid-feedback">Le numéro de sécurité sociale
						est obligatoire</div>
				</div>
			</div>

			<div class="offset-sm-1 offset-md-10 col-sm-1">
				<input name="commit" value="Créer" class="btn btn-info"
					type="submit">
			</div>
		</form>

		<script>
			// Example starter JavaScript for disabling form submissions if there are invalid fields
			(function() {
				'use strict';
				window.addEventListener('load',function() {
					// Fetch all the forms we want to apply custom Bootstrap validation styles to
					var forms = document.getElementsByClassName('needs-validation');
					// Loop over them and prevent submission
					var validation = Array.prototype.filter.call(forms,function(form) {
						form.addEventListener('submit',function(event) {
							if (form.checkValidity() === false) {
								event.preventDefault();
								event.stopPropagation();
							}
						form.classList.add('was-validated');
						},
					false);
					});
				}, false);
			})();
			
		</script>

	</div>

</body>

</html>