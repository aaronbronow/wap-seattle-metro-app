<%@ Language="VBScript" %>
<!--#include file="includes/getsource.asp"-->

<%
Dim bolNewRoute
bolNewRoute = False

Dim strRoute, strRouteQuery
strRoute = ""
strRouteQuery = ""
If Request("route") > "" Then
  If Session("route") > "" AND Not Session("route") = Request("route") Then
    bolNewRoute = True
  End If
  strRoute = Request("route")
  strRouteQuery = "&v=" & strRoute
  Session("route") = strRoute
ElseIf Session("route") > "" Then
  strRoute = Session("route")
  strRouteQuery = "&v=" & strRoute
End If

Dim strDirection, intDirection, strDirectionQuery
strDirection = ""
intDirection = ""
strDirectionQuery = ""
If bolNewRoute Then
  Session("direction") = ""
  Session("directionname") = ""
Else
  If Request("direction") > "" Then
    intDirection = Request("direction")
    strDirectionQuery = "&d=" & intDirection
    strDirection = Request("directionname")
    Session("direction") = intDirection
    Session("directionname") = strDirection
  ElseIf Session("direction") > "" Then
    intDirection = Session("direction")
    strDirectionQuery = "&d=" & intDirection
    strDirection = Session("directionname")
  End If
End If

Dim strType, intType, strTypeQuery
strType = ""
intType = ""
strTypeQuery = ""
If bolNewRoute Then
  Session("type") = ""
  Session("typename") = ""
Else
  If Request("type") > "" Then
    intType = Request("type")
    strTypeQuery = "&tp=" & intType
    strType = Request("typename")
    Session("type") = intType
    Session("typename") = strType
  ElseIf Session("type") > "" Then
    intType = Session("type")
    strTypeQuery = "&tp=" & intType
    strType = Session("typename")
  End If
End If

Dim strTime, intStartHour, intEndHour, strStartAMPM, strEndAMPM, intLateNight
intStartHour = "8"
intEndHour = "6"
strStartAMPM = "AM"
strEndAMPM = "PM"
intLateNight = "0"
  If Request("late_night") > "" Then
    intLateNight = Request("late_night")
    Session("late_night") = intLateNight
  ElseIf Session("late_night") > "" Then
    intLateNight = Session("late_night")
  End If
  If intLateNight = 0 Then
      If Request("start_hour") > "" Then
       intStartHour = Request("start_hour")
       strStartAMPM = Request("start_ampm")
        Session("start_hour") = intStartHour
        Session("start_ampm") = strStartAMPM
      ElseIf Session("start_hour") > "" Then
        intStartHour = Session("start_hour")
        strStartAMPM = Session("start_ampm")
      End If
      If Request("end_hour") > "" Then
        intEndHour = Request("end_hour")
        strEndAMPM = Request("end_ampm")
        Session("end_hour") = intEndHour
        Session("end_ampm") = strEndAMPM
      ElseIf Session("end_hour") > "" Then
        intEndHour = Session("end_hour")
        strEndAMPM = Session("end_ampm")
      End If
  End If
If intLateNight = 1 Then
  strTime = "Late Night"  
Else
  strTime = intStartHour & strStartAMPM & " - " & intEndHour & strEndAMPM
End If


Dim strLocation, intLocation, strLocationQuery
strLocation = ""
intLocation = ""
strLocationQuery = ""
If bolNewRoute Then
  Session("location") = ""
  Session("locationname") = ""
Else
  If Request("location") > "" Then
    intLocation = Request("location")
    strLocationQuery = "&tp=" & intLocation
    strLocation = Request("locationname")
    Session("location") = intLocation
    Session("locationname") = strLocation
  ElseIf Session("location") > "" Then
    intLocation = Session("location")
    strLocationQuery = "&tp=" & intLocation
    strLocation = Session("locationname")
  End If
End If

Dim strHeadway
strHeadway = ""
If bolNewRoute Then
  Session("headway") = ""
Else
  If Request("headway") > "" Then
    strHeadway = Request("headway")
    Session("headway") = strHeadway
  ElseIf Session("headway") > "" Then
    strHeadway = Session("headway")
  End If
End If
%>
<html>
  <head>
    <title>Seattle MoBuS</title>
  </head>
  <body>

  <p>
    <b>Timetable by Route</b>
  </p>

  <form method="get" action="timetable_byroute_parser.asp">
    <input type="hidden" name="rf" value="timetable_byroute.asp">
    <input type="hidden" name="operator" value="MT">
    <input type="hidden" name="bus_route" value="<%= strRoute %>">
    <input type="hidden" name="direction" value="<%= intDirection %>">
    <input type="hidden" name="type" value="<%= intType %>">
    <input type="hidden" name="start_hour" value="<%= intStartHour %>">
    <input type="hidden" name="start_ampm" value="<%= strStartAMPM %>">
    <input type="hidden" name="end_hour" value="<%= intEndHour %>">
    <input type="hidden" name="end_ampm" value="<%= strEndAMPM %>">
    <input type="hidden" name="timepoints" value="<%= intLocation %>">
    <input type="hidden" name="late_night" value="<%= intLateNight %>">
    <input type="hidden" name="headway" value="<%= strHeadway %>">
  <p mode="nowrap">
    Route: <a href="formerator.asp?rf=timetable_byroute.asp&t=Route&l=Route number&n=route<%= strRouteQuery %>">[<%= strRoute %>]</a>
    <br>
    Direction: <a href="timetable_byroute_direction.asp?rf=timetable_byroute.asp&r=<%= strRoute %><%= strDirectionQuery %>">[<%= strDirection %>]</a>
    <br>
    Type: <a href="timetable_byroute_type.asp?rf=timetable_byroute.asp&r=<%= strRoute %><%= strTypeQuery %>">[<%= strType %>]</a>
    <br>
    Time: <a href="timetable_byroute_time.asp?rf=timetable_byroute.asp&r=<%= strRoute %>">[<%= strTime %>]</a>
    <br>
    Location: <a href="timetable_byroute_location.asp?rf=timetable_byroute.asp&r=<%= strRoute %><%= strTypeQuery %><%= strDirectionQuery %>">[<%= strLocation %>]</a>
  </p>
  
  <p>
    <input type="submit" value="Accept">
  </p>
  </form>

  <!--#include file="footer.asp"-->
  </body>
</html>