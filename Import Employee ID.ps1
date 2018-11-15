Import-module ActiveDirectory  
Import-CSV ".\Users1.csv" | % { 
$User = $_.UserName 
$ID = $_.EmployeeID
Set-ADUser $User -Replace @{'employeeID'=$ID}
} 