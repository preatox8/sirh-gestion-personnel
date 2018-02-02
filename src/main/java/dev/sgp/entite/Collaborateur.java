package dev.sgp.entite;

import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.util.Collection;

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
	private String intitulePoste;
	private Departement departement;
	private String banque;
	private String bic;
	private String iban;
	
	private static int nbr_Instance =0;
	
	
	
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
	
	/**
	 * @return the intitulePoste
	 */
	public String getIntitulePoste() {
		return intitulePoste;
	}
	/**
	 * @param intitulePoste the intitulePoste to set
	 */
	public void setIntitulePoste(String intitulePoste) {
		this.intitulePoste = intitulePoste;
	}
	/**
	 * @return the departement
	 */
	public Departement getDepartement() {
		return departement;
	}
	/**
	 * @param departement the departement to set
	 */
	public void setDepartement(Departement departement) {
		this.departement = departement;
	}
	
	public Collaborateur() {
		super();
	}
	/**
	 * @return the banque
	 */
	public String getBanque() {
		return banque;
	}
	/**
	 * @param banque the banque to set
	 */
	public void setBanque(String banque) {
		this.banque = banque;
	}
	/**
	 * @return the bic
	 */
	public String getBic() {
		return bic;
	}
	/**
	 * @param bic the bic to set
	 */
	public void setBic(String bic) {
		this.bic = bic;
	}
	/**
	 * @return the iban
	 */
	public String getIban() {
		return iban;
	}
	/**
	 * @param iban the iban to set
	 */
	public void setIban(String iban) {
		this.iban = iban;
	}
	public Collaborateur(String nom, String prenom, LocalDate datenaissance, String adresse,
			String numsecusociale, String emailpro, String photo, ZonedDateTime dateheurecreation, Boolean actif,
			String intitulePoste, Departement departement, String banque, String bic, String iban) {
		
		super();
		Collaborateur.nbr_Instance++;
		this.matricule = "M" + Collaborateur.nbr_Instance;
		this.nom = nom;
		this.prenom = prenom;
		this.datenaissance = datenaissance;
		this.adresse = adresse;
		this.numsecusociale = numsecusociale;
		this.emailpro = emailpro;
		this.photo = photo;
		this.dateheurecreation = dateheurecreation;
		this.actif = actif;
		this.intitulePoste = intitulePoste;
		this.departement = departement;
		this.banque = banque;
		this.bic = bic;
		this.iban = iban;
	}
	
	
	
	
}
