<%@ Page Title="" Language="C#" MasterPageFile="~/VTSSite1.Master" AutoEventWireup="true" CodeBehind="DeviceRegistrationform.aspx.cs" Inherits="WebApplication1.DeviceRegistrationform" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:25px;margin-left:15px;padding-top:4%;align-content:center;margin-right:20%"> 

     <div><center> <h1>:Device Registration Form:</h1>  </center>  </div> 
        <div style="padding-top:10px">
            <br /><br /><br />
            <div style="padding-top:10px; height: 56px;">
             <asp:Label ID="lblimei" runat="server" Text="IMEI_NO:" style="padding:50px" > </asp:Label>
             <asp:TextBox ID="TxtImei" Height="35px" Width="189px" runat="server" style="border-radius:5px 4px 5px 4px" ></asp:TextBox>

        <asp:Label ID="LblCCID" runat="server" Text="CCID" style="padding:105px"> </asp:Label>
             <asp:TextBox ID="TxtCcid" Height="35px" Width="182px" style="border-radius:5px 4px 5px 4px" runat="server" ></asp:TextBox>
       </div>
        <div  style="padding-top:10px; height: 57px;">

       <asp:Label ID="Lblsimno" runat="server" Text="SIM_Number" style="padding:50px"> </asp:Label>
             <asp:TextBox ID="TxtSimNO" Height="29px" Width="177px" style="margin-left:0px; border-radius:5px 4px 5px 4px" runat="server" ></asp:TextBox>

          <asp:Label ID="LblServicepro" runat="server" Text="Service_Provider" style="padding-left:60px; padding-right:70px"> </asp:Label>
             <asp:TextBox ID="TxtServicepro" Height="35px" Width="194px" runat="server" style="margin-left:10px;border-radius:5px 4px 5px 4px" ></asp:TextBox>
          </div>
        <div style="width: 1106px; margin-left: 19px"> 
                     
                      
                    <asp:Label ID="LblDivicety" Text="Device Type:" runat="server" style="padding:30px; padding-left:30px"></asp:Label>
                <asp:DropDownList ID="Ddldevicetype"  class="btn btn dropdown-toggle"  runat="server" AutoPostBack="True" Height="30px" Width="170px"  OnSelectedIndexChanged="Ddldevicetype_SelectedIndexChanged">
                   
               </asp:DropDownList><br />
           
              <br /><br /></div>
         <div style="padding-top:20px"> 
         <center style="width: 852px; margin-left: 123px"> 
            <asp:Button ID="BtnSave"  class="btn-outline-warning" runat="server" Text="Save"  OncLICK="BtnSave_Click" />
       

            <asp:Button ID="Button2"  class="btn-primary" runat="server" Text="Display" OnClick="Button2_Click"/>
              <asp:Button ID="Btnupdate" class="btn-outline-success" runat="server" Text="EDIT"  OnClick="Btnupdate_Click" />
             <asp:Button ID="Chart" class="btn-outline-success" runat="server" Text="ShowChart"  OnClick="Chart_Click"/>
             </center>
             </div> <br />            

             
                       <div class="table-responsive" style="overflow:scroll; width: 911px;">
                          <asp:GridView ID="GridView1" ClientIDMode="Static"  runat="server"  DataKeyNames="pk_deviceId"  AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
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

         <div class="col-md-2">
               <div class="widget-box" style="margin-top:20px">
                  <div class="widget-header">
                      <div class="widget-content">

                          <br /><br />
           </div>
            </div>
          </div>
             </div>
         <asp:HiddenField ID="hidden1" runat="server" />
            </div>
          </div>
         <div>
                
                      
         <div>
        <asp:Chart ID="Chart1" runat="server" BackColor="128, 64, 0" BackGradientStyle="LeftRight"  
        BorderlineWidth="0" Height="219px" Palette="None" PaletteCustomColors="64, 0, 0"  
        Width="328px" BorderlineColor="192, 64, 0" OnLoad="Chart1_Load">
            <Series>
                <asp:Series Name="Series1" YValuesPerPoint="6" ></asp:Series>
            </Series>
           <ChartAreas>  
            <asp:ChartArea Name="ChartArea1">  
            </asp:ChartArea>  
          </ChartAreas> 
        </asp:Chart>
             </div> 
               </div>
     
        
</asp:Content>
