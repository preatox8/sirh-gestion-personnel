package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.service.DepartementService;
import dev.sgp.util.Constantes;

public class EditerCollaborateurController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// A ajouter
				CollaborateurService collabService = Constantes.COLLAB_SERVICE;
				DepartementService departService = Constantes.DEPART_SERVICE;
				
				
				req.setAttribute("listeDepartement", departService.listerDepartement());
				req.setAttribute("listeCollaborateur", collabService.listerCollaborateurs());
		req.getRequestDispatcher("/WEB-INF/views/collab/ajouterCollaborateurs.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String avecNom = req.getParameter("nom");
		String avecPrenom = req.getParameter("prenom");
		String avecdateNaissance = req.getParameter("datenaissance");
		String avecAdresse = req.getParameter("adresse");
		String avecNumeSecuSociale = req.getParameter("numesecusociale");
		String avecMail = avecPrenom + "."+ avecNom + "@societe.com";
		String[] dateNaissance = avecdateNaissance.split("-");
		LocalDate newDateNaissance = LocalDate.of(Integer.parseInt(dateNaissance[0]), Integer.parseInt(dateNaissance[1]), Integer.parseInt(dateNaissance[2]));
		
		
		Collaborateur collab = new Collaborateur(
				avecNom,
				avecPrenom,
				newDateNaissance,
				avecAdresse,
				avecNumeSecuSociale,
				avecMail,
				null,
				null,
				true,
				null,
				null,
				null,
				null,
				null
				);
		
		Constantes.COLLAB_SERVICE.sauvegarderCollaborateur(collab);
		req.setAttribute("listeCollaborateur", Constantes.COLLAB_SERVICE.listerCollaborateurs());
		req.setAttribute("listeDepartement", Constantes.DEPART_SERVICE.listerDepartement());
		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);

	}
}
