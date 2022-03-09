# Le Projet

Ce projet a été réalisé dans le cadre d'un travail de groupe. Le but était de simuler la création d'application pour la gestion d'un tournois de tennis (https://openparc.com/).
Chaque groupe devait développer deux modules lié à cette application de gestion. Ici, nous avons choisi le module billetterie et le module planning.

# Module Planning

Le but du module planning est de faire une application Java permettant la génération d'un planning des différents matchs du tounois, celle-ci étant aléatoire. De plus, il est possible de saisir les scores des différents matchs et de supprimer un planning pour en générer un nouveau. Les joueurs ont aussi la possibilité de s'authentifier pour réserver les terrains afin de s'entraîner sur les terrains libres.


## Interface Utilisateur

![swing ong](https://user-images.githubusercontent.com/17174941/157524488-220ea6f7-e7ae-4d31-b134-6f535aa9e5f5.png)

L'application se présente sous la forme d'une interface graphique proposant les différentes fonctionnalité.

![interface_swing1](https://user-images.githubusercontent.com/17174941/157525049-8d5484ad-985b-4ad3-a315-3875236f1f2e.png)

## Liste totales des fonctionnalités

* Générer un planning
* Ecraser un planning
* Consulter un planning
* Saisir les score
* Saisir le vainqueur d'un match
* Réserver un terrain pour de l'entraînement

# Module Billetterie

Le but du module billetterie est de proposer aux spectateurs une plateforme facile d'utilisation sur laquelle ils peuvent réserver leurs billets pour les differents
Jours et differents mat chs . L"utilisateur reserve un match, entre ses informations personnelles et l'application simule un palement reussl. Ll est ensuite possible
pour les Clients de retrOuver leurs reservation grace a une adresse emall et un code secret.

Les mots de passes utilisés sont chiffrés pour une meilleur sécurité.

![Screenshot_1](https://user-images.githubusercontent.com/17174941/157530701-c077b114-82fe-4b4c-a90d-89c36a45e419.png)

## L'interface utilisateur

L'interfāce utilisateur est une application web monopage dévéloppêe ā l'aide de la bibliothéque **React.js** et de l'environnement **Create React App**.

<img src="https://user-images.githubusercontent.com/17174941/157527435-b0c80fe1-2040-49bf-8a48-8aa41b4a1924.png" width="150px" heigh="150px">

### Captures d'écran

![Image2](https://user-images.githubusercontent.com/17174941/157527797-7dc29dab-2aaf-4255-91b3-93ed5afdb3e5.png)![Image3](https://user-images.githubusercontent.com/17174941/157527808-cb84ecc9-416d-465c-bb8b-436299f3eb27.png)

## Le serveur

Pour la partie back-end de l'application web, nous avons fait appel à une API développée à l'aide de Symfony et API Platform. L'application React fait tout simplement des requêtes vers dle serveur PHP qui s'occupe ensuited de faire des requpetes vers la base de donnée en fonction des endpoints sur lesquels les requêtes sont effectuées.

![index](https://user-images.githubusercontent.com/17174941/157529492-50829bfa-c807-4a06-85ac-cfe72d84001c.png)
![13420081](https://user-images.githubusercontent.com/17174941/157529663-091520d2-c656-469a-bffd-e8f808ff3f79.png)

## La base de données

Le coeur du projet était d'utilsier une base de données unifiée et commune aux deux modules. Les matchs générés par l'application Java doivent être accessible sur la plateforme de billetterie, et les lcients doivent pouvoir réserver leur place pour chacun d'eux.
La base de données est une base de données relationnelle fonctionnant grâce à SQL et au SGBD MySQL.

<img src="https://user-images.githubusercontent.com/17174941/157530335-c1458168-551f-4d89-a980-c11fa6d0145b.png" width="200px" height="103px">

# Structure du projet

Le projet respecte le design pattern MVC, on retrouve donc des models et des controllers correspondants aux tables de la base de données.

<details close>
<summary>Base de données</summary>
  
![bdd](https://user-images.githubusercontent.com/17174941/157530901-474b8e36-3114-492a-9bcb-fb30b82f838c.png)

</details>

<details close>
  <summary>Projet JAVA</summary>
  
  ![Image5](https://user-images.githubusercontent.com/17174941/157531406-f804f08f-49db-47d0-8320-d00a0b575f33.png)
  
</details>
