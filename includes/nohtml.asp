<%
Function noHTML(ByVal strCheck)

   dim badStr, tempStr, tagStart, tagEnd, tagLength

   if inStr(strCheck,"<") > 0 AND inStr(strCheck,">") > 0 then
     badStr = strCheck

     While inStr(badStr,"<") > 0 AND inStr(badStr,">") > 0
       tagStart = inStr(badStr,"<")
       tagEnd = inStr(badStr,">")
       tagLength = tagEnd - tagStart + 1
       tempStr = replace(badStr,mid(badStr,tagStart,tagLength)," ")
       badStr = trim(tempStr)
     Wend
     strCheck = badStr
   else
     ' do nothing
   end if
   noHTML = strCheck

End Function
%>