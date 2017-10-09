function getSource() 
  ' Create the object 
  Set oXML = CreateObject("Microsoft.XMLHTTP") 
  ' Request the ASP page that will collect our data.
  oXML.Open "GET", "http://www.google.com", False 
  oXML.setRequestHeader "Content-Type","application/x-www-form-urlencoded"
  oXML.Send 
  ' Here I am populating a <DIV> tag.
  document.getElementById("test1").value = oXML.responseText ' Return Value
  getSource = Cstr(oXML.responseText)
End Function
