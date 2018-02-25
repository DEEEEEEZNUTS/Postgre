# Postgre
Timon ROSE / Killian BRUN
----------Configuration Base de donnée, utilisation des scripts----------

Téléchargez sur la machine virtuelle les deux scripts ainsi que la base de donnée en .tar.gz
Faire la commande:  - Faire un cd là où se situe les éléments une fois téléchargés
                    - gunzip appli_web.tar.gz
                    - tar -xf appli_web.tar
                    - sudo mv appl_web /var/www/html
                    - cd /var/www/html
                    - rm index.html
                    - sudo mkdir Backup
                    - sudo chmod 777 Backup
                    - cd Backup
                    - sudo mv /home/[nom d'utilisateur]/Downloads/Backup.sh .
                    - sudo mv /home/[nom d'utilisateur]/Downloads/Restore.sh .
                    - sudo chmod 777 Backup.sh Restore.sh
                    
Sur le navigateur web, aller sur /localhost/phpmyadmin, se connecter en root avec la 
documentation vue précédemment.
Créez une nouvelle base de donnée en cliquant sur "nouvelle base de données", entrez le nom 
"appli_web". Cliquez ensuite sur "import", puis "browse...", sélectionnez ensuite le fichier
"/var/www/html/appli_web/parc_informatique.sql" puis enregistrer en bas de la page.

Retournez ensuite sur le terminal
il est préferable d'executer les scripts en root avec la commande : sudo su
pour les executer faire : <sh Backup.sh>
Ce script permet de créer un dossier backup, une sauvegarde est crée dans le dossier 
/var/www/html/Backup/backups/mysql_backup/[la date à laquelle le script à été lancé)
nous avons donc un fichier en .tar.gz, permettant de reprendre les étapes vue précédemment 
pour restaurer une sauvegarde spécifique.
Concernant Restore.sh, il permet de restaurer la dernière sauvegarde en date.
