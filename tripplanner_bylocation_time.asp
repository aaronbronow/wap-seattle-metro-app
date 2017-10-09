<%@ Language="VBScript" %>
<!--#include file="includes/getsource.asp"-->
<!--#include file="includes/nohtml.asp"-->
<!--#include file="includes/getelements.asp"-->
<!--#include file="includes/getvalue.asp"-->
<%
Dim strReferrer
strReferrer = Request("rf")

Dim timeAtOriginChecked, timeAtDestChecked, numHour, numMinute, amChecked, pmChecked
If Request("timeat") = "dest" Then
	timeAtDestChecked = "checked"
Else
	timeAtOriginChecked = "checked"
End If

numHour = CInt(Request("hour"))
numMinute = CInt(Request("minute"))

If UCase(Request("ampm")) = "AM" Then
  amChecked = "checked"
Else
	pmChecked = "checked"
End If

%>

<html>
  <head>
    <title>Time</title>
  </head>
  <body>

  <p>
    <b>Time</b>
  </p>
  
  
  <form method="post" action="<%= strReferrer %>">
  <p>
		I want to:<br>
		&nbsp; <input type="radio" value="origin" name="timeat" <%= timeAtOriginChecked %> id="timeAtOrigin"><label for="timeAtOrigin">Leave my starting point</label><br>
    &nbsp; <input type="radio" value="dest" name="timeat" <%= timeAtDestChecked %> id="timeAtDest"><label for="timeAtDest">Arrive at my destination</label><br>
    At: <br>
&nbsp; <select name="hour" size="1">
<%
	Dim htmlHour
	' for each hour in the day
  For i = 1 to 12 
		'set the begining of the tag
    htmlHour = "<option value="""
		'if the hour is less than 10 add a 0
		If i < 10 Then
			htmlHour = htmlHour & "0"
		End If
		htmlHour = htmlHour & i & """"
		'if this is the selcted hour add "selected" parameter
		If i = numHour Then
			htmlHour = htmlHour & " selected"
		End If
		htmlHour = htmlHour & ">" & i & vbnewline
		
		Response.Write(htmlHour)
	Next
%>
</select>
:
<select name="minute" size="1">
<%
	Dim htmlMinute
	' for each minute in the hour
  For i = 0 to 55 step 5
		'set the begining of the tag
    htmlMinute = "<option value="""
		'if the minute is less than 10 add a 0
		If i < 10 Then
			htmlMinute = htmlMinute & "0"
		End If
		htmlMinute = htmlMinute & i & """"
		'if this is the selcted minute add "selected" parameter
		If i = numMinute Then
			htmlMinute = htmlMinute & " selected"
		End If
		htmlMinute = htmlMinute & ">" 
		If i < 10 Then
			htmlMinute = htmlMinute & "0"
	  End If
	  htmlMinute = htmlMinute & i & vbnewline
		
		Response.Write(htmlMinute)
	Next
%>
</select>

<input type="radio" value="am" name="ampm" <%= amChecked %> id="am"><label for="am">AM</label>
<input type="radio" value="pm" name="ampm" <%= pmChecked %> id="pm"><label for="pm">PM</label>
</p>
  <p>
    <input type="submit" value="Accept">
  </p>
  </form>
  <p>
    <a href="<%= strReferrer %>">Back</a>
  </p>
  
  
  <!--#include file="footer.asp"-->
  </body>
</html>