<%@ page import="java.util.List, dev.sgp.entite.Collaborateur, dev.sgp.entite.Departement"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
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
				<li class="nav-item"><a class="nav-link" href="./">Collaborateurs</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="statistiques.html">Statistiques</a></li>
				<li class="nav-item"><a class="nav-link" href="activites.html">Activités</a>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col">
				<a href="<%=request.getContextPath()%>/collaborateurs/editer"
					type="button" class="btn btn-secondary btn-sm float-right">Ajouter
					un nouveau collaborateur</a>
			</div>
		</div>

		<div class="row">
			<div class="col">
				<h2>Les Collaborateurs</h2>
			</div>
		</div>

		<div class="row">
			<div class="col-10">
				<form class="form-inline">
					<div class="form-group mb-2">
						<p class="text-justify">Rechercher un nom ou un prénom qui
							commence par :</p>
					</div>
					<div class="form-group mx-sm-3 mb-2">
						<input type="text" class="form-control" id="inputName">
					</div>
					<button type="submit" class="btn btn-primary mb-2">Rechercher</button>
				</form>
			</div>
			<div class="col">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value=""
						id="defaultCheck1"> <label class="form-check-label"
						for="defaultCheck1"> Voir les collaborateurs désactivés </label>
				</div>
			</div>
		</div>



		<div class="row">
			<div class="col">
				<div class="input-group mb-3">
					<p class="texte-justify float-right">Filtrer par département :</p>
					&nbsp;&nbsp; <select class="custom-select" id="inputGroupSelect02">
											<option selected>Tous</option>
					
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

			<%
				List<Collaborateur> listecollab = (List<Collaborateur>) request.getAttribute("listeCollaborateur");
				for (Collaborateur collaborateur : listecollab) {
			%>

			<div class="col-12 col-md-4 col-xl-4 ">
				<div class="card">
					<div class="card-header"><%=collaborateur.getNom()%><%=collaborateur.getPrenom()%></div>
					<div class="card-body">
						<div class="row">
							<div class="col-12 col-xl-6">
								<img
									src="<%=request.getContextPath()%>/bootstrap-4.0.0-dist/image/identicon.png"
									class="rounded mx-auto d-block img-thumbnail">
							</div>
							<div class="col-12 col-xl-6">
								<p class="card-text">
									<strong>Fonction : </strong>Directeur
								</p>
								<p class="card-text">
									<strong>Département : </strong>Ressources Humaines
								</p>
								<p class="card-text">
									<strong>Email : </strong><%=collaborateur.getEmailpro()%>
								</p>
								<p class="card-text">
									<strong>Téléphone : </strong>6666666666
								</p>
								<a href="./editer-collab.html"
									class="btn btn-primary float-right">Editer</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br>
			<%
				}
			%>
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
</body>

</html>