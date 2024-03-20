#=============================================================================================
#NAME:exercice1-9.ps1
#AUTHOR: Garcia Ryan 
#DATE: 20/03/2024
#
#Version 1.0
#COMMENTS: retrouver les service que l'on souhaite et l'affiche en vert 
#
#=============================================================================================
#fonction
# Demande à l'utilisateur le mot à filtrer
$motAFiltrer = Read-Host "Entrez le mot à filtrer dans le nom des services"

# Parcours du fichier services.csv
Import-Csv -Path "C:\service.csv" | ForEach-Object {
    $serviceName = $_.DisplayName
    $serviceStatus = $_.Status

    # Vérification si le nom du service contient le mot spécifié par l'utilisateur
    if ($serviceName -like "*$motAFiltrer*") {
        # Affichage du nom du service en vert s'il contient le mot spécifié
        Write-Host "$serviceName ($serviceStatus)" -ForegroundColor Green
    } else {
        # Affichage du nom du service sans mise en forme spéciale
        Write-Host "$serviceName ($serviceStatus)"
    }
}
