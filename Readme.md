Voici une version corrigée et améliorée du README pour une clarté et une précision accrues :
---

# Exercices de Construction d'un Conteneur

Ce dépôt contient le code source et la configuration Docker pour une application web interactive. L'application affiche une série de produits et permet aux utilisateurs de révéler une question cachée en cliquant sur un bouton. Les produits pourraient être liés à une base de données, par exemple MySQL, en utilisant Docker Compose pour orchestrer les conteneurs. L'objectif de cet exemple est de démontrer comment créer un Dockerfile et gérer les conteneurs.

## Structure du Projet

- `index.php` : Fichier principal de l'application web qui contient le HTML, le CSS et le JavaScript.
- `Dockerfile` : Fichier Docker utilisé pour construire l'image contenant l'environnement Apache et PHP nécessaire pour servir l'application.

## Fonctionnalités

- **Affichage de Produits** : Montre plusieurs produits avec une interaction au survol de la souris.
- **Animation** : Utilise des animations CSS pour améliorer l'expérience utilisateur.
- **Interaction Utilisateur** : Un bouton permet de révéler des informations cachées.

## Prérequis

Pour exécuter ce projet, vous aurez besoin de :
- Docker installé sur votre machine. Vous pouvez télécharger Docker depuis [Docker Hub](https://hub.docker.com/).

## Construction de l'Image Docker

1. Clonez ce dépôt sur votre machine locale.
2. Naviguez dans le répertoire du projet via un terminal.
3. Construisez l'image Docker en utilisant la commande suivante :

   ```bash
   docker build -t tp-2024 .
   ```

   Cette commande construit une image Docker nommée `tp-2024` en utilisant le Dockerfile situé dans le répertoire courant.

## Lancement de l'Application

Pour lancer l'application, utilisez la commande Docker suivante :

```bash
docker run -d -p 80:80 tp-2024
```

Cette commande démarre un conteneur en mode détaché, mappant le port 80 du conteneur au port 80 de l'hôte. Vous pouvez accéder à l'application en naviguant sur `http://localhost` ou `http://<ip-de-votre-machine>`.

## Bonnes Pratiques de Sécurité

- **Isolation des Ressources** : Assurez-vous que chaque application s'exécute dans son propre conteneur pour limiter les risques de failles de sécurité affectant plusieurs applications.
- **Non-utilisation de l'utilisateur root** : Exécutez les processus dans le conteneur en tant qu'utilisateur non privilégié pour minimiser les dommages en cas de compromission.
- **Mise à jour des Images** : Utilisez toujours des images à jour pour bénéficier des derniers correctifs de sécurité.

---
