# deployAksTerraform

Structure :
./module/...

contient les fichiers main et variables relatifs au module, réutilisables sur différentes infras

./deployAksTerraform/

contient les fichiers d'appel du module main.tf, variables.tf et terraform.tfvars
le premier appelle le module, le second définit les variables à utiliser dans ce module et le dernier est à éditer avec les valeurs désirée.
Tous les fichiers restent fixes suivant les infras sauf le .tfvars
