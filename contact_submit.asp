<%@ Language=VBScript %>
<% if not request("message") = "" then

dim strMessage

strMessage = "Message: " & request("message") & vbnewline & vbnewline & "Referring URL: " & request("ref")

' create an instance of a NewMail object and set its properties.
dim objMail
set objMail            = server.CreateObject ("CDO.Message")
objMail.to             = "aaron@bronow.net"
objMail.from         = request("email")
objMail.subject     = "MoBuS contact from " & Request.ServerVariables("remote_addr")
objMail.TextBody        = strMessage 'place your message in the variable named strMessage

objMail.send
 Set objMail = Nothing 'deletes the mail object
 response.redirect("http://bronow.net/mobus/contact_thanks.asp")
  
else

 response.redirect("http://bronow.net/mobus/contact.asp")

end if
%>

