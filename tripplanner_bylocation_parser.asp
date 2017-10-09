<%@ Language="VBScript" %>
<!--#include file="includes/getsource.asp"-->
<!--#include file="includes/nohtml.asp"-->
<!--#include file="includes/getelements.asp"-->
<!--#include file="includes/getvalue.asp"-->
<%
Dim strReferrer, strOrigin, strDest, strDate, strHour, strMinute, strAMPM, strTimeAt, strWalk, strMethod, strAccessibleTrip
strReferrer = Request("rf")
strOrigin = Escape(Request("orig"))
strDest = Escape(Request("dest"))
strDate = Request("date")
strTimeAt = Request("arr")
strHour = Request("hour_time")
strMinute = Request("minute_time")
strAMPM = Request("ampm_time")
strWalk = Request("walk")
strMethod = Request("min")
strAccessibleTrip = Request("atr")

Dim strSource, strQueryString
strQueryString = "http://tripplanner.metrokc.gov/cgi-bin/itin.pl?action=entry" & _
"&Orig=" & strOrigin & _
"&Dest=" & strDest & _
"&Date=" & strDate & _
"&Arr=" & strTimeAt & _
"&hour_time=" & strHour & _
"&minute_time=" & strMinute & _
"&ampm_time=" & strAMPM & _
"&Walk=" & strWalk & _
"&Min=" & strMethod & _
"&Atr=" & strAccessibleTrip

strSource = getSource(strQueryString)

Dim arrHeaders, strHeader, bolValidInput
arrHeaders = getElements( strSource, "h1" )

bolValidInput = False
strHeader = "Invalid Input"
If getElementContaining( arrHeaders, "Missing Information" ) > "" Then
  strHeader = "Missing Information"
ElseIf getElementContaining( arrHeaders, "King County Metro Transit Trip Planner" ) > "" Then
  strHeader = "" & noHTML( getElementContaining( arrHeaders, "King County Metro Transit Trip Planner" ) )
  bolValidInput = True
End If


Dim htmlRoutes, arrParagraphs, strError


If bolValidInput Then
	Dim arrTables, arrTRs, arrTDs, htmlItinerary, htmlFare
	Dim strItineraryRow, strWalkRow1, strWalkRow2, arrWalkRows, strDepartRow, strArriveRow, strFareRow1, strFareRow2
	arrTables = getElements( strSource, "table" )
	For Each htmlTable In arrTables
		If InStr(htmlTable, "Itinerary #") > 0 Then
			arrTRs = getElements( htmlTable, "tr" )
			strItineraryRow = noHTML(getElementContaining( arrTRs, "Itinerary #" ))
			
			arrWalkRows = getElementsContaining( arrTRs, "Walk" )
			strWalkRow1 = noHTML(arrWalkRows(0))
			strWalkRow2 = noHTML(arrWalkRows(1))
						
			strDepartRow = noHTML(getElementContaining( arrTRs, "Depart" ))
			strArriveRow = noHTML(getElementContaining( arrTRs, "Arrive" ))
			
			htmlItinerary = "<b>" & strItineraryRow & "</b>" & "<br>" & _
			Replace(strWalkRow1,"Walk ","<i>Walk</i><br>&nbsp;&nbsp;") & "<br>" & _
			Replace(strDepartRow,"Depart ","<i>Depart</i><br>&nbsp;&nbsp;") & "<br>" & _
			Replace(strArriveRow,"Arrive ","<i>Arrive</i><br>&nbsp;&nbsp;") & "<br>" & _
			Replace(strWalkRow2,"Walk ","<i>Walk</i><br>&nbsp;&nbsp;") & "<br>" & vbnewline
			
			htmlRoutes = htmlRoutes & htmlItinerary
		ElseIf InStr(htmlTable, "Fare:") > 0 Then
			arrTRs = getElements( htmlTable, "tr" )
			strFareRow1 = Replace(noHTML(getElementContaining( arrTRs, "Fare:" )),"&nbsp;&nbsp;&nbsp;","|")
			strFareRow1 = Replace(strFareRow1, "&nbsp;", "")
			arrFareRow1 = Split(strFareRow1,"|")
			
			strFareRow2 = Replace(noHTML(getElementContaining( arrTRs, "$" )),"&nbsp;","")
			strFareRow2 = Replace(strFareRow2,"About Fares and Transfers","")
			arrFareRow2 = Split(strFareRow2,"$")
		
			htmlFare = "<i>" & Replace(arrFareRow1(0),":",":</i>") & " $" & arrFareRow2(1) & "<br>" & _
			"<i>" & Replace(arrFareRow1(1),"  :",":</i>") & " $" & arrFareRow2(2)
			
			htmlRoutes = htmlRoutes & htmlFare & "<br><br>" & vbnewline
		End If
	Next
Else
	strHeader = noHTML(getElement( strSource, "h1" ))
	arrParagraphs = getElements( strSource, "p" )
	strError = "Transit Database Error"
	If getElementContaining( arrParagraphs, "You have forgotten to enter" ) > "" Then
		strError = "" & getElementContaining( arrParagraphs, "You have forgotten to enter" ) 
		strError = Replace(strError, "Revise Original Entries", "Back")
	ElseIf getElementContaining( arrParagraphs, "The Trip Planner system is currently being updated" ) > "" Then
		strError = "" & getElementContaining( arrParagraphs, "The Trip Planner system is currently being updated" ) 
		strError = Replace(strError, "Revise Original Entries", "Back")
	End If
	htmlRoutes = "<p>" & strError & "</p>"
End If

%>

<html>
  <head>
    <title>Trip Planner</title>
  </head>
  <body>

  <p>
    <b><%= strHeader %></b>
  </p>
   
  <hr>
  
  <%= htmlRoutes %>
  
    
  <p>
    <a href="<%= strReferrer %>">Back</a>
  </p>


  
  <!--#include file="footer.asp"-->
  </body>
</html>