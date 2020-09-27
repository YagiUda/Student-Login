<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="YULE_CEIL864Lab7.Confirm" %>

<!DOCTYPE html>

<!-- STUDENT: CAMERON YULE -->
<!-- STUDENT NUMBER: 040906493 -->
<!-- COURSE: CST2040 Developing Web Applications with ASP.NET & C#-->

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

        
        .auto-style18 {
            text-align: center;
            font-weight: bold;
            font-size: 44px;
            color: #003300;
            height: 64px;
        }
        .auto-style20 {
            width: 100%;
            height: 388px;
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
            <td class="auto-style18">Student Inputted Successfully:</td>
        </tr>
        </table>
          
              
            </div>
                <table class="auto-style20">
                    <tr>
                        <td class="auto-style17">
                   <asp:GridView ID="GridView1" runat="server" CellPadding="4" HorizontalAlign="Center"  ForeColor="#333333" GridLines="None" CssClass="auto-style17">
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
                        <td class="auto-style17">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">
                   <asp:GridView ID="CrseInfo" runat="server" CellPadding="4" HorizontalAlign="Center"  ForeColor="#333333" GridLines="None">
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
                        <td class="auto-style19">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">
                <asp:Button ID="OK" runat="server" PostBackUrl="~/YULE_CEIL864Lab7.aspx" Text="OK" />
                        </td>
                    </tr>
                </table>
              
        </form>
        
    </body>
</html>
