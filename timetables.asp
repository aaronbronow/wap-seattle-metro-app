<%@ Language="VBScript" %>
<!--#include file="includes/getsource.asp"-->
<!--#include file="includes/nohtml.asp"-->
<!--#include file="includes/getelements.asp"-->
<%

Function getValue( element )
  Dim valueStart, valueEnd
  
  valueStart = InStrRev(Left(element, Len(element) - 1), ">") + 1
  valueEnd = InStr( valueStart, element, "<" )
  getValue = Mid( element, valueStart, valueEnd-valueStart )
End Function



Function singleSpaceCheck( str, delimiter )
  Dim arrSingleSpaceCases
  arrSingleSpaceCases = Array( "140th Av SE |140th Way SE", "S Grady Way |Burnett Av S" )
  
  For Each singleSpaceCase In arrSingleSpaceCases
    If InStr( str, Replace( singleSpaceCase, "|", "" ) ) > 0 Then
      str = Replace( singleSpaceCase, "|", delimiter )
    End If
  Next
  
  singleSpaceCheck = str
End Function

Function timeTableToHTML( strTimeTable )
  Dim htmlTimeTable, arrRows
  arrRows = Split( strTimeTable, vbCrLf )
  
  For Each row In arrRows
    If row > "" Then
      Dim arrCols
      arrCols = Split( Trim( row ), "  " )
      
      htmlTimeTable = htmlTimeTable & "<tr>"

      For Each col In arrCols
        If col > "" Then
          htmlTimeTable = htmlTimeTable & "<td>" & singleSpaceCheck( Trim( col ), "</td><td>" ) & "</td>"
        End If
      Next

      htmlTimeTable = htmlTimeTable & "</tr>"
    End If
  Next
  
  timeTableToHTML = "<table border=""1"">" & htmlTimeTable & "</table>"
End Function


Function timeTableToStopLinks( strTimeTable )
  Dim htmlStopLinks, arrStopLinks(), arrRows
  arrRows = Split( strTimeTable, vbCrLf )

  ReDim arrStopLinks(0)
  
  For j = 1 To 3
    Dim iStopLink, arrCols
    iStopLink = 0
    arrCols = Split( arrRows(j), "  " )
    For Each col In arrCols
      If col > "" Then
        If iStopLink > UBound( arrStopLinks ) Then
          ReDim Preserve arrStopLinks( iStopLink + 1 )
        End If
        arrStopLinks( iStopLink ) = arrStopLinks( iStopLink ) & " " & col
        iStopLink = iStopLink + 1
      End If
    Next
  Next  
  
  For Each stopLink In arrStopLinks
    htmlStopLinks = htmlStopLinks & "<a href=""#"">" & stopLink & "</a><br> "
  Next
  
  timeTableToStopLinks = htmlStopLinks
End Function


Dim strSrc, strTitle, strRoute
strRoute = 0
strRoute = Request("route")
strSrc = getSource("http://transit.metrokc.gov/cftemplates/show_schedule.cfm?BUS_ROUTE=" & strRoute )
strTitle = noHTML(getElement( strSrc, "title" ))

Dim arrHeaders, arrTimeTables
arrHeaders = getElements( strSrc, "h4" )
arrTimeTables = getElements( strSrc, "pre" )

Dim htmlTable
Dim i
i = 0

While i <= UBound(arrHeaders)
  Dim htmlTimeTable, htmlStopLinks
  htmlTimeTable = timeTableToHTML( noHTML(arrTimeTables(i)) )
  htmlStopLinks = timeTableToStopLinks( noHTML(arrTimeTables(i)) )
  htmlTable = htmlTable & "<h4>" & noHTML(arrHeaders(i)) & "</h4>"
  htmlTable = htmlTable & htmlStopLinks
  htmlTable = htmlTable & htmlTimeTable
  i = i + 1
Wend

%>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Transit Timetables</title>
    <script type="text/vbscript" src="getsource.vbs"></script>
  </head>
  <body>
    <h1>Seattle Metro</h1>
    <h2>Timetables</h2>

    <form method="get" action="timetables.asp">
      <p>
        <input type="text" size="2" name="route"/>
        <button type="submit">Go</button>
      </p>
    </form>

    <h3><%= strTitle %></h3>
    <br />
    <%= htmlTable %>


  </body>
</html>