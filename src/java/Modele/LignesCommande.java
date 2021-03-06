package Modele;
// Generated Sep 12, 2018 9:59:37 AM by Hibernate Tools 4.3.1



/**
 * LignesCommande generated by hbm2java
 */
public class LignesCommande  implements java.io.Serializable {


     private LignesCommandeId id;
     private Produits produits;
     private Commandes commandes;
     private short quantite;
     private double totalLigne;

    public LignesCommande() {
    }

    public double getTotalLigne() {
        totalLigne = produits.getPrixProduit().doubleValue() * quantite;
        return totalLigne;
    }

   

    public LignesCommande(LignesCommandeId id, Produits produits, Commandes commandes, short quantite) {
       this.id = id;
       this.produits = produits;
       this.commandes = commandes;
       this.quantite = quantite;
    }
   
    public LignesCommandeId getId() {
        return this.id;
    }
    
    public void setId(LignesCommandeId id) {
        this.id = id;
    }
    public Produits getProduits() {
        return this.produits;
    }
    
    public void setProduits(Produits produits) {
        this.produits = produits;
    }
    public Commandes getCommandes() {
        return this.commandes;
    }
    
    public void setCommandes(Commandes commandes) {
        this.commandes = commandes;
    }
    public short getQuantite() {
        return this.quantite;
    }
    
    public void setQuantite(short quantite) {
        this.quantite = quantite;
    }

    public void updateLigne(Short newQuantity) {
        this.quantite = newQuantity;
    }




}


