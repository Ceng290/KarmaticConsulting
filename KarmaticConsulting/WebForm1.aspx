<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="KarmaticConsulting.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>KarmaticConsulting constractString=????</title>
    <script type="text/javascript">
        function generateResult(charCode) {
            //Showing the value of charCode which is:
            //"Send email to info@karmatic.ca.  Include \"I am awesome because...\" in the subject line"
            alert("The contactString variable is: " + charCode);

            var contactString = charCode;
            var charArray = [];
            for(var i=0;i<contactString.length;i++){
                charArray.push(contactString.charCodeAt(i));
            }
            var result = charArray.join(',');

            alert(result);

        }
        function generateContactString(){                       
            //****************************************************************************************
            //Making the assumption that we already know "result" from the generateResult() function.
            // The value of result when contactString=?????: 
            //"83,101,110,100,32,101,109,97,105,108,32,116,111,32,105,110,102,111,64,107,97,114,109,97,116,105,99,46,99,97,46,32,32,73,110,99,108,117,100,101,32,34,73,32,97,109,32,97,119,101,115,111,109,101,32,98,101,99,97,117,115,101,46,46,46,34,32,105,110,32,116,104,101,32,115,117,98,106,101,99,116,32,108,105,110,101"
            //****************************************************************************************
            var result = [];
            result = [83, 101, 110, 100, 32, 101, 109, 97, 105, 108, 32, 116, 111, 32, 105, 110, 102, 111, 64, 107, 97, 114, 109, 97, 116, 105, 99, 46, 99, 97, 46, 32, 32, 73, 110, 99, 108, 117, 100, 101, 32, 34, 73, 32, 97, 109, 32, 97, 119, 101, 115, 111, 109, 101, 32, 98, 101, 99, 97, 117, 115, 101, 46, 46, 46, 34, 32, 105, 110, 32, 116, 104, 101, 32, 115, 117, 98, 106, 101, 99, 116, 32, 108, 105, 110, 101];


            var charArray = [];
            for(var j=0;j<result.length;j++){
                charArray.push(String.fromCharCode(result[j]));
            }

            var resultString = charArray.join(",");
            resultString = resultString.replace(/,/g, "");

            generateResult(resultString);

        }
        

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="getResult" runat="server" OnClientClick="generateContactString();" Text="Click me!"/>
    </div>
    </form>
</body>
</html>