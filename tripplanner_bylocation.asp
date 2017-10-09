<%@ Language="VBScript" %>
<!--#include file="includes/getsource.asp"-->
<!--#include file="includes/landmarks.asp"-->

<%
Function getData( name )
  Dim newData, oldData
  
  'get the persisted data
  If Session( name ) > "" Then
    oldData = Session( name )
  Else
    oldData = ""
  End If
  
  'check old data against new data
  If Not Request( name ) > "" Then
    'if user input is empty
    newData = oldData
  ElseIf oldData = Request( name ) Then
    'if old data is equal to user input
    newData = oldData
  Else
    'if user input is not empty and not equal to old data
    newData = Request( name )
  End If
  
  'persist new data
  Session( name ) = newData
  
  getData = newData
End Function

Dim strOrigin, strDest, strDate, strTime, strHour, strMinute, strAMPM, strTimeAt, strWalk, strWalkDesc, strMethod, strMethodDesc, strAccessibleTrip, strAccessibleTripDesc
Dim strOriginQuery, strDestQuery, strDateQuery, strTimeQuery, strWalkQuery, strMethodQuery, strAccessibleTripQuery
Dim strArr

strOrigin = getData( "orig" )
strDest = getData( "dest" )
strDate = getData( "date" )
strHour = getData( "hour" )
strMinute = getData( "minute" )
strAMPM = getData( "ampm" )
strTimeAt = getData( "timeat" )
strWalk = getData( "walk" )
strMethod = getData( "method" )
strAccessibleTrip = getData( "accessible" )



If strOrigin > "" Then
  strOriginQuery = "&v=" & Escape(strOrigin)
End If

If strDest > "" Then
  strDestQuery = "&v=" & Escape(strDest)
End If

If Not strDate > "" Then
  strDate = FormatDateTime(Date,2)
End If
strDateQuery = "&v=" & strDate

'If the hour has not been set using the cookie then set it to now
If Not strHour > "" Then
  Dim numHour
  numHour = Hour(Now)
  'If the minute has not been set using the cookie then set it to now and round to 15
  If Not strMinute > "" Then
		strMinute = Fix(Minute(Now)/15)*15
	End If
  If strMinute = "0" Then
    strMinute = "00"
  End If
  If numHour = 0 Then
		strHour = 12
		strAMPM = "AM"
	ElseIf numHour < 12 Then
    strHour = numHour
    strAMPM = "AM"
  ElseIf numHour = 12 Then
    strHour = numHour
    strAMPM = "PM"
  ElseIf numHour = 24 Then
    strHour = numHour - 12
    strAMPM = "AM"
  Else
    strHour = numHour - 12
    strAMPM = "PM"
  End If
End If

If Not strTimeAt > "" Then
	strTimeAt = "origin"
End If

If strTimeAt = "origin" Then
	strTime = "Leave at "
	strArr = "D"
Else
	strTime = "Arrive at "
	strArr = "A"
End If

strTime = strTime & strHour & ":" & strMinute & " " & strAMPM
strTimeQuery = "&timeat=" & strTimeAt & "&hour=" & strHour & "&minute=" & strMinute & "&ampm=" & strAMPM

If Not strMethod > "" Then
	strMethod = "T"
End If

If strMethod = "T" Then
	strMethodDesc = "Fastest Way"
ElseIf strMethod = "X" Then
	strMethodDesc = "Fewest Transfers"
ElseIf strMethod = "W" Then
	strMethodDesc = "Minimal Walking"
End If

If Not strAccessibleTrip > "" Then
	strAccessibleTrip = "N"
End If

If strAccessibleTrip = "Y" Then
	strAccessibleTripDesc = "Yes"
Else
	strAccessibleTripDesc = "No"
End If


If strWalk = ".25" Then
	strWalkDesc = "1/4 Mile"
ElseIf strWalk = ".50" Then
	strWalkDesc = "1/2 Mile"
ElseIf strWalk = ".75" Then
	strWalkDesc = "3/4 Mile"
Else
	strWalkDesc = "1 Mile"
End If

strWalkQuery = "&type=select&o=.25&ol=1/4 Mile&o=.50&ol=1/2 Mile&o=.75&ol=3/4 Mile&o=1&ol=1 Mile&s=" & strWalk
strMethodQuery = "&type=select&o=T&ol=Fastest Way&o=X&ol=Fewest Transfers&o=W&ol=Minimal Walking&s=" & strMethod
strAccessibleTripQuery = "&type=radio&o=Y&ol=Yes&o=N&ol=No&c=" & strAccessibleTripDesc

%>
<html>
  <head>
    <title>Seattle MoBuS</title>
  </head>
  <body>

  <p>
    <b>Plan a Trip by Location</b>
  </p>

  <form method="get" action="tripplanner_bylocation_parser.asp">
    <input type="hidden" name="rf" value="tripplanner_bylocation.asp">
		<input type="hidden" name="orig" value="<%= strOrigin %>">
		<input type="hidden" name="dest" value="<%= strDest %>">
		<input type="hidden" name="date" value="<%= strDate %>">
		<input type="hidden" name="arr" value="<%= strArr %>">
		<input type="hidden" name="hour_time" value="<%= strHour %>">
		<input type="hidden" name="minute_time" value="<%= strMinute %>">
		<input type="hidden" name="ampm_time" value="<%= strAMPM %>">
		<input type="hidden" name="walk" value="<%= strWalk %>">
		<input type="hidden" name="min" value="<%= strMethod %>">
		<input type="hidden" name="atr" value="<%= strAccessibleTrip %>">
  <p mode="nowrap">
    Origin: <a href="formerator.asp?rf=tripplanner_bylocation.asp&t=Origin&l=Your trip origin&n=orig<%= strOriginQuery %>">[<%= strOrigin %>]</a>
    <br>
    Destination: <a href="formerator.asp?rf=tripplanner_bylocation.asp&t=Destination&l=Your trip destination&n=dest<%= strDestQuery %>">[<%= strDest %>]</a>
    <br>
    Date: <a href="formerator.asp?rf=tripplanner_bylocation.asp&t=Date&l=Date of travel&n=date<%= strDateQuery %>">[<%= strDate %>]</a>
    <br>
    Time: <a href="tripplanner_bylocation_time.asp?rf=tripplanner_bylocation.asp<%= strTimeQuery %>">[<%= strTime %>]</a>
    <br>
    Walk: <a href="formerator.asp?rf=tripplanner_bylocation.asp&t=Walk&l=Max walking distance&n=walk<%= strWalkQuery %>">[<%= strWalkDesc %>]</a>
    <br>
    Method: <a href="formerator.asp?rf=tripplanner_bylocation.asp&t=Method&l=Preferred route method&n=method<%= strMethodQuery %>">[<%= strMethodDesc %>]</a>
    <br>
    Accessible Trip: <a href="formerator.asp?rf=tripplanner_bylocation.asp&t=Accessible Trip&l=Do you require an accessible trip&n=accessible<%= strAccessibleTripQuery %>">[<%= strAccessibleTripDesc %>]</a>
  </p>
  
  <p>
    <input type="submit" value="Accept">
  </p>
  </form>

  <!--#include file="footer.asp"-->
  </body>
</html>