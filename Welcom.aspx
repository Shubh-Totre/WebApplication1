<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcom.aspx.cs" Inherits="WebApplication1.Welcom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        form {
         
                 position: center;
                 z-index: 1;
                 background:orange;
                 opacity:0.9;
                 max-width: 360px;
                 height:500px;
                 
               margin: 0 auto 100px;
                 padding: 45px;
                text-align: center;
               border-block-color:black;
                border:groove;
                border-color:black;
                box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
                text-shadow: 3px 3px 10px lightgrey;
                font:bold;
             }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center;font:100;color:navy">Welcome User....</h1>

        </div>
    </form>
</body>
</html>
