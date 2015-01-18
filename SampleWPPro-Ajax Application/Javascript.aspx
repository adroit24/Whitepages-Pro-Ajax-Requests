<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Javascript.aspx.cs" Inherits="SampleWPPro_AjaxApplication.Javascript" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
 <script>
     function loadXMLDoc() {
         $.ajax({
             type: "POST",
             url: "JavaScript.aspx/GetData",
             contentType: "application/json; charset=utf-8",
             dataType: "json",
             success: function (response) {
                 var names = response.d;
                 alert("Phone belongs to: " + names);
             },
             failure: function (response) {
                 alert(response.d);
             }
         });
     }
 </script>
 
 
</head>
<body>
 
    <div id="Content">
        <div id="myDiv"><h2>Who does this phone belong to? </h2></div>
        <button type="button" onclick="loadXMLDoc()">Make Ajax request to find out</button>
    </div>
 

 
</body>
</html>
