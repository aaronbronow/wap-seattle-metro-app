<%@ Language="VBScript" %>
<%
Dim htmlForm, strTitle, strReferrer, strLabel, strName, strValue, strType

strReferrer = Request("rf")

strTitle = "Seattle MoBus"
If Request("t") > "" Then
  strTitle = Request("t")
End If

strLabel = Request("l")
strName = Request("n")
strValue = Request("v")
strType = Request("type")


htmlForm = "<form name=""form1"" method=""post"" "

If Request("a") > "" Then
  htmlForm = htmlForm & "action=""" & Request("a") & """"
Else
  htmlForm = htmlForm & "action=""" & strReferrer & """"
End If
htmlForm = htmlForm & ">" & vbCrLf
htmlForm = htmlForm & "  <p>" & vbnewline

If strType = "select" Then
  If strLabel > "" Then
    htmlForm = htmlForm & strLabel & "<br>"
  End If
  htmlForm = htmlForm & "<select name=""" & strName & """>" & vbNewLine
  Dim i
  i = 1
  For Each str In Request("o")
    htmlForm = htmlForm & "  <option value=""" & str & """"
		'if this index is supposed to be selected we select it
		If Request("s") > "" AND Request("o")(i) = Request("s") Then
			htmlForm = htmlForm & " selected"
		End If
		htmlForm = htmlForm & ">" & Request("ol")(i) & "</option>" & vbnewline
    i = i + 1
  Next
  htmlForm = htmlForm & "</select>" & vbNL
ElseIf strType = "radio" Then
  If strLabel > "" Then
    htmlForm = htmlForm & strLabel & "<br>"
  End If
  Dim j
  j = 1
  For Each str In Request("o")
    htmlForm = htmlForm & "  <input type=""radio"" name=""" & strName & """ value=""" & str & """ id=""" & Request("ol")(j) & """"
    ' if this index is supposed to be checked we check it
    If Request("c") > "" AND Request("ol")(j) = Request("c") Then
			htmlForm = htmlForm & " checked" 
		End If
		htmlForm = htmlForm & ">" & "<label for=""" & Request("ol")(j) & """>" & Request("ol")(j) & "</label><br>" & vbNewLine
    j = j + 1
  Next
Else 
  If strLabel > "" Then
    htmlForm = htmlForm & strLabel & "<br>"
  End If
  htmlForm = htmlForm & "<input type=""text"" name=""" & strName & """ "
  If strValue > "" Then
    htmlForm = htmlForm & "value=""" & strValue & """"
  End If
  htmlForm = htmlForm & ">" & vbNL
End If

htmlForm = htmlForm & "    <br>" & vbNL
htmlForm = htmlForm & "    <input type=""submit"" value=""Accept""><br>" & vbNL
htmlForm = htmlForm & "  </p>" & vbNL

htmlForm = htmlForm & "</form>" & vbNL

%>

<html>
  <head>
    <title><%= strTitle %></title>
  </head>
  <body>
  
  <p>
    <b><%= strTitle %></b>
  </p>
  
  <%= htmlForm %>
  
  <p><a href="<%= strReferrer %>">Back</a></p>
  
  <!--#include file="footer.asp"-->
  </body>
</html>