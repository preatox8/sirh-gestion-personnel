package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class EditerCollaborateurController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// A ajouter
		req.getRequestDispatcher("/WEB-INF/views/collab/ajouterCollaborateurs.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// recupere la valeur d'un parametre dont le nom est avecPhoto
		Boolean paramMissing = false;
		StringBuilder resError = new StringBuilder("Les paramètres suivants sont incorrects : ");
		
		String avecNom = req.getParameter("nom");
		String avecPrenom = req.getParameter("prenom");
		String avecdateNaissance = req.getParameter("datenaissance");
		String avecAdresse = req.getParameter("adresse");
		String avecNumeSecuSociale = req.getParameter("numesecusociale");
		String avecMail = avecPrenom + "."+ avecNom + "@societe.com";
		String[] dateNaissance = avecdateNaissance.split("-");
		LocalDate newDateNaissance = LocalDate.of(Integer.parseInt(dateNaissance[0]), Integer.parseInt(dateNaissance[1]), Integer.parseInt(dateNaissance[2]));
		
		
		Collaborateur collab = new Collaborateur(
				"M01",
				avecNom,
				avecPrenom,
				newDateNaissance,
				avecAdresse,
				avecNumeSecuSociale,
				avecMail,
				null,
				null,
				true
				);
		
		Constantes.COLLAB_SERVICE.sauvegarderCollaborateur(collab);
		req.setAttribute("listecollaborateur", Constantes.COLLAB_SERVICE.listerCollaborateurs());
		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);

		/*if(avecMatricule.isEmpty()) {
            paramMissing = true;
            resError.append("matricule");
        }
        if(avecTitre.isEmpty()) {
            paramMissing = true;
            resError.append("titre");
        }
        if(avecNom.isEmpty()) {
            paramMissing = true;
            resError.append("nom");
        }
        if(avecPrenom.isEmpty()) {
            paramMissing = true;
            resError.append("prenom");
        }
        if(avecNumeSecuSociale.isEmpty()) {
            paramMissing = true;
            resError.append("numsecusociale");
        }
        if(paramMissing) {
            resp.sendError(400, resError.toString());
        } else {
			resp.setStatus(201);
			resp.getWriter().write("Creation d’un collaborateur avec les informations suivantes : " + "matricule : " + avecMatricule + ", nom : " + avecNom + ", prenom : " + avecPrenom + ", titre : " + avecTitre + ", Numéro de sécurité sociale : " + avecNumeSecuSociale);
		}
		*/
		
		

	}
}
