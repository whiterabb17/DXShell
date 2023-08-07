 Define the sender, recipient, subject, and body of the email
$From = "sender@example.com"
$To = "recipient@example.com"
$Subject = "Test Email"
$Body = "This is a test email sent via remote SMTP using PowerShell."

# Define the SMTP server details
$SMTPServer = "smtp.example.com"
$SMTPPort = 587
$SMTPUsername = "username"
$SMTPPassword = "password"

# Create a new email object
$Email = New-Object System.Net.Mail.MailMessage
$Email.From = $From
$Email.To.Add($To)
$Email.Subject = $Subject
$Email.Body = $Body
# Uncomment below to send HTML formatted email
#$Email.IsBodyHTML = $true

# Create an SMTP client object and send the email
$SMTPClient = New-Object System.Net.Mail.SmtpClient($SMTPServer, $SMTPPort)
$SMTPClient.EnableSsl = $true

$SMTPClient.Credentials = New-Object System.Net.NetworkCredential($SMTPUsername, $SMTPPassword)
$SMTPClient.Send($Email)

# Output a message indicating that the email was sent successfully
Write-Host "Email sent successfully to "
