[cmdletbinding()]
param(
    [parameter(Mandatory=$true)] $fName,
    [parameter(Mandatory=$true)] $original,
        [parameter(Mandatory=$true)] $replacement
)
# echo "File: $fName Original: $original Replacement: $replacement"
# echo "cat $fName | %{$_ -replace $original,$replacement }"
# echo "(Get-Content $fName).replace($original, $replacement) | Set-Content $fName"
(Get-Content $fName).replace($original, $replacement) | Set-Content $fName
