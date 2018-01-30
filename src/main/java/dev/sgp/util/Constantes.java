package dev.sgp.util;

import dev.sgp.service.CollaborateurService;

public interface Constantes {
	// constante a ajouter pour ne créer qu'un seule instance de collabservice
	CollaborateurService COLLAB_SERVICE = new CollaborateurService();
}