# Exchange permissions
    # Checking mailbox permissions:
        Get-MailboxFolderPermission -Identity john@contoso.com
        # You can find specific folders as well like Calendar permissions:
        Get-MailboxFolderPermission -Identity john@contoso.com:\Calendar
    # To remove MailboxFolderPermission:
        Remove-MailboxFolderPermission -Identity john@contoso.com:\Calendar tim@contoso.com
        # This will remove Tim access to John's Calendar
    # To add MailboxFolderPermission:
        Add-MailboxFolderPermission -Identity john@contoso.com:\Calendar tim@contoso.com
        # This will add Tim back to John's Calendar
    # To set MailboxFolderPermission:
        Set-MailboxFolderPermission -Identity ayla@contoso.com:\Marketing -User ed@contoso.com -AccessRights Owner
        # This will give Ed Ownership rights over Ayla's Marketing folder
#----------------------------------*** Exchange Online Notes ***-----------------------------------------------------
# All the following are still the same except EXO is added to the prefix
    Get-EXOMailboxFolderPermission