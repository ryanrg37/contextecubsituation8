#=============================================================================================
#NAME:exercice1-3.ps1
#AUTHOR: Garcia Ryan 
#DATE: 20/03/2024
#
#Version 1.0
#COMMENTS: liste les processus "SVCHOST"
#
#=============================================================================================
#fonction
function Get-StartedServices {
    Write-Host "Liste des services démarrés :"
    $services = Get-Service | Where-Object { $_.Status -eq "Running" }
    $services | Select-Object DisplayName, Description, Status
}

# Appel de la fonction Get-StartedServices pour obtenir les services démarrés
$startedServices = Get-StartedServices

# Exportation des informations dans un fichier CSV
$startedServices | Export-Csv -Path "C:\service.csv" -NoTypeInformation