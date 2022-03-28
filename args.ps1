# args
[cmdletbinding()]
param(
    [parameter(Mandatory=$true)] $srv,
        [parameter(Mandatory=$false)] $user='None',
        [parameter(Mandatory=$false)] $passwd='None'
)

# echo $args.count
echo "Server: $srv"
if ($user -eq 'None' -and $passwd -eq 'None') {
        # echo 'No user and no password passed'
        # $block = (& systeminfo /S $srv /fo list | select -first 32)
        $block = "systeminfo /S $srv /fo list | select -first 32"
} else {
        echo "User: $user"
        echo "Password: $passwd"
        # $block = (& systeminfo /S $srv /U $user /P $passwd /fo list | select -first 32)
        $block = "systeminfo /S $srv /U $user /P $passwd /fo list | select -first 32"
}
echo $block

# if ($args.count -lt 2) {
        # echo "*ERROR* Need old_password new_password"
        # exit(1)
# }

# $oldPasswd = $args[0]
# $newPasswd = $args[1]
# echo "Old = $oldPasswd, New = $newPasswd"

# $passHostArray = (
# "\\w-pass-101.uspto.gov\d$\eSecurityServer\config\database.properties",
# "\\w-pass-102.uspto.gov\d$\eSecurityServer\config\database.properties",
# "\\w-pass-103.uspto.gov\d$\eSecurityServer\config\database.properties",
# "\\w-pass-104.uspto.gov\d$\eSecurityServer\config\database.properties",
# "\\w-pass-105.uspto.gov\d$\eSecurityServer\config\database.properties",
# "\\w-pass-106.uspto.gov\d$\eSecurityServer\config\database.properties",
# "\\uspto-a-phirs-7.uspto.gov\d$\eSecurityServer\config\database.properties"
# )
# $passHostArray | foreach {
        # $fn = $_
        # echo "Host = $fn"
# }
# $count = 0
# $args | foreach {
        # echo "$count $_"
        # $count = $count + 1
# }

# echo "dump passHostArray"
# $passHostArray | foreach {
        # echo "host: $_"
# }
