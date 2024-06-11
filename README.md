# Base de données PostgreSQL pour le projet chatbot

## Description

Ce dossier contient les fichiers nécessaires pour créer une base de données PostgreSQL pour le projet chatbot. Cette base de données contient les toutes les collections qui ont été extraites de l'annuaire statistique de l'Université de Lausanne et qui ont été vectorisées. Ainsi que l'historique des questions posées par les utilisateurs par session.

## Installation

Pour installer la base de données, il suffit de lancer la commande suivante :

```bash
docker-compose up --build
```

Pour que cela fonctionne, il faut avoir les variables d'environnement suivantes :

```yml
 environment:
      POSTGRES_USER: $POSTGRES_USER
      POSTGRES_PASSWORD: $POSTGRES_PASSWORD
      POSTGRES_DB: $POSTGRES_DB
```

## Utilisation

Pour se connecter à la base de données, il faut avoir un client PostgreSQL. Par exemple, pour se connecter à la base de données avec le client psql, il suffit de lancer la commande suivante :

```bash
psql -h host -p 5432 -U user -d database
```
