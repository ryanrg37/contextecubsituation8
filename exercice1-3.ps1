#=============================================================================================
#NAME:exercice1-3.ps1
#AUTHOR: Garcia Ryan 
#DATE: 13/03/2024
#
#Version 1.0
#COMMENTS: liste les processus "SVCHOST"
#
#=============================================================================================
Get-Process -Name svchost | Format-Table "Id","ProcessName","description"