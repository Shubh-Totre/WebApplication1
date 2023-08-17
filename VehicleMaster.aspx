<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VehicleMaster.aspx.cs" Inherits="WebApplication1.VehicleMaster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       
        
        *{
            margin:0;
            padding:0;
        }
        form {
         
                 position: relative;
                 z-index: 1;
                background:Gray;
                 opacity:0.9;
                
                 height:500px;
                 
               /* //margin: 0 auto 100px;*/
                 /*padding: 45px;*/
                text-align: center;
               border-block-color:black;
                border:groove;
                border-color:black;
                box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
                text-shadow: 3px 3px 10px lightgrey;
                font:bold;
             }
        h1{
            padding-bottom:10px;
            padding-top:10px;
        }
        
       
        body{
            /*background-color:goldenrod;*/
            background-image:url("imgrepo/bg1.jpg");
            background-repeat:no-repeat;
            background-size:100% 100%;
            font-family:Algerian;
            font:100;
            margin:30px;
        }
        

    </style>
    
</head>
<body>
    <div><center> <h1 style="margin-top:2px;margin-bottom:50px;background-color:white">:Vehicle Records:</h1>  </center>  </div> 


    <form id="form1" runat="server">
        <div>
             <asp:Label ID="lblvno" runat="server" Text="V_NO:" style="padding:70px" > </asp:Label>
             <asp:TextBox ID="Txtvno" Height="45px" Width="300px" runat="server" style="margin-left:10px;border-radius:5px 4px 5px 4px" ></asp:TextBox>

        <asp:Label ID="Lblvtype" runat="server" Text="V_Type" style="padding:70px"> </asp:Label>
             <asp:TextBox ID="TxtVtype" Height="45px" Width="300px" style="border-radius:5px 4px 5px 4px" runat="server" ></asp:TextBox>
       </div>
        <div  style="padding-top:20px">

       <asp:Label ID="Lblinsucmp" runat="server" Text="Insurance_Company" style="padding:50px"> </asp:Label>
             <asp:TextBox ID="Txtincmpny" Height="45px" Width="300px" style="margin-left:10px;border-radius:5px 4px 5px 4px" runat="server" ></asp:TextBox>

          <asp:Label ID="Lblstatus" runat="server" Text="Status" style="padding-left:60px; padding-right:70px"> </asp:Label>
             <asp:TextBox ID="Txtstatus" Height="45px" Width="300px" runat="server" style="margin-left:10px;border-radius:5px 4px 5px 4px" ></asp:TextBox>
          </div>
        <div  style="padding-top:20px">
         <asp:Label ID="Lblimail" runat="server" Text="Imail" style="padding-left:50px; padding-right:50px" > </asp:Label>
             <asp:TextBox ID="TexImail" Height="45px" Width="300px"  runat="server" style="margin-left:10px;border-radius:5px 4px 5px 4px" TextMode="Phone" ></asp:TextBox>
           
         <asp:Label ID="Lblchsino" runat="server" Text="Chassie_No" style="padding-left:50px; padding-right:15px"> </asp:Label>
             <asp:TextBox ID="Txtchasiono" Height="45px" Width="300px" runat="server" style="margin-left:10px;border-radius:5px 4px 5px 4px" ></asp:TextBox>

         </div>
        <div  style="padding-top:20px">
          <asp:Label ID="Lblvmilge" runat="server" Text="V_Milage" style="padding-left:50px;padding-right:50px"> </asp:Label>
             <asp:TextBox ID="Txtvmilage" Height="45px" Width="300px" runat="server" style="margin-left:10px;border-radius:5px 4px 5px 4px" TextMode="Number" ></asp:TextBox>
                   
          <asp:Label ID="Lblidate" runat="server" Text="Insurance-Date" style="padding:50px"> </asp:Label>
             <asp:TextBox ID="Txtidate" Height="45px" Width="100px" TextMode="Date" runat="server" style="margin-left:10px;border-radius:5px 4px 5px 4px"></asp:TextBox>
            
          <asp:Label ID="Lbliexdte" runat="server" Text="Insurance-Exp-Date" style=" padding-right:10px"> </asp:Label>
           <asp:TextBox ID="TxtIExpDt" Height="45px" Width="100px" runat="server"  style="margin-left:10px; padding-left:3px;border-radius:5px 4px 5px 4px" TextMode="Date"></asp:TextBox>
          
             </div>
        

                       
            <div style="padding-top:20px"> 

            <asp:Button ID="BtnSave" BackColor="skyblue"  runat="server" Text="Save" style="width:120px;height:70px;background-color:white; border:groove" OncLICK="BtnSave_Click" />
       

            <asp:Button ID="Button2" BackColor="pink"  runat="server" Text="Display" style="width:120px;height:70px;background-color:white; border:groove" OnClick="Button2_Click" />
              <asp:Button ID="Btnupdate" BackColor="pink"  runat="server" Text="EDIT" style="width:120px;height:70px;background-color:white; border:groove" OnClick="Btnupdate_Click" />

             </div> <br />            



         <div class="col-md-2">
               <div class="widget-box" style="margin-top:20px">
                  <div class="widget-header">
                      <div class="widget-content">

                          <asp:GridView ID="GridView1" Style="border-block-color: black; border: solid" runat="server"  DataKeyNames="Vno"  AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="7">
                <Columns>
                  <%-- <asp:BoundField HeaderText="EMP_ID" DataField="emp_id"  HeaderStyle-Width="1%" ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />--%>
                     <asp:BoundField HeaderText="Vehicle_NO" DataField="Vno"  HeaderStyle-Width="1%"  ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="yellow" HeaderStyle-Height="2%"  />
                     <asp:BoundField HeaderText="V_Type" DataField="VType"  HeaderStyle-Width="1%" ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="yellow" />
                  <asp:BoundField HeaderText="Insurance_Company" DataField="InsuranceComp"  HeaderStyle-Width="1%" ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="yellow" />
                 <asp:BoundField HeaderText="Status" DataField="Status"  HeaderStyle-Width="1%" ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"  HeaderStyle-BackColor="yellow"/>
                 <asp:BoundField HeaderText="ChassieNO" DataField="ChassieNo"  HeaderStyle-Width="1%" ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"  HeaderStyle-BackColor="yellow"/>
                 <asp:BoundField HeaderText="Milage" DataField="V_Milage"  HeaderStyle-Width="1%" ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"  HeaderStyle-BackColor="yellow"/>
                 <asp:BoundField HeaderText="ExpDate" DataField="Insurance_Exp_date"  HeaderStyle-Width="1%" ItemStyle-Width="1%"  HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"  HeaderStyle-BackColor="yellow"/>

                    <asp:TemplateField HeaderText="Delete" HeaderStyle-Width="2%" ItemStyle-Width="2%">
                        <ItemTemplate>
                          <asp:LinkButton ID="lnkEdit" runat="server" Text="Delete" CommandArgument='<%#Eval("Vno")%>' OnClick="lnkEdit_Click" >
                        
                      </asp:LinkButton>

                        </ItemTemplate>

                    </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Edit" HeaderStyle-Width="2%" ItemStyle-Width="2%">
                        <ItemTemplate>
                         <asp:LinkButton ID="lnkedit1" runat="server" Text="Edit" CommandArgument='<%#Eval("Vno")%>' OnClick="lnkedit1_Click" >
                        
                        </asp:LinkButton>

                        </ItemTemplate>

                    </asp:TemplateField>
                    </Columns>
                
            </asp:GridView>
           </div>
            </div>
          </div>

             </div>
         
     
    </form>
</body>
</html>
