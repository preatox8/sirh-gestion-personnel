<%@page
	import="java.util.List , dev.sgp.entite.Collaborateur, dev.sgp.entite.Departement"%>
<!DOCTYPE html>
<html>

<head>
<%@ page language="java" pageEncoding="UTF-8"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Modifier Collaborateur</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/bootstrap-4.0.0-dist/css/bootstrap.css">
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">LOG</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="index.html">Collaborateurs</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="statistiques.html">Statistiques</a></li>
				<li class="nav-item"><a class="nav-link" href="activites.html">Activités</a>
				</li>
			</ul>
		</div>
	</nav>
	<br>
	<div class="container-fluid">
		<div class="row">
			<div class="col-8">
				<h2 class="float-right">NOM Prénom - Matricule</h2>
			</div>
			<div class="col">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="defaultCheck1"> <label class="form-check-label"
						for="defaultCheck1"> Désactiver </label>
				</div>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-12 col-xl-4">
				<img
					src="<%=request.getContextPath()%>/bootstrap-4.0.0-dist/image/identicon.png"
					class="rounded mx-auto d-block img-thumbnail">
			</div>
			<div class="col-12 col-xl-8">
				<div id="accordion">
					<div class="card">
						<div class="card-header" id="headingOne">
							<h5 class="mb-0">
								<button class="btn btn-link" data-toggle="collapse"
									data-target="#collapseOne" aria-expanded="true"
									aria-controls="collapseOne">Identité</button>
							</h5>
						</div>

						<div id="collapseOne" class="collapse show"
							aria-labelledby="headingOne" data-parent="#accordion">
							<div class="card-body">
								<div class="row">
									<div class="input-group mb-3">
										<div class="col-12 col-md-4 col-xl-3">
											<label for="validationDefault05"
												class="texte-justify float-right"> <strong>Civilité</strong>
											</label>
										</div>
										<div class="col-12 col-md-6 col-xl-6">
											<select class="custom-select" id="civilite">
												<option value="1">Mr</option>
												<option value="2">Mme</option>
											</select>
											<div class="invalid-feedback">La civilite est
												obligatoire</div>
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-12 col-md-4 col-xl-3">
									<label for="validationDefault05"
										class="texte-justify float-right"> <strong>Nom</strong>
									</label>
								</div>
								<div class="col-12 col-md-6">
									<input required type="text" class="form-control" id="nom">
									<div class="invalid-feedback">Le nom est obligatoire</div>
								</div>
							</div>
							<br>
							<div class="row ">
								<div class="col-12 col-md-4 col-xl-3 ">
									<p class="texte-justify float-right ">
										<strong>Prénom</strong>
									</p>
								</div>
								<div class="col-12 col-md-6 ">
									<input required type="text" class="form-control" id="prenom">
									<div class="invalid-feedback ">Le prénom est obligatoire
									</div>
								</div>
							</div>
							<br>
							<div class="row ">
								<div class="col-12 col-md-4 col-xl-3 ">
									<p class="texte-justify float-right ">
										<strong>Date de naissance</strong>
									</p>
								</div>
								<div class="col-12 col-md-6 ">
									<input required type="date" class="form-control"
										id="datenaissance">
									<div class="invalid-feedback ">La date de naissance est
										obligatoire</div>
								</div>
							</div>
							<br>
							<div class="row ">
								<div class="col-12 col-md-4 col-xl-3 ">
									<p class="texte-justify float-right ">
										<strong>Adresse</strong>
									</p>
								</div>
								<div class="col-12 col-md-6 ">
									<input required type="text" class="form-control" id="adresse">
									<div class="invalid-feedback ">L'adresse est obligatoire
									</div>
								</div>
							</div>
							<br>
							<div class="row ">
								<div class="col-12 col-md-4 col-xl-3 ">
									<p class="texte-justify float-right ">
										<strong>Numéro de sécurité sociale</strong>
									</p>
								</div>
								<div class="col-12 col-md-6 ">
									<input required type="Number" class="form-control"
										id="numsecusociale">
									<div class="invalid-feedback ">Le numéro de sécurité
										sociale est obligatoire</div>
								</div>
							</div>
							<br>
							<div class="row ">
								<div class="col-12 col-md-4 col-xl-3 ">
									<p class="texte-justify float-right ">
										<strong>Téléphone</strong>
									</p>
								</div>
								<div class="col-12 col-md-6 ">
									<input required type="Number" class="form-control"
										id="telephone">
									<div class="invalid-feedback ">Le téléphone est
										obligatoire</div>
								</div>
							</div>
							<br>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingTwo">
						<h5 class="mb-0">
							<button class="btn btn-link collapsed" data-toggle="collapse"
								data-target="#collapseTwo" aria-expanded="false"
								aria-controls="collapseTwo">Poste</button>
						</h5>
					</div>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
						data-parent="#accordion">
						<div class="card-body">
							<div class="row">
								<div class="input-group mb-3">
									<div class="col-12 col-md-4 col-xl-3">
										<label for="validationDefault05"
											class="texte-justify float-right"> <strong>Département</strong>
										</label>
									</div>
									<div class="col-12 col-md-6 col-xl-6">
										<select class="custom-select" id="departement">
											<%
												List<Departement> listeDepart = (List<Departement>) request.getAttribute("listeDepartement");
												for (Departement departement : listeDepart) {
											%>
											<option value="<%=departement.getId()%>"><%=departement.getNom()%></option>
											<%
												}
											%>
										</select>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-12 col-md-4 col-xl-3">
									<label for="validationDefault05"
										class="texte-justify float-right"> <strong>Nom</strong>
									</label>
								</div>
								<div class="col-12 col-md-6">
									<input required type="text" class="form-control" id="nomposte">
									<div class="invalid-feedback">Le nom du poste est
										obligatoire</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header" id="headingThree">
						<h5 class="mb-0">
							<button class="btn btn-link collapsed" data-toggle="collapse"
								data-target="#collapseThree" aria-expanded="false"
								aria-controls="collapseThree">Coordonnées Bancaires</button>
						</h5>
					</div>
					<div id="collapseThree" class="collapse"
						aria-labelledby="headingThree" data-parent="#accordion">
						<div class="card-body">
							<div class="row">
								<div class="col-12 col-md-4 col-xl-3">
									<label for="validationDefault05"
										class="texte-justify float-right"> <strong>Banque</strong>
									</label>
								</div>
								<div class="col-12 col-md-6">
									<input required type="text" class="form-control" id="banque">
									<div class="invalid-feedback">La banque est obligatoire</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-12 col-md-4 col-xl-3">
									<label for="validationDefault05"
										class="texte-justify float-right"> <strong>IBAN</strong>
									</label>
								</div>
								<div class="col-12 col-md-6">
									<input required type="text" class="form-control" id="iban">
									<div class="invalid-feedback">L'IBAN est obligatoire</div>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-12 col-md-4 col-xl-3">
									<label for="validationDefault05"
										class="texte-justify float-right"> <strong>BIC</strong>
									</label>
								</div>
								<div class="col-12 col-md-6">
									<input required type="text" class="form-control" id="bic">
									<div class="invalid-feedback">Le BIC est obligatoire</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-12">
				<button type="submit" class="btn btn-primary float-right"
					id="sauvegarder">Sauvegarder</button>
			</div>
		</div>
	</div>



	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script>
		if (document.location.search == "?errors") {
			var nomerreur = document.getElementById("nom");
			var prenomerreur = document.getElementById("prenom");
			var datenaissanceerreur = document.getElementById("datenaissance");
			var adresseerreur = document.getElementById("adresse");
			var numesecusocialeerreur = document
					.getElementById("numsecusociale");
			var telephoneerreur = document.getElementById("telephone");

			nomerreur.className = "form-control is-invalid";
			prenomerreur.className = "form-control is-invalid";
			datenaissanceerreur.className = "form-control is-invalid";
			adresseerreur.className = "form-control is-invalid";
			numesecusocialeerreur.className = "form-control is-invalid";
			telephoneerreur.className = "form-control is-invalid";

			var nomposteerreur = document.getElementById("nomposte");

			nomposteerreur.className = "form-control is-invalid";

			var ibanerreur = document.getElementById("iban");
			var bicerreur = document.getElementById("bic");

			ibanerreur.className = "form-control is-invalid";
			bicerreur.className = "form-control is-invalid";
		}
	</script>
</body>

</html>