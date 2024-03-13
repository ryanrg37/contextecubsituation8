#=============================================================================================
#NAME:exercice1-3.ps1
#AUTHOR: Garcia Ryan 
#DATE: 13/03/2024
#
#Version 1.0
#COMMENTS: liste les processus "SVCHOST"
#
#=============================================================================================
#demande a l'utilisateur de renter un processus
$processus = read-host "entrez le nom d'un processuce"
Get-Process -Name $processus | Format-Table "Id","ProcessName","description" 