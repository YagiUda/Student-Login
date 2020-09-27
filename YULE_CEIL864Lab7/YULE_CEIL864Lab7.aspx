<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YULE_CEIL864Lab7.aspx.cs" Inherits="YULE_CEIL864Lab7.YULE_CEIL864Lab7" %>

<!DOCTYPE html>

<!-- Author: CAMERON YULE -->


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .Header {
            font-size: 44px;
            font-family: Arial, Helvetica, sans-serif;
            color: #003300;
         
            font-weight: bolder;
        }

        
        .main {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
        }

      

  
      

        .auto-style2 {
            text-align: center;
        }
        .auto-style9 {
            height: 55px;
            text-align: center;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            width: 647px;
            height: 153px;
        }
        .auto-style12 {
            text-align: center;
            height: 25px;
        }
        .auto-style13 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            width: 100%;
            height: 156px;
        }

      

  
      

    </style>
</head>
<body class="Header">
    <form id="form1" runat="server">
        <div class="auto-style2">
            <img alt="" class="auto-style11" src="images/Algonquin.jpg" /></div>

    <table class="auto-style13">
        <tr>
            <td class="auto-style12"><span class="Header">STUDENT ENROLLMENT PORTAL</span></td>
        </tr>
        <tr>
            <td class="auto-style2">Please Select an Option:</td>
        </tr>
        </table>

        <table class="auto-style10">
            <tr>
                <td class="auto-style9">
                <asp:Button ID="NewStudent" runat="server" Text="New Student" PostBackUrl="~/Register.aspx" ValidateRequestMode="Disabled" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="StudentList" runat="server" PostBackUrl="~/Students.aspx" Text="Student List" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><span class="main">StudentID:</span><asp:TextBox ID="StudentID" runat="server"></asp:TextBox>
                <asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" />
                    &nbsp;</td>
            </tr>
        </table>

        <p class="auto-style2">
                    <asp:Label ID="Info" runat="server" CssClass="main"></asp:Label>
                </p>
        <p class="auto-style2">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="StudentID" 
                                ErrorMessage="(10 numbers only)"  
                                ValidationExpression="^\d{10}$"
                                CssClass="main">
                </asp:RegularExpressionValidator>
                </p>

    </form>
    </body>
</html>
