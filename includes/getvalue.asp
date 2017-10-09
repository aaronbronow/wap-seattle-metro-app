<%
Function getValue( element )
  Dim str
  If inStr(element,"<") > 0 AND inStr(element,">") > 0 Then
    Dim valueStart, valueEnd
  
    valueStart = InStr(element, ">") + 1
    valueEnd = InStrRev(Right(element,Len(element)-valueStart), "<", -1)
    str = Mid( element, valueStart, valueEnd )
  Else
    str = element
  End If
  getValue = str
End Function

%>