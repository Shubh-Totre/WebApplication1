<%@ Page Title="" Language="C#" MasterPageFile="~/VTSSite1.Master" AutoEventWireup="true" CodeBehind="AccountregistrationForm.aspx.cs" Inherits="WebApplication1.AccountregistrationForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <style>
       /* form {
         
                 
                 z-index: 1;
                 background:lightgray;
                 opacity:0.9;
             
               margin: 0 auto 100px;
                 padding: 45px;
                text-align: center;
               border-block-color:black;
                border:groove;
                border-color:black;
                box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
                text-shadow: 3px 3px 10px lightgrey;
                font:bold;
             }*/
    </style>

   <div class="form-controls" style="height:80%;margin-left:20px;width:70%;position:fixed;border:groove">   
        
    <div class="form-groups"> <h1 style="text-align:center;font:100;color:navy">Sign Up</h1></div>
        <div style="padding:30px">
            
            <div class="col-md-12">
                <div  style="padding-top:20px">
                 <asp:Label ID="lblaName" Text="AccountName:" runat="server" class="control-label"></asp:Label>
                <asp:TextBox ID="TxtAccName" runat="server"  Width="300px" class="form-group"></asp:TextBox>
                    
                 
                    <asp:Label ID="lblUname" Text="UserName:" runat="server"  class="control-label"></asp:Label>
                <asp:TextBox ID="TxtUname" runat="server"  Width="300px" class="form-group"></asp:TextBox>
                
                     </div>
                <div  style="padding-top:20px">
                <asp:Label ID="lblPass" Text="Password:" runat="server"  class="control-label"></asp:Label>
                <asp:TextBox ID="Txtpass" runat="server"  Width="300px"  class="form-group"></asp:TextBox>
                    
                   
                     <asp:Label ID="lblrole" Text="Role:" runat="server"   class="control-label"></asp:Label>
                <asp:DropDownList id="ddlrole" runat="server" AutoPostBack="True" OnSelectedIndexChanged ="ddlrole_SelectedIndexChanged" >  
                    
                    
                

                </asp:DropDownList></div>
                 <div  style="padding-top:20px">
                   
                       <asp:Label ID="Lblstate" Text="Sate:" runat="server"  class="control-label"></asp:Label>
                <asp:DropDownList id="Ddlstate" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Ddlstate_SelectedIndexChanged" >  
                    
                   

                </asp:DropDownList>
                     
                    <asp:Label ID="LblDistrict" Text="District:" runat="server"  class="control-label"></asp:Label>
                <asp:DropDownList id="Ddldistrict" runat="server" AutoPostBack="True" Height="30px" Width="110px"  style="margin-left:10px;border-radius:5px 4px 5px 4px" OnSelectedIndexChanged="Ddldistrict_SelectedIndexChanged">  
                   
                   

                </asp:DropDownList><div><br />
                     <div style="padding-top:20px"> 

            <center><asp:Button ID="btnregister" BackColor="skyblue"  runat="server" Text="Register" class="btn btn-primary" OnClick ="btnregister_Click" /></center></div> 
                        </div>

                     <center> <div  style="padding-top:50px">
                   
                       <asp:Label ID="Lblanchr" Text="Already Register:" runat="server"  class="control-label"></asp:Label>
                         <a href="Login.aspx"> Login Here!!!</a>
                         </div></center>

                </div>
               </div>
            
        </div>
    
   </div>


</asp:Content>
