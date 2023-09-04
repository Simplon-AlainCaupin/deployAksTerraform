# deployAksTerraform

1 - Création du main.tf  
2 - Création de variables.tf, qui fera le lien entre main et les variables à utiliser  
3 - Création d'un fichier "variables.tfvars" où les valeurs seront modifiées en fonction du projet  

terraform apply -var-file=variables.tfvars
