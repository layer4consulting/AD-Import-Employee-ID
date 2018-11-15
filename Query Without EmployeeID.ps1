Get-ADUser -SearchBase "OU=Domain Users,DC=us,DC=contoso,DC=com" -filter * -Properties employeeid | ? {(-not($_.employeeId))} | Select Name,EmployeeID | Format-Table -AutoSize