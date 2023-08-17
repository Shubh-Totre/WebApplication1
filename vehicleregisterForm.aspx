<%@ Page Title="" Language="C#" MasterPageFile="~/VTSSite1.Master" AutoEventWireup="true" CodeBehind="vehicleregisterForm.aspx.cs" Inherits="WebApplication1.vehicleregisterForm" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<style type="text/css">
        .widget-content {
            height: 151px;
            margin-top: 0px;
        }
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container" style="margin-top:15px;margin-left:15px;padding-top:4%;align-content:center;border:groove;margin-right:20%"> 
    <div id="ContainAll" runat="server">
          <div><center> <h1 style="margin-top:5px;margin-bottom:20px;background-color:white">:Vehicle Records:</h1>  </center>  </div>

        <div  class="mb-3" style="margin-left:20px">
             <asp:Label ID="lblvno" runat="server" Text="V_NO:" class="control-label" > </asp:Label>
             <asp:TextBox ID="Txtvno"  Width="300px" runat="server" class="form-group" ></asp:TextBox>

        <asp:Label ID="Lblvtype" runat="server" Text="V_Type" class="control-label"> </asp:Label>
             <asp:TextBox ID="TxtVtype"  Width="300px" runat="server" class="form-group" ></asp:TextBox>
       </div>
        <div  class="mb-3" style="padding-top:20px;margin-left:20px">

       <asp:Label ID="Lblinsucmp" runat="server" Text="Insurance_Company" class="control-label"> </asp:Label>
             <asp:TextBox ID="Txtincmpny"  runat="server" Width="300px" class="form-group" ></asp:TextBox>

          <asp:Label ID="Lblstatus" runat="server" Text="Status" class="control-label"> </asp:Label>
             <asp:TextBox ID="Txtstatus"  runat="server" Width="300px" runat="server" class="form-group" ></asp:TextBox>
          </div>
        <div  class="mb-3"  style="padding-top:20px;margin-left:20px">
         <asp:Label ID="Lblimail" runat="server" Text="Imail" class="control-label" > </asp:Label>
             <asp:TextBox ID="TexImail"  Width="300px"  runat="server" class="form-group" TextMode="Phone" ></asp:TextBox>
           
         <asp:Label ID="Lblchsino" runat="server" Text="Chassie_No" class="control-label"> </asp:Label>
             <asp:TextBox ID="Txtchasiono"  Width="300px" runat="server" class="form-group" ></asp:TextBox>

         </div >
        <div  class="mb-3" style="padding-top:20px;margin-left:20px">
          <asp:Label ID="Lblvmilge" runat="server" Text="V_Milage" class="control-label"> </asp:Label>
             <asp:TextBox ID="Txtvmilage"  Width="300px" runat="server" class="form-group" TextMode="Number" ></asp:TextBox>
                   
          <asp:Label ID="Lblidate" runat="server" Text="Insurance-Date" class="control-label"> </asp:Label>
             <asp:TextBox ID="Txtidate"  Width="100px" TextMode="Date" runat="server" class="form-group"></asp:TextBox>
            
          <asp:Label ID="Lbliexdte" runat="server" Text="Insurance-Exp-Date" class="control-label"> </asp:Label>
           <asp:TextBox ID="TxtIExpDt"  Width="100px" runat="server"  class="form-group" TextMode="Date"></asp:TextBox>
          
             </div>
        

                       
            <div  class="mb-3" style="position:center; margin-left: 190px;"> 

            <asp:Button ID="BtnSave" style="position:center"  runat="server" Text="Save" class="btn btn-success" OnCLICK="BtnSave_Click" />
       

            <asp:Button ID="Button2"  style="position:center" runat="server"  Text="Display" class="btn btn-primary" OnClick="Button2_Click1" />
              <asp:Button ID="Btnupdate"  style="position:center" runat="server" Text="EDIT" class="btn btn-primary" OnClick="Btnupdate_Click" Height="37px" />
                <asp:Button ID="BtnChart" style="position:center" runat="server" Text="ShowChart" Class="btn btn-primary" OnClick="BtnChart_Click" Height="34px" Width="97px" />
             </div> <br />            



                          <%--<asp:GridView ID="GridView1" Style="border-style: solid; border-color: inherit; border-width: medium; border-block-color: black; margin-left: 42px; margin-top: 30px;" runat="server"  DataKeyNames="Vno"  AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="7">--%>
              <div class="table-responsive" style="overflow:scroll; width: 911px;"> 
        <asp:GridView ID="GridView1" ClientIDMode="Static" OnPreRender="GridView1_PreRender" runat="server"  DataKeyNames="Vno"  AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="896px">
        <Columns>
                  <%-- <asp:BoundField HeaderText="EMP_ID" DataField="emp_id"  HeaderStyle-Width="1%" ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />--%>
                     <asp:BoundField HeaderText="Vehicle_NO" DataField="Vno"  HeaderStyle-Width="1%"  ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"   />
                     <asp:BoundField HeaderText="V_Type" DataField="VType"  HeaderStyle-Width="1%" ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"/>
                  <asp:BoundField HeaderText="Insurance_Company" DataField="InsuranceComp"  HeaderStyle-Width="1%" ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"  />
                 <asp:BoundField HeaderText="Status" DataField="Status"  HeaderStyle-Width="1%" ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                 <asp:BoundField HeaderText="ChassieNO" DataField="ChassieNo"  HeaderStyle-Width="1%" ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                 <asp:BoundField HeaderText="Milage" DataField="V_Milage"  HeaderStyle-Width="1%" ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"  />
                 <asp:BoundField HeaderText="ExpDate" DataField="Insurance_Exp_date"  HeaderStyle-Width="1%" ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />

                    <asp:TemplateField HeaderText="Delete" HeaderStyle-Width="2%" ItemStyle-Width="2%">
                        <ItemTemplate>
                          <asp:LinkButton ID="lnkDelete" runat="server" Text="Delete" CommandArgument='<%#Eval("Vno")%>' OnClick="lnkDelete_Click" ClientIDMode="Static">
                        
                      </asp:LinkButton>

                        </ItemTemplate>

                    </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Edit" HeaderStyle-Width="2%" ItemStyle-Width="2%">
                        <ItemTemplate>
                         <asp:LinkButton ID="lnkedit" runat="server" Text="Edit" CommandArgument='<%#Eval("Vno")%>' OnClick="lnkedit_Click" >
                        
                        </asp:LinkButton>

                        </ItemTemplate>

                    </asp:TemplateField>
                    </Columns>
                
            </asp:GridView>
                  </div> 


         <div class="col-md-2">
               <div class="widget-box" style="margin-top:20px">
                  <div class="widget-header">
            </div>
          </div>
               </div>
          </div>
         </div>
             <div>
               <asp:Chart ID="Chart2" runat="server" BackColor="128, 64, 0" BackGradientStyle="LeftRight"  
                 BorderlineWidth="0" Height="229px" PaletteCustomColors="64, 0, 0"  
                 Width ="275px" BorderlineColor="192, 64, 0" OnClick="Chart2_Click1">
                  <Series>
                     <asp:Series Name="Series1" YValuesPerPoint="6" PostBackValue="#VALX"></asp:Series>
                 </Series>
                 <ChartAreas>
                  <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                </ChartAreas>
             </asp:Chart>

           
             </div>
        


</asp:Content>

