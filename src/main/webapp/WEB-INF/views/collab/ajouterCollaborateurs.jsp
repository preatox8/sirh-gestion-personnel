<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<%@ page language="java" pageEncoding="UTF-8"%>
<title>Ajouter un collaborateur</title>
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
			</ul>
		</div>
	</nav>

	<div class="container-fluid">
		<div class="row">
			<div class="col">
				<h2>Nouveau Collaborateur</h2>
			</div>
		</div>
		<br>
		<form method="POST" name="nvcollab" id="formcreacollaborateur"
			action="<%=request.getContextPath()%>/collaborateurs/editer">
			<div class="row">
				<div class="col-12 col-md-4 col-xl-3">
					<label for="validationDefault05" class="texte-justify float-right">
						<strong>Nom</strong>
					</label>

				</div>
				<div class="col-12 col-md-6">
					<input required type="text" class="form-control" name="nom"
						id="nom">
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
					<input required type="text" class="form-control" name="prenom"
						id="prenom">
					<div class="invalid-feedback ">Le prénom est obligatoire</div>
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
						name="datenaissance" id="datenaissance">
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
					<input required type="text" class="form-control" name="adresse"
						id="adresse">
					<div class="invalid-feedback ">L'adresse est obligatoire</div>
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
						name="numsecusociale" id="numsecusociale">
					<div class="invalid-feedback ">Le numéro de sécurité sociale
						est obligatoire</div>
				</div>
			</div>
		</form>
		<br>
		<div class="row ">
			<div class="col-12 col-md-9 col-xl-9 ">
				<button type="submit" onClick="afficher_info()"
					class="btn btn-secondary btn-sm float-right " data-toggle="modal"
					data-target="#confirmcreation ">Créer</button>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade " id="confirmcreation " tabindex="-1 "
			role="dialog "
			aria-labelledby="exampleModalLabel
	                    "
			aria-hidden="true ">
			<div class="modal-dialog " role="document ">
				<div class="modal-content ">
					<div class="modal-header ">
						<h5 class="modal-title " id="exampleModalLabel ">Création
							d'un collaborateur</h5>
					</div>
					<div class="modal-body ">
						<p class="texte-justify ">Vous êtes sur le point de créer un
							nouveau collaborateur</p>
						<div class="row ">
							<div class="col-4 float-right ">
								<p class="texte-justify ">
									<strong>Nom</strong>
								</p>
							</div>
							<div class="col-7 ">
								<p class="texte-justify" id="nom_modal"></p>
							</div>
						</div>
						<div class="row ">
							<div class="col-4 float-right ">
								<p class="texte-justify ">
									<strong>Prénom</strong>
								</p>
							</div>
							<div class="col-7 ">
								<p class="texte-justify" id="prenom_modal"></p>
							</div>
						</div>
						<div class="row ">
							<div class="col-4 float-right ">
								<p class="texte-justify ">
									<strong>Date de naissance</strong>
								</p>
							</div>
							<div class="col-7 ">
								<p class="texte-justify" id="datenaissance_modal"></p>
							</div>
						</div>
						<div class="row ">
							<div class="col-4 float-right ">
								<p class="texte-justify ">
									<strong>Adresse</strong/p>
							</div>
							<div class="col-7 ">
								<p class="texte-justify" id="adresse_modal"></p>
							</div>
						</div>
						<div class="row ">
							<div class="col-4 float-right ">
								<p class="texte-justify ">
									<strong>Numéro de sécurité sociale</strong>
								</p>
							</div>
							<div class="col-7 ">
								<p class="texte-justify" id="numsecusociale_modal"></p>
							</div>
						</div>
					</div>
					<div class="modal-footer ">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Annuler</button>
						<button type="button" onClick="creationcollaborateur()"
							class="btn btn-primary">Confirmer</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js "
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN "
		crossorigin="anonymous "></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js "
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q "
		crossorigin="anonymous "></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js "
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl "
		crossorigin="anonymous "></script>
	<script>
		if (document.location.search == "?errors") {
			var nomerreur = document.getElementById("nom");
			var prenomerreur = document.getElementById("prenom");
			var datenaissanceerreur = document.getElementById("datenaissance");
			var adresseerreur = document.getElementById("adresse");
			var numesecusocialeerreur = document
					.getElementById("numsecusociale");

			nomerreur.className = "form-control is-invalid";
			prenomerreur.className = "form-control is-invalid";
			datenaissanceerreur.className = "form-control is-invalid";
			adresseerreur.className = "form-control is-invalid";
			numesecusocialeerreur.className = "form-control is-invalid";
		}

		function afficher_info() {
			var name = document.getElementById("nom").value;
			var firstname = document.getElementById("prenom").value;
			var datebirth = document.getElementById("datenaissance").value;
			var adresse = document.getElementById("adresse").value;
			var numsociale = document.getElementById("numsecusociale").value;

			
			if(name == "" || firstname == "" || datebirth == "" || adresse == "" || numsociale ==""){
					document.location.search = "?errors";
			}else{
				document.getElementById("nom_modal").innerHTML = name;
				document.getElementById("prenom_modal").innerHTML = firstname;
				document.getElementById("datenaissance_modal").innerHTML = datebirth;
				document.getElementById("adresse_modal").innerHTML = adresse;
				document.getElementById("numsecusociale_modal").innerHTML = numsociale;
			}
			
		}

		function creationcollaborateur() {

			document.forms[0].submit();

			/*	var collabObj = {
					nom : document.getElementById("nom").value,
					prenom : document.getElementById("prenom").value,
					datenaissance : document.getElementById("datenaissance").value,
					adresse : document.getElementById("adresse").value,
					numsecusociale : document.getElementById("numsecusociale").value
				}
				
				var collabsString = localStorage.getItem("collaborateurs");

				var collabsTableau = collabsString ? JSON.parse(collabsString) : [];
				collabsTableau.push(collabObj);
				
				localStorage.setItem("collaborateurs", JSON.stringify(collabsTableau));*/

		}
	</script>
</body>
</html>