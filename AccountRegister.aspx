<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountRegister.aspx.cs" Inherits="WebApplication1.AccountRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <style>
        form {
         
                 
                 z-index: 1;
                 background:lightgray;
                 opacity:0.9;
              height:540px;
               margin: 0 auto 100px;
                 padding: 45px;
                /*text-align: center;*/
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
   <div class="form-controls">   
    <form id="form1" runat="server" style="align-items:center;margin-left:10px;margin-right:10px;:center">
        <center> <h1 style="text-align:center;font:100;margin-right:20px;color:navy">Registration Form</h1></center>
        <div style="padding:30px">
            
            <div class="col-md-12">
                <div  style="padding-top:20px">
                 <asp:Label ID="lblaName" Text="AccountName:" runat="server" style="padding:70px"></asp:Label>
                <asp:TextBox ID="TxtAccName" runat="server" Height="45px" Width="300px"  style="margin-left:10px;border-radius:5px 4px 5px 4px"></asp:TextBox>
                    
                 
                    <asp:Label ID="lblUname" Text="UserName:" runat="server" style="padding:50px"></asp:Label>
                <asp:TextBox ID="TxtUname" runat="server" Height="45px" Width="300px"  style="margin-left:10px;border-radius:5px 4px 5px 4px"></asp:TextBox>
                
                     </div>
                <div  style="padding-top:20px">
                <asp:Label ID="lblPass" Text="Password:" runat="server" style="padding:30px; padding-left:140px"></asp:Label>
                <asp:TextBox ID="Txtpass" runat="server" Height="45px" Width="300px"  style="margin-left:10px;border-radius:5px 4px 5px 4px"></asp:TextBox>
                    
                   
                     <asp:Label ID="lblrole" Text="Role:" runat="server"  style="padding-left:180px;padding:50px"></asp:Label>
                <asp:DropDownList id="ddlrole" runat="server" AutoPostBack="True" OnSelectedIndexChanged ="ddlrole_SelectedIndexChanged" >  
                    
                    
                

                </asp:DropDownList></div>
                 <div  style="padding-top:20px">
                   
                       <asp:Label ID="Lblstate" Text="Sate:" runat="server" style="padding:50px ; padding-left:155px"></asp:Label>
                <asp:DropDownList id="Ddlstate" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Ddlstate_SelectedIndexChanged" >  
                    
                   

                </asp:DropDownList>
                     
                    <asp:Label ID="LblDistrict" Text="District:" runat="server" style="padding:70px; padding-left:280px"></asp:Label>
                <asp:DropDownList id="Ddldistrict" runat="server" AutoPostBack="True" Height="30px" Width="110px"  style="margin-left:10px;border-radius:5px 4px 5px 4px" OnSelectedIndexChanged="Ddldistrict_SelectedIndexChanged">  
                   
                   

                </asp:DropDownList><div><br />
                     <div style="padding-top:20px"> 

            <center><asp:Button ID="btnregister" BackColor="skyblue"  runat="server" Text="Register" style="width:200px;color:black;font:600; align-self:center; padding:30px; height:40px; background-color:darkorange" OnClick ="btnregister_Click" /></center></div> 
                        </div>

                     <center> <div  style="padding-top:50px">
                   
                       <asp:Label ID="Lblanchr" Text="Already Register:" runat="server" style="padding:50px;"></asp:Label>
                         <a href="Login.aspx"> Login Here!!!</a>
                         </div></center>

                </div>
               </div>
            
        </div>
    </form>
   </div>
</body>
</html>
