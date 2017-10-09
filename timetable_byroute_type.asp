<%@ Language="VBScript" %>
<!--#include file="includes/getsource.asp"-->
<!--#include file="includes/nohtml.asp"-->
<!--#include file="includes/getelements.asp"-->
<!--#include file="includes/getvalue.asp"-->
<%
Dim strReferrer, strRoute
strReferrer = Request("rf")
strRoute = Request("r")

Dim strSource
strSource = getSource("http://tripplanner.metrokc.gov/cgi-bin/headway.pl?action=entry&operator=MT&bus_route=" & strRoute & "&type=0")

Dim arrHeaders, strHeader, bolValidInput
arrHeaders = getElements( strSource, "h1" )

bolValidInput = False
strHeader = "<b>Invalid Input</b>"
If getElementContaining( arrHeaders, "Missing Information" ) > "" Then
  strHeader = "<b>Invalid Route Number (" & strRoute & ")</b>"
ElseIf getElementContaining( arrHeaders, "Metro Route" ) > "" Then
  strHeader = "<b>" & noHTML( getElementContaining( arrHeaders, "Metro Route" ) ) & "</b>"
  bolValidInput = True
End If


Dim htmlForm, htmlSelection
htmlForm = ""
htmlSelection = ""
If bolValidInput = True Then
  Dim strFormSource, strInput, arrInput
  strFormSource = getElementContaining( getElements( strSource, "form" ), "FormName" )
  If strFormSource > "" Then
    Dim strService
    strService = getElement( getElementContaining( getElements( strFormSource, "td" ), "type of service" ), "font" )
    If strService > "" Then
      strService = getValue( strService )
      arrInput = Split(strService, "<br>")
    Else
      strService = getElement( getElementContaining( getElements( strFormSource, "td" ), "only operates" ), "font" )
      arrInput = Split(getValue( strService ), "<br>")
    End If
    Dim i
    i = 0
    For Each element In arrInput
      Dim strElement
      strElement = noHTML(Trim(Replace(element,chr(10),"")))
      If Len(strElement) > 1 Then
        strInput = strInput & "<a href=""" & strReferrer & "?type=" & i & "&typename=" & strElement & """>" & strElement & "</a><br>" & vbCrLf
        i = i + 1
      End If
    Next
  End If
  htmlForm = "  <form name=""type"" method=""post"" action=""" & strReferrer & """>" & vbCrLf
  htmlForm = htmlForm & "  <p>" & vbCrLf
  htmlForm = htmlForm & "    Type of service:<br>" & vbCrLf
  htmlForm = htmlForm & strInput & "<br>" & vbCrLf
  htmlForm = htmlForm & "  </p>" & vbCrLf
  htmlForm = htmlForm & "  </form>" & vbCrLf
End If


%>

<html>
  <head>
    <title>Type of Service</title>
  </head>
  <body>

  <p>
    <%= strHeader %>
  </p>
  
  <%= htmlForm %>
    
  <p>
    <a href="<%= strReferrer %>">Back</a>
  </p>
  
  
  <!--#include file="footer.asp"-->
  </body>
</html>