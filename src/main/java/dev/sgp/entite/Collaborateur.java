package dev.sgp.entite;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZonedDateTime;

public class Collaborateur {
	
	private String matricule;
	private String nom;
	private String prenom;
	private LocalDate datenaissance;
	private String adresse;
	private String numsecusociale;
	private String emailpro;
	private String photo;
	private ZonedDateTime dateheurecreation;
	private Boolean actif;
	
	
	
	
	/**
	 * @return the matricule
	 */
	public String getMatricule() {
		return matricule;
	}
	/**
	 * @param matricule the matricule to set
	 */
	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}
	/**
	 * @return the nom
	 */
	public String getNom() {
		return nom;
	}
	/**
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}
	/**
	 * @return the prenom
	 */
	public String getPrenom() {
		return prenom;
	}
	/**
	 * @param prenom the prenom to set
	 */
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	/**
	 * @return the datenaissance
	 */
	public LocalDate getDatenaissance() {
		return datenaissance;
	}
	/**
	 * @param datenaissance the datenaissance to set
	 */
	public void setDatenaissance(LocalDate datenaissance) {
		this.datenaissance = datenaissance;
	}
	/**
	 * @return the adresse
	 */
	public String getAdresse() {
		return adresse;
	}
	/**
	 * @param adresse the adresse to set
	 */
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	/**
	 * @return the numsecusociale
	 */
	public String getNumsecusociale() {
		return numsecusociale;
	}
	/**
	 * @param numsecusociale the numsecusociale to set
	 */
	public void setNumsecusociale(String numsecusociale) {
		this.numsecusociale = numsecusociale;
	}
	/**
	 * @return the emailpro
	 */
	public String getEmailpro() {
		return emailpro;
	}
	/**
	 * @param emailpro the emailpro to set
	 */
	public void setEmailpro(String emailpro) {
		this.emailpro = emailpro;
	}
	/**
	 * @return the photo
	 */
	public String getPhoto() {
		return photo;
	}
	/**
	 * @param photo the photo to set
	 */
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	/**
	 * @return the actif
	 */
	public Boolean getActif() {
		return actif;
	}
	/**
	 * @param actif the actif to set
	 */
	public void setActif(Boolean actif) {
		this.actif = actif;
	}
	/**
	 * @return the dateheurecreation
	 */
	public ZonedDateTime getDateheurecreation() {
		return dateheurecreation;
	}
	/**
	 * @param dateheurecreation the dateheurecreation to set
	 */
	public void setDateheurecreation(ZonedDateTime dateheurecreation) {
		this.dateheurecreation = dateheurecreation;
	}
	public Collaborateur(String matricule, String nom, String prenom, LocalDate datenaissance, String adresse,
			String numsecusociale, String emailpro, String photo, ZonedDateTime dateheurecreation, Boolean actif) {
		super();
		this.matricule = matricule;
		this.nom = nom;
		this.prenom = prenom;
		this.datenaissance = datenaissance;
		this.adresse = adresse;
		this.numsecusociale = numsecusociale;
		this.emailpro = emailpro;
		this.photo = photo;
		this.dateheurecreation = dateheurecreation;
		this.actif = actif;
	}
	public Collaborateur() {
		super();
	}
	
	
	
	
}
