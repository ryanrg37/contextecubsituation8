#=============================================================================================
#NAME:exercice1-3.ps1
#AUTHOR: Garcia Ryan 
#DATE: 13/03/2024
#
#Version 1.0
#COMMENTS: liste les processus "SVCHOST"
#
#=============================================================================================
#fonction 
function infoprocess ($processus)
{

$result = Get-Process -Name *$processus* | Format-Table "Id","ProcessName","description" 
$result | Out-File "C:\sauvgarde.txt"
$result | Export-csv -path C:\sauvgarde.csv -NoTypeInformation
}
#demande a l'utilisateur de renter un processus
$processus = read-host "entrez le nom d'un processuce"
#donne le resultat de la fonction 
infoprocess ($processus)