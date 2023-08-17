<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

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
            <div class="col-md-12">
                <h1 style="text-align:center;font:100;color:navy">Login Form</h1>
                <div  style="padding-top:20px">
                <asp:Label ID="lblUser" Text="" runat="server" Visible="false" ></asp:Label>
                 <asp:Label ID="lbluName" Text="UserName:" runat="server" style="padding:70px"></asp:Label>
                <asp:TextBox ID="TxtuName" runat="server" Height="45px" Width="300px"  style="margin-left:10px;border-radius:5px 4px 5px 4px"></asp:TextBox>
                    
                 
                    <asp:Label ID="lblpass" Text="Password:" runat="server" style="padding:50px"></asp:Label>
                <asp:TextBox ID="Txtpass" runat="server" Height="45px" Width="300px"  style="margin-left:10px;border-radius:5px 4px 5px 4px"></asp:TextBox>
                
                     </div>
                </div>
             <div style="padding-top:20px"> 

            <center><asp:Button ID="btnLogin" BackColor="skyblue"  runat="server" Text="Login" style="width:150px;color:darkgray;font:400; font-display:block; align-self:center; padding:30px; height:40px; background-color:black" OnClick="btnLogin_Click"  /></center></div> 
             <div  style="padding-top:20px"><br />
                   
                       <asp:Label ID="Lblanchr" Text="New User:" runat="server" style="padding:20px"></asp:Label>
                         <a href="AccountRegister.aspx"> Register Here!!!</a>
                         </div>
        </div>
    </form>
</body>
</html>
