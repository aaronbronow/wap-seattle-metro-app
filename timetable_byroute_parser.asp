<%@ Language="VBScript" %>
<!--#include file="includes/getsource.asp"-->
<!--#include file="includes/nohtml.asp"-->
<!--#include file="includes/getelements.asp"-->
<!--#include file="includes/getvalue.asp"-->
<%
Dim strReferrer, strRoute, intDirection, intType, intStartHour, intEndHour, strStartAMPM, strEndAMPM, intLocation, intLateNight, strOperator, strHeadway
strReferrer = Request("rf")
strRoute = Request("bus_route")
intDirection = Request("direction")
intType = Request("type")
intStartHour = Request("start_hour")
intEndHour = Request("end_hour")
strStartAMPM = Request("start_ampm")
strEndAMPM = Request("end_ampm")
intLocation = Request("timepoints")
intLateNight = Request("late_night")
strOperator = Request("operator")
strHeadway = Request("headway")

Dim strSource, strQueryString
strQueryString = "http://tripplanner.metrokc.gov/cgi-bin/headway.pl?action=result&operator=" & strOperator & "&bus_route=" & strRoute & "&type=" & intType & "&direction=" & intDirection & "&start_hour=" & intStartHour & "&end_hour=" & intEndHour & "&start_ampm=" & strStartAMPM & "&end_ampm=" & strEndAMPM & "&late_night=" & intLateNight & "&timepoints=" & intLocation & "&headway=" & strHeadway
strSource = getSource(strQueryString)

Dim arrHeaders, strHeader, bolValidInput
arrHeaders = getElements( strSource, "h1" )

bolValidInput = False
strHeader = "Invalid Input"
If getElementContaining( arrHeaders, "Missing Information" ) > "" Then
  strHeader = "Invalid Route Number (" & strRoute & ")"
ElseIf getElementContaining( arrHeaders, "Metro Route" ) > "" Then
  strHeader = "" & noHTML( getElementContaining( arrHeaders, "Metro Route" ) )
  bolValidInput = True
End If




Dim arrTables, strTableSource, htmlTimetable
arrTables = getElements( strSource, "table" )

If getElementContaining( arrTables, "late night option" ) > "" Then
  strTableSource = getElementContaining( arrTables, "late night option" )
Else
  strTableSource = getElementContaining( arrTables, "630" )
End If

Dim arrRows
arrRows = getElements( strTableSource, "tr" )
For Each row In arrRows
  Dim arrCells
  arrCells = getElements( row, "td" )
  
    If UBound(arrCells) < 1 Then
      htmlTimetable = htmlTimeTable & "<i>" & noHTML(Trim(arrCells(0))) & "</i><br>" & vbLF
    Else
      htmlTimetable = htmlTimeTable & noHTML(Trim(arrCells(0))) & " " & noHTML(Trim(arrCells(1))) & "<br>" & vbLF   
    End If
   
Next

'htmlTimeTable = htmlTimeTable & "<pre>" & strQueryString & vbLF & strSource & "</pre>"
%>

<html>
  <head>
    <title>Timetable</title>
  </head>
  <body>

  <p>
    <b><%= strHeader %></b>
  </p>
   
  <hr>
  
  <%= htmlTimetable %>
  
    
  <p>
    <a href="<%= strReferrer %>">Back</a>
  </p>

  <p>
    Timetable Symbols:<br>
    -- = No service at this location in this time range<br>
    E = Express<br>
    $ = Peak trip
  </p>

  
  <!--#include file="footer.asp"-->
  </body>
</html>