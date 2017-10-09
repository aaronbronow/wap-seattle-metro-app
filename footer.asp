<p>
----<br>
<%
CurrentURL = "http://" & Request.ServerVariables("SERVER_NAME") & Request.ServerVariables("URL") & "?" & Request.ServerVariables("QUERY_STRING")
%>
<a href=".">Home</a> | <a href="about.asp">About</a> | <a href="contact.asp?ref=<%= Server.URLEncode(CurrentURL) %>">Contact</a>
</p>