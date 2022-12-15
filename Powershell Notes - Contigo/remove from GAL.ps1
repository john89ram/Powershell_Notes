$userGALremoval = Get-Content C:\\Powershell\Scripts\DisabledUsers.txt

Set-ADUser -Identity $userGALremoval -Add  @{"msDS-cloudExtensionAttribute1" = "HideFromGAL" }

Start-ADSyncSyncCycle -PolicyType Delta