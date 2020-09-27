<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="YULE_CEIL864Lab7.Students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style17 {
            text-align: center;
        }
        .auto-style13 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            width: 100%;
            height: 66px;
        }
        .Header {
            font-size: 44px;
            font-family: Arial, Helvetica, sans-serif;
            color: #003300;
         
            font-weight: bolder;
        }

        
        .auto-style29 {
            height: 25px;
            text-align: center;
        }
        
        
        .main {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
        }

      

  
      

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style17">
        <div class="auto-style17">
            <img alt="" class="auto-style11" src="images/Algonquin.jpg" /></div>

    <table class="auto-style13">
        <tr>
            <td class="auto-style17"><span class="Header">Registered Students</span></td>
        </tr>
        </table>

        <table style="width:100%;">
            <tr>
                <td class="auto-style29"><span class="main">Current Students:</span></td>
            </tr>
            <tr>
                <td class="auto-style29">
                          
                   <asp:GridView ID="GridStudent" runat="server" CellPadding="4" HorizontalAlign="Center"  ForeColor="#333333" GridLines="None">
                       <AlternatingRowStyle BackColor="White" />
                       <EditRowStyle BackColor="#7C6F57" />
                       <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                       <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                       <RowStyle BackColor="#E3EAEB" />
                       <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                       <SortedAscendingCellStyle BackColor="#F8FAFA" />
                       <SortedAscendingHeaderStyle BackColor="#246B61" />
                       <SortedDescendingCellStyle BackColor="#D4DFE1" />
                       <SortedDescendingHeaderStyle BackColor="#15524A" />
                   </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">
                          
                    &nbsp;</td>
            </tr>
            </table>
            <asp:Button ID="Back" runat="server" PostBackUrl="~/YULE_CEIL864Lab7.aspx" Text="Back" />
        </div>
    </form>
</body>
</html>
