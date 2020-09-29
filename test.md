GExtension est un addon pour votre serveur GMod qui regroupe plusieurs fonctionnalités essentielles: dons, administration de joueur, gestion des bans &amp; avertissements, etc.

Il dispose d'une interface web permettant de configurer le plugin et administrer facilement sa communauté - nommé GMOD Web.

Les joueurs et administrateurs du serveur peuvent se connecter via Steam au panel web de l'addon, pour par exemple :

- consulter leurs statistiques
- rechercher d’autres joueurs
- faire un don
- dialoguer
- voir leurs interdictions
- créer des tickets
- et bien plus !

![](/uploads/help/installer-gextension/installer-gextension3.png)

Une démo est disponible ici: <https://gextension.ibot3.de/demo/>.

Pour voir la liste complète des fonctionnalités, rendez-vous sur le [site officiel](https://www.gmodstore.com/market/view/gextension-the-all-in-one-package-for-your-community).

Dans notre tutoriel, nous allons nous concentrer sur l'installation de l'addon et la synchronisation avec votre Teamspeak et/ou Discord.

Pré-requis
----------

- Posséder un hébergement web.
- Posséder un serveur Garry’s Mod.
- Avoir un accès FTP (ex : FileZilla).
- Avoir une base de données MySQL.

Installation de l'interface web
-------------------------------

1. Télécharger [GExtension](https://www.gmodstore.com/market/view/gextension-the-all-in-one-package-for-your-community) (vous devez posséder une licence active).
2. Procédez à l'extraction de l'archive ZIP téléchargée.
3. Transférez le contenu du dossier extrait dans le dossier `public_html` de votre FTP.
4. Éditez le fichier `config.php`.
5. Remplissez les informations à votre guise.

Changez la config SMTP uniquement si vous possédez une adresse mail personnalisée.  
/!\\ Ne touchez pas à la config du `protocol`.

Pour la configuration de la base de données :

Rentrez les informations MySQL, ces informations sont disponibles dans le panel de gestion mTxServ.  
Remplacez `XXXXX` par vos informations de connexion :

```php
Config::Set('mysql_server', 'sql.mtxserv.com');  
Config::Set('mysql_port', 3306);  
Config::Set('mysql_user', 'w_XXXXX');  
Config::Set('mysql_pw', '');  
Config::Set('mysql_db', 'XXXXX_sql'); 
```

6. Sauvegardez et envoyez le fichier `config.php` sur le serveur FTP.
7. Accédez à votre site à l'aide de votre navigateur web (ex : gextension.mtxserv.com).  
  Vous arriverez donc sur cet page :

  ![](/uploads/help/installer-gextension/installer-gextension2.png)

  Si ce n’est pas la cas, vous avez surement fait une erreur dans vos paramètres MySQL.  
  Vérifiez les informations dans le fichier de configuration de GExtension.
8. Cliquez sur `Retrieve` pour avoir votre licence, puis rentrez la license dans le champ destiné. 
9. Cliquez sur `Start` et patientez le temps que l’installation se fasse. 
10. Connectez vous sur le panel web de GExtension. 
11. Cliquez sur le `Haut-parleur`, puis sur `Settings`.  
![](/uploads/help/installer-gextension/installer-gextension1.png)
12. Allez dans `Languages`, puis cliquez sur `Add Language`. 
13. Ajoutez la langue que vous voulez. 14. Pour mettre par défaut une langue, allez dans `General`, puis choisissez la langue voulue et cliquez sur `Set for everyone`.

GExtension est désormais installé sur votre hébergement web, passons maintenant à l’installation sur le serveur de jeu.

Installation de l'addon sur le serveur GMod
-------------------------------------------

1. Connectez-vous sur votre interface web GExtension.
2. Cliquez sur le `Haut-parleur`, puis sur `Paramètres`.
3. Allez dans `Mise à jour`, puis cliquez sur `LUA`.
4. Connectez vous au FTP de votre serveur de jeu et transférez le fichier gextention récupéré dans le dossier `/srcds/garrysmod/addons`.
5. Allez dans `srcds/garrysmod/addons/gextension/lua/gextension/config`.
6. Éditez le fichier `sh_config.lua` et configurez le à votre guise.
7. Éditez le fichier `sv_config.lua` et entrez les même informations MySQL que vous avez mis pour l’hébergement web.

/!\\ Ne mettez rien pour `GExtension.socketpath`. 8. Si vous n’avez pas encore installer MySQLOO 9.5 :

Accédez à votre panel de gestion mTxServ et allez dans`Plugins` et installez `MySQLOO 9.5`. 9. Une fois le serveur redémarré, connectez vous sur celui-ci. 10. Si vous avez dans le chat le message suivant : `[GExtension] GExtension is not initialized. Please contact an admin. Check out the SERVER console for errors`.

Alors vérifiez votre configuration et que MySQLOO 9.5 est bien installé (`srcds/garrysmod/lua/bin/gmsv_mysqloo_linux.dll`). 11. Retournez sur votre site et allez dans les paramètres, puis `Serveurs`.

Si vous voyez votre serveur alors vous n’avez pas fait d’erreur. 12. Cliquez sur `Créer un lot` et rentrez les informations que vous souhaitez. 13. Il ne vous reste plus qu’à configurer GExtension à votre guise.

/!\\ Pour créer un groupe, assurez vous de mettre le nom du groupe ULX dans `NOM`.

Passons maintenant à la synchronisation avec Teamspeak

Synchronisation avec Teamspeak
------------------------------

1. Connectez vous sur votre serveur Teamspeak.
2. Allez dans `Outil`, puis `Identifiant ServerQuery`.
3. Entrez le nom que vous voulez, puis cliquez sur `OK` (ne fermez pas la fenêtre).
4. Retournez sur votre site et allez dans les paramètres, puis `Teamspeak 3`.
5. Mettez les informations nécessaires.

Pour la 2ème ligne, récupérez les informations sur la fenêtre de l’étape 3 (ne changez pas le port query). 6. Cliquez sur `Sauvegardez`. 7. Allez dans `Groupes`, puis `Modifier` et allez dans `Teamspeak 3 Synchronization`. 8. Mettez le nom du groupe présent sur Teamspeak. 9. Pour vérifiez si tout fonctionne, rendez-vous dans l’onglet `Serveurs` et vérifiez si vous avez les informations du Teamspeak. 10. Pour vous synchronisez, cliquez sur votre image de profil, puis `Paramètres` et indiquez votre identifiant Teamspeak.

Synchronisation avec Discord
----------------------------

### a) Création du bot

1. Accédez à <https://discordapp.com/developers/applications/>..
2. Une fois connecté, cliquez sur `New Application` et entrez un nom.

Une fois cela fait customisez votre bot à votre guise. 3. Allez dans `Bot`, cliquez sur `Add Bot` puis cliquez sur `Yes, do it`. 4. Cochez `Administrator`dans `Bot Permissions`. 5. Allez sur votre site, puis dans les paramètres `Discord`. 6. Récupérez le [Guilde ID](https://support.discordapp.com/hc/fr/articles/206346498-O%C3%B9-trouver-l-ID-de-mon-compte-utilisateur-serveur-message-) de votre serveur et entrez le dans `ID DE GUILDE`. 7. Récupérez le `CLIENT ID` présent dans `General Information` et entrez le dans `APPLICATION CLIENT-ID`. 8. Récupérez le `CLIENT SECRET` présent dans `General Information` et entrez le dans `TOKEN DU BOT`. 9. Cliquez sur `Sauvegardez`. 10. Cliquez sur `Ajoutez un bot à la guilde`.

### b) Synchronisation

1. Retournez sur votre site, puis `paramètres` et `Groupes`.
2. Cliquez sur `Modifiez`, puis `Discord Synchronization`
3. Entrez l’id du rôle Discord.

Pour récupérer l'ID:  
Entrez dans un channel `\@[nom du rôle]` et vous aurez en retour `<@&552888644130701312>` (ne prenez que les chiffres).

/!\\ Le rôle doit pouvoir être mentionné. 4. Pour vous synchroniser, cliquez sur votre image de profil, puis `Paramètres` . 5. Indiquez votre identifiant Discord.

Allez plus loin
---------------

Vous avez terminé l’installation de GExtension, il ne vous reste plus qu’à le configurer comme bon vous semble en vous référant au [Wiki](https://gextension.ibot3.de/wiki/index.php?title=Main_Page).
