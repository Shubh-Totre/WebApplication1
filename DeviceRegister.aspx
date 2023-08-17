<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeviceRegister.aspx.cs" Inherits="WebApplication1.DeviceRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
    <link href="Content/bootstrap-grid.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.rtl.min.css" rel="stylesheet" />
    <script  src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    

    <style>
         
    
        
       
        body{
            background-color:skyblue;
            background-repeat:no-repeat;
            background-size:100% 100%;
            font-family:Times New Roman;
            font:100;
            margin:30px;
        }
        

    </style>
   
</head>
<body>
   <div><center> <h1>:Device Registration Form:</h1>  </center>  </div> 


    <form id="form1" runat="server">
        <div style="padding-top:20px">
            <br /><br /><br />
            <div style="padding-top:20px">
             <asp:Label ID="lblimei" runat="server" Text="IMEI_NO:" style="padding:50px" > </asp:Label>
             <asp:TextBox ID="TxtImei" Height="45px" Width="300px" runat="server" style="margin-left:10px;border-radius:5px 4px 5px 4px" ></asp:TextBox>

        <asp:Label ID="LblCCID" runat="server" Text="CCID" style="padding:105px"> </asp:Label>
             <asp:TextBox ID="TxtCcid" Height="45px" Width="300px" style="border-radius:5px 4px 5px 4px" runat="server" ></asp:TextBox>
       </div>
        <div  style="padding-top:20px">

       <asp:Label ID="Lblsimno" runat="server" Text="SIM_Number" style="padding:50px"> </asp:Label>
             <asp:TextBox ID="TxtSimNO" Height="45px" Width="300px" style="margin-left:10px;border-radius:5px 4px 5px 4px" runat="server" ></asp:TextBox>

          <asp:Label ID="LblServicepro" runat="server" Text="Service_Provider" style="padding-left:60px; padding-right:70px"> </asp:Label>
             <asp:TextBox ID="TxtServicepro" Height="45px" Width="300px" runat="server" style="margin-left:10px;border-radius:5px 4px 5px 4px" ></asp:TextBox>
          </div>
        <div  style="padding-top:20px">
                     
                     
                    <asp:Label ID="LblDivicety" Text="Device Type:" runat="server" style="padding:30px; padding-left:30px"></asp:Label>
                <asp:DropDownList id="Ddldevicetype"  class="btn btn dropdown-toggle"  runat="server" AutoPostBack="True" Height="30px" Width="110px"  OnSelectedIndexChanged="Ddldevicetype_SelectedIndexChanged">  
                   
               </asp:DropDownList><br />
           
              <br /><br />
         <div style="padding-top:20px"> 
         <center> 
            <asp:Button ID="BtnSave"  class="btn-outline-warning" runat="server" Text="Save"  OncLICK="BtnSave_Click" />
       

            <asp:Button ID="Button2"  class="btn-primary" runat="server" Text="Display" OnClick="Button2_Click"/>
              <asp:Button ID="Btnupdate" class="btn-outline-success" runat="server" Text="EDIT"  OnClick="Btnupdate_Click" />
             </center>
             </div> <br />            



         <div class="col-md-2">
               <div class="widget-box" style="margin-top:20px">
                  <div class="widget-header">
                      <div class="widget-content">

                          <asp:GridView ID="GridView1" Style="border-block-color: black; border: solid" runat="server"  DataKeyNames="pk_deviceId"  AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                <Columns>
                  <asp:BoundField HeaderText="IMEI" DataField="IMEI"  HeaderStyle-Width="1%" ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"  />
                  <asp:BoundField HeaderText="Sim_Number" DataField="SimNumber"  HeaderStyle-Width="1%" ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"  />
                 <asp:BoundField HeaderText="CCID" DataField="CCID"  HeaderStyle-Width="1%" ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                 <asp:BoundField HeaderText="ServiceProvider" DataField="ServiceProvider"   ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"/>
                 <asp:BoundField HeaderText="DeviceType" DataField="Device_Type"   ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"/>

                    <asp:templatefield headertext="delete" headerstyle-width="2%" itemstyle-width="2%">
                        <itemtemplate>
                          <asp:linkbutton id="lnkedit" runat="server" text="delete" commandargument='<%#Eval("pk_deviceId")%>' onclick="lnkedit_Click" >
                        
                      </asp:linkbutton>

                        </itemtemplate>

                    </asp:templatefield>
                                        <asp:TemplateField HeaderText="Edit" HeaderStyle-Width="2%" ItemStyle-Width="2%">
                        <ItemTemplate>
                         <asp:LinkButton ID="lnkedit1" runat="server" Text="Edit" CommandArgument='<%#Eval("pk_deviceId")%>' OnClick="lnkedit1_Click">
                        
                        </asp:LinkButton>

                        </ItemTemplate>

                    </asp:TemplateField>
                    </Columns>
                
            </asp:GridView>
           </div>
            </div>
          </div>
             </div>
         <asp:HiddenField ID="hidden1" runat="server" />
            </div>
            </form>
</body>
</html>
