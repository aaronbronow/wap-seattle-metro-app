<%
Function getElement( src, tag )
  Dim elementStart, elementEnd
  
  elementStart = InStr( LCase(src), "<" & tag )
  elementEnd = InStr( elementStart+Len(tag)+2, LCase(src), "</" & tag & ">" )
  If elementStart < 1 OR elementEnd < 1 Then
    getElement = null
  Else
    getElement = Mid( src, elementStart, elementEnd-elementStart+Len(tag)+3)
  End If
End Function


Function getElements( src, tag )
  Dim sections, elements()
  
  sections = Split(src, "<" & tag, -1, 1) 
  
  ReDim elements(-1)
  for each section in sections
    Dim element 
    element = getElement( "<" & tag & section, tag )
    If element > "" Then
      ReDim Preserve elements(UBound(elements)+1)
      elements(UBound(elements)) = element
    End If
  next
  
  getElements = elements
End Function


Function getElementContaining( elements, str )
  Dim eMatch
  If elements(0) > "" Then
    For Each element In elements
      If InStr( element, str ) > 0 Then
        eMatch = element
        Exit For
      End If
    Next
  Else
    eMatch = ""
  End If
  getElementContaining = eMatch
End Function

Function getElementsContaining( elements, str )
	Dim eMatch()
	ReDim eMatch(-1)
	If elements(0) > "" Then
		For Each element In elements
			If InStr( element, str ) > 0 Then
				ReDim Preserve eMatch(UBound(eMatch)+1)
				eMatch(UBound(eMatch)) = element
			End If
		Next
	Else
		ReDim eMatch(1)
		eMatch(0) = ""
	End If
	getElementsContaining = eMatch
End Function
%>