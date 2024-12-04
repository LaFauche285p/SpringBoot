Compte Rendu de l'API Spring Boot
Introduction
Ce compte rendu présente l'API Spring Boot développée pour la gestion des groupes de musique, des musiciens, des personnes et des instruments. L'API permet de créer, récupérer, mettre à jour et supprimer

Fonctionnalités


1. Gestion des Groupes de Musique
   
Créer un groupe : Ajouter un nouveau groupe de musique.
Récupérer un groupe : Obtenir les détails d'un groupe spécifique.
Récupérer tous les groupes : Obtenir la liste de tous les groupes.
Mettre à jour un groupe : Modifier les informations d'un groupe existant.
Supprimer un groupe : Supprimer un groupe de la base de données.


2. Gestion des Musiciens
   
Créer un musicien : Ajouter un nouveau musicien.
Récupérer un musicien : Obtenir les détails d'un musicien spécifique.
Récupérer tous les musiciens : Obtenir la liste de tous les musiciens.
Mettre à jour un musicien : Modifier les informations d'un musicien existant.
Supprimer un musicien : Supprimer un musicien de la base de données.


3. Gestion des Personnes
   
Créer une personne : Ajouter une nouvelle personne.
Récupérer une personne : Obtenir les détails d'une personne spécifique.
Récupérer toutes les personnes : Obtenir la liste de toutes les personnes.
Mettre à jour une personne : Modifier les informations d'une personne existante.
Supprimer une personne : Supprimer une personne de la base de données.


4. Gestion des Instruments
   
Créer un instrument : Ajouter un nouvel instrument.
Récupérer un instrument : Obtenir les détails d'un instrument spécifique.
Récupérer tous les instruments : Obtenir la liste de tous les instruments.
Mettre à jour un instrument : Modifier les informations d'un instrument existant.
Supprimer un instrument : Supprimer un instrument de la base de données.

Créer un groupe (POST)
URL: http://localhost:8080/api/v1/groupes

Récupérer tous les groupes
URL: http://localhost:8080/api/v1/groupes
Méthode: GET

Supprimer un groupe
URL: http://localhost:8080/api/v1/groupes/1
Méthode: DELETE
