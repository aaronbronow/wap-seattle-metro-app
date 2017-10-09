<%@ Language="VBScript" %>
<!--#include file="includes/getsource.asp"-->
<!--#include file="includes/nohtml.asp"-->
<!--#include file="includes/getelements.asp"-->
<!--#include file="includes/getvalue.asp"-->
<%
Dim strReferrer, strRoute, strType, strDirection
strReferrer = Request("rf")
strRoute = Request("r")
strType = Request("tp")
strDirection = Request("d")

Dim strSource
strSource = getSource("http://tripplanner.metrokc.gov/cgi-bin/headway.pl?action=timepoint&operator=MT&bus_route=" & strRoute & "&type=" & strType & "&direction=" & strDirection)

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
  strFormSource = getElementContaining( getElements( strSource, "form" ), "show_times" )
  If strFormSource > "" Then
    Dim strHeadway
    arrInput = Split( strFormSource, Chr(10) )
    For Each line in arrInput
      If InStr( line, ".headway" ) > 0 Then
        Dim arrHeadway
        arrHeadway = Split( line, Chr(34) )
        For Each str In arrHeadway
          If InStr( str, ".headway" ) > 0 Then
            strHeadway = str
          End If
        Next
      End If
    Next
    strInput = getValue(getElement(getElementContaining( getElements( strFormSource, "font" ), "timepoints" ), "font"))
    arrInput = Split(strInput, "<br>")
    strInput = ""
    Dim i
    i = 1
    For Each element In arrInput
      Dim strElement
      strElement = noHTML(Trim(Replace(element,Chr(10),"")))
      If Len(strElement) > 1 Then
        strInput = strInput & "<a href=""" & strReferrer & "?location=" & i & "&locationname=" & Escape(strElement) & "&headway=" & strHeadway & """>" & strElement & "</a><br>" & vbCrLf
        i = i + 1
      End If
    Next
  End If
  htmlForm = "  <form name=""type"" method=""post"" action=""" & strReferrer & """>" & vbCrLf
  htmlForm = htmlForm & "  <p>" & vbCrLf
  htmlForm = htmlForm & "    Location:<br>" & vbCrLf
  htmlForm = htmlForm & strInput & "<br>" & vbCrLf
  htmlForm = htmlForm & "  </p>" & vbCrLf
  htmlForm = htmlForm & "  </form>" & vbCrLf
End If


%>

<html>
  <head>
    <title>Location</title>
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