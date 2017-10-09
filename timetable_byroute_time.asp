<%@ Language="VBScript" %>
<!--#include file="includes/getsource.asp"-->
<!--#include file="includes/nohtml.asp"-->
<!--#include file="includes/getelements.asp"-->
<!--#include file="includes/getvalue.asp"-->
<%
Dim strReferrer, strRoute
strReferrer = Request("rf")
strRoute = Request("r")

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
    <input type="radio" name="late_night" value="0" checked id="ln0"><label for="ln0">Show stops between...</label>
  </p>
  <p>
    Start hour:
    <select name="start_hour">
      <option value="01">01</option><br>
      <option value="02">02</option><br>
      <option value="03">03</option><br>
      <option value="04">04</option><br>
      <option value="05">05</option><br>
      <option value="06">06</option><br>
      <option value="07">07</option><br>
      <option value="08" selected>08</option><br>
      <option value="09">09</option><br>
      <option value="10">10</option><br>
      <option value="11">11</option><br>
      <option value="12">12</option><br>
    </select>
    <input type="radio" name="start_ampm" value="AM" checked id="startam"><label for="startam">AM</label>
    <input type="radio" name="start_ampm" value="PM" id="startpm"><label for="startpm">PM</label>
  </p>
  <p>
    End hour:
    <select name="end_hour">
      <option value="01">01</option><br>
      <option value="02">02</option><br>
      <option value="03">03</option><br>
      <option value="04">04</option><br>
      <option value="05">05</option><br>
      <option value="06" selected>06</option><br>
      <option value="07">07</option><br>
      <option value="08">08</option><br>
      <option value="09">09</option><br>
      <option value="10">10</option><br>
      <option value="11">11</option><br>
      <option value="12">12</option><br>
    </select>
    <input type="radio" name="end_ampm" value="AM" id="endam"><label for="endam">AM</label> 
    <input type="radio" name="end_ampm" value="PM" checked id="endpm"><label for="endpm">PM</label>
  </p>
  <p>
    <b>OR</b>
  </p>
  <p>
    <input type="radio" name="late_night" value="1" id="ln1"><label for="ln1">Late Night</label>
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