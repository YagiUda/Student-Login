<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="YULE_CEIL864Lab7.Register" %>

<!DOCTYPE html>

<!-- STUDENT: CAMERON YULE -->
<!-- STUDENT NUMBER: 040906493 -->
<!-- COURSE: CST2040 Developing Web Applications with ASP.NET & C#-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
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

        
        .main {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
        }

      

  
      

        .auto-style14 {
            width: 710px;
            text-align: right;
            height: 30px;
        }
        .auto-style15 {
            width: 710px;
            height: 25px;
            text-align: right;
        }
        .auto-style17 {
            text-align: center;
        }
        .auto-style18 {
            text-align: left;
            height: 25px;
        }
        .auto-style19 {
            text-align: left;
            height: 30px;
        }
        .auto-style20 {
            width: 710px;
            text-align: right;
            height: 26px;
        }
        .auto-style21 {
            text-align: left;
            height: 26px;
        }
        .auto-style22 {
            width: 710px;
            text-align: right;
            height: 23px;
        }
        .auto-style23 {
            text-align: left;
            height: 23px;
        }
        .auto-style24 {
            width: 710px;
            height: 24px;
            text-align: right;
        }
        .auto-style25 {
            text-align: left;
            height: 24px;
        }
        .auto-style26 {
            width: 710px;
            text-align: right;
            height: 23px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style17">
            <img alt="" class="auto-style11" src="images/Algonquin.jpg" /></div>

    <table class="auto-style13">
        <tr>
            <td class="auto-style17"><span class="Header">New Student Register</span></td>
        </tr>
        </table>

        <table style="width:100%;">
            <tr>
                <td class="auto-style15"><span class="main">First Name:</span></td>
                <td class="auto-style18">
                    <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator
                        ID="CharsOnly1" runat="server" ControlToValidate="FirstName" CssClass="auto-style3"
                        ErrorMessage="Please enter a first last name (20 characters only)" ValidationExpression="^[a-zA-Z]{0,20}$">
                </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><span class="main">Last Name:</span></td>
                <td class="auto-style21">
                    <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="LastName" CssClass="auto-style3"
                        ErrorMessage="Please enter a valid last name (20 characters only)" ValidationExpression="^[a-zA-Z]{0,20}$">
                </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><span class="main">StudentID:</span></td>
                <td class="auto-style18">
                    <asp:TextBox ID="StudentID" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="StudentID" 
                                ErrorMessage="Please enter a valid student ID (10 numbers only)"  
                                ValidationExpression="^\d{10}$">
                </asp:RegularExpressionValidator>
                &nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><span class="main">Address:</span></td>
                <td class="auto-style21">
                    <asp:TextBox ID="Address" runat="server"></asp:TextBox>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="Address"
                        CssClass="auto-style3" ErrorMessage="Please enter a valid address (30 characters only)"
                        ValidationExpression="^[\da-zA-Z\s]{0,30}$">
                </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><span class="main">City:</span></td>
                <td class="auto-style18">
                    <asp:TextBox ID="City" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="City"
                        CssClass="auto-style3" ErrorMessage="Please enter a valid city name (20 characters only)"
                        ValidationExpression="^[a-zA-Z\s]{0,20}$">
                </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><span class="main">Province:</span></td>
                <td class="auto-style21">
                    <asp:TextBox ID="Province" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                        ControlToValidate="Province" CssClass="auto-style3"
                        ErrorMessage="Please enter a province abbreviation (2 characters only)"
                        ValidationExpression="^[a-zA-Z]{2,2}">
                </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style24"><span class="main">Postal Code:</span></td>
                <td class="auto-style25">
                    <asp:TextBox ID="PostalCode" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"
                        ControlToValidate="PostalCode" CssClass="auto-style3"
                        ErrorMessage="Please enter a valid Canadian postal code ex: L5R2L5"
                        ValidationExpression="^(?!.*[DFIOQU])[A-VXY][0-9][A-Z][0-9][A-Z][0-9]$">
                </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><span class="main">Phone Number:</span></td>
                <td class="auto-style19">
                    <asp:TextBox ID="PhoneNumber" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                                ControlToValidate="PhoneNumber" 
                                ErrorMessage="Please enter a valid phone number ex: 1231234567"  
                                ValidationExpression="^\d{10}$">
                </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style23">
                    <asp:Label ID="Info" runat="server" CssClass="auto-style14"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">Course Name:</td>
                <td class="auto-style23">
                    <asp:DropDownList ID="CourseName" runat="server" DataSourceID="SqlDataSource1" DataTextField="course_name" DataValueField="course_name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [course_name] FROM [Course]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style23">
                    <asp:Button ID="SubmitRegister" runat="server" OnClick="SubmitRegister_Click" Text="Submit" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
