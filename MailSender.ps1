$From = "FROMADDRESS" 
$To = "TOADDRESD" 
$Cc = "CCADDRESS" 
$Attachment = "LOCALATTACHEMENTPATH" 
$Subject = "SUBJECT 
$Body = "EMAILBODY"
$SMTPServer = "SMTPSERVER" 
$SMTPPort = "SMTPPORT" 

Send-MailMessage -From $From -to $To -Cc $Cc -Subject $Subject -Body $Body -BodyAsHtml -SmtpServer $SMTPServer -Port $SMTPPort -UseSsl -Credential (Get-Credential) -Attachments $Attachment
