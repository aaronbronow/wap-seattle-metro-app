<%@ Language=VBScript %>
<html>
<head>
 <title>Seattle MoBuS</title>
</head>
<body>

<p>
	<b>Contact Form</b>
</p>

<form method="post" action="contact_submit.asp">
<input type="hidden" name="ref" value="<%= Request("ref") %>">
Email (optional) <br>
<input type="text" name="email"><br><br>
Message <br>
<textarea rows="4" cols="25" name="message"></textarea>
<br><br>
Note: If you would like a response to your comment please include your email address.<br>
<input type="submit" value="Submit">
</form>

 <!--#include file="footer.asp"-->
</body>
</html>
