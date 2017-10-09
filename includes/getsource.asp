<%

Function getSource( url )
  Set oXML = CreateObject("Microsoft.XMLHTTP")
  oXML.Open "GET", url, False
  oXML.setRequestHeader "Content-Type","application/x-www-form-urlencoded"
  oXML.Send
  getSource = Cstr(oXML.responseText)
End Function

%>
