<html>
  <head>
  <script type="text/javascript">
  function getHelp( topic )
  {
    var str;
    
    switch( topic ){
    case( 'formatting' ):
      str = 'A - Uppercase character\n' +
            'a - Lowercase character\n' +
            'N - Number (0 - 9)\n' +
            'X - Uppercase character or number\n' +
            'x - Lowercase character or number\n' +
            'M - Uppercase character changeable to lowercase or number\n' +
            'm - Lowercase character changeable to uppercase or number';
      break;
     }
     
     return str;
  }

  function q(name,value,def)
  {
    if(value.length > 0)
      return '&' + name + '=' + value;
    else if(def.length > 0)
      return '&' + name + '=' + def;
    else
      return '';
  }
  
  function doConcat(formName)
  {
    var form = document.forms[ formName ];
    var str = "";
    str += form.href.value;
    str += '?rf=';
    str += form.referrer.value;
    str += q('a',form.action.value,'');
    str += q('t',form.title.value,'');
    str += q('l',form.label.value,'');
    str += q('tp',form.type.value,'');
    str += q('sz',form.size.value,'');
    str += '&n=' + form.name.value;
    str += q('v',form.value.value,'');
    
    document.getElementById(formName + '_result').value = str;
    document.getElementById(formName + '_link').value = '<a href="' + str + '">';
    
  }
  </script>
  </head>
  <body>
    <h1>Formerator Builder</h1>
    
    <form name="formerator" method="get" action="#" onsubmit="doConcat(this.name)">
    <table>
      <tbody>
        <tr>
          <td>href</td> <td><input type="text" name="href" value="formerator.asp"> *</td>
        </tr>
        <tr>
          <td>referrer</td> <td><input type="text" name="referrer"> *</td>
        </tr>
        <tr>
          <td>action</td> <td><input type="text" name="action"> defaults to referrer</td>
        </tr>
        <tr>
          <td>title</td> <td><input type="text" name="title"> defaults to blank</td>
        </tr>
        <tr>
          <td>label</td> <td><input type="text" name="label"> defaults to blank</td>
        </tr>
        <tr>
          <td>format <a href="javascript:alert(getHelp('formatting'))">?</a></td> <td><input type="text" name="type"> defaults to text </td>
        </tr>
        <tr>
          <td>size</td> <td><input type="text" name="size"> defaults to auto</td>
        </tr>
        <tr> 
          <td>name</td> <td><input type="text" name="name"> *</td>
        </tr>
        <tr>
          <td>value</td> <td><input type="text" name="value"> defaults to blank</td>
        </tr>
        <tr>
          <td></td> 
          <td>
            <input type="button" value="Build URI" onclick="doConcat('formerator')">
            <input type="reset" value="Clear">
          </td>
        </tr>
      </tbody>
    </table>    
    </form>
    
    <input type="text" size="100" id="formerator_result">
    <br>
    <textarea cols="80" rows="10" id="formerator_link"></textarea>
    
  </body>
</html>