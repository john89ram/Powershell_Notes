# Importing with .csv to create contacts add them to a DL and remove them from the GAL on Exchange Online.

Import-Csv "*ATG Announcement_file path*"| foreach-object { New-MailContact -Name $_.MyName -ExternalEmailAddress $_.MyPrimaryEmail }
Import-Csv "*ATG Announcement_file path*"| foreach{Add-DistributionGroupMember -Identity "ATG Announcement" -Member $_.MyPrimaryEmail}
Import-Csv "*ATG Announcement_file path*"| foreach{Set-MailContact -Identity $_.MyName -HiddenFromAddressListsEnabled $true}    