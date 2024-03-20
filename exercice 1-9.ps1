#=============================================================================================
#NAME:exercice1-9.ps1
#AUTHOR: Garcia Ryan 
#DATE: 20/03/2024
#
#Version 1.0
#COMMENTS: retrouver les service proxy qui sont demarrer 
#
#=============================================================================================
#fonction 
# Parcours du fichier services.csv
Import-Csv -Path "C:\service.csv" | ForEach-Object {
    $serviceName = $_.DisplayName
    $serviceStatus = $_.Status

    # Vérification si le nom du service contient le mot "system"
    if ($serviceName -like "*proxy*") {
        # Affichage du nom du service en vert s'il contient le mot "proxy"
        Write-Host "$serviceName ($serviceStatus)" -ForegroundColor Green
    } else {
        # Affichage du nom du service sans mise en forme spéciale
        Write-Host "$serviceName ($serviceStatus)"
    }
}