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
function infoprocess {
    param($processusName)

    Write-Host "Affichage des processus contenant : $processusName"
    $processus = Get-Process | Where-Object { $_.ProcessName -like "*$processusName*" }
     # Exportation vers un fichier texte
    $processus | Format-Table ID, Name, Description | Out-File "C:\sauvgarde.txt" -Encoding utf8
    
    # Exportation vers un fichier CSV
    $processus | Select-Object ID, Name, Description | Export-Csv -Path "C:\sauvgarde.csv" -NoTypeInformation
}


# Demande à l'utilisateur de saisir un processus
$processusName = Read-Host "Entrez le nom d'un processus"

# Appelle la fonction infoprocess avec le nom du processus
infoprocess -processusName $processusName


