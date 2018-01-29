package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// recupere la valeur d'un parametre dont le nom est avecPhoto
		String avecMatricule = req.getParameter("matricule");

		if (avecMatricule == null) {
			/*
			 * resp.setStatus(HttpServletResponse. SC_BAD_REQUEST);
			 * resp.getWriter().write("<h1>Edition de collaborateurs</h1>" + "<p>" +
			 * "Un matricule est attendu" + ".</p>");
			 */
			resp.sendError(400, "Un matricule est attendu");
		} else {
			resp.setContentType("text/html");
			// code HTML ecrit dans le corps de la reponse
			resp.getWriter()
					.write("<h1>Edition de collaborateurs</h1>" + "<p>" + "Matricule : " + avecMatricule + ".</p>");
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// recupere la valeur d'un parametre dont le nom est avecPhoto

		Boolean paramMissing = false;
		StringBuilder resError = new StringBuilder("Les paramètres suivants sont incorrects : ");
		
		String avecMatricule = req.getParameter("matricule");
		String avecNom = req.getParameter("nom");
		String avecPrenom = req.getParameter("prenom");
		String avecTitre = req.getParameter("titre");

		if(avecMatricule.isEmpty()) {
            paramMissing = true;
            resError.append("matricule ");
        }
        if(avecTitre.isEmpty()) {
            paramMissing = true;
            resError.append("titre ");
        }
        if(avecNom.isEmpty()) {
            paramMissing = true;
            resError.append("nom ");
        }
        if(avecPrenom.isEmpty()) {
            paramMissing = true;
            resError.append("prenom ");
        }
        if(paramMissing) {
            resp.sendError(400, resError.toString());
        } else {
			resp.setStatus(201);
			resp.getWriter().write("Creation d’un collaborateur avec les informations suivantes : " + "matricule : " + avecMatricule + ", nom : " + avecNom + ", prenom : " + avecPrenom + ", titre : " + avecTitre);
		}

	}
}
