## Created by Dan Wilson 10/05/2017 ##
## Version 1.0                      ##

$Username = "localadmin"
$Password = "Global2017"


$adsi = [ADSI]"WinNT://$env:COMPUTERNAME"
$existing = $adsi.Children | where {$_.SchemaClassName -eq 'user' -and $_.Name -eq $Username }



    
    $existing.SetPassword($Password)


WMIC USERACCOUNT WHERE "Name='$Username'" SET PasswordExpires=FALSE