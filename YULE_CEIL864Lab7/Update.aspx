<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="YULE_CEIL864Lab7.Update" %>

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
        .auto-style29 {
            height: 25px;
            text-align: center;
        }
        .auto-style30 {
            height: 25px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style17">
            <img alt="" class="auto-style11" src="images/Algonquin.jpg" /></div>

    <table class="auto-style13">
        <tr>
            <td class="auto-style17"><span class="Header">Update Student Information</span></td>
        </tr>
        </table>

        <table style="width:100%;">
            <tr>
                <td class="auto-style29" colspan="2"><span class="main">Current Student Info: </span></td>
            </tr>
            <tr>
                <td class="auto-style29" colspan="2">
                          
                   <asp:GridView ID="GridView1" runat="server" CellPadding="4" HorizontalAlign="Center"  ForeColor="#333333" GridLines="None">
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
                <td class="auto-style30" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29" colspan="2"><span class="main">Course Info: </span></td>
            </tr>
            <tr>
                <td class="auto-style29" colspan="2">
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
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
            </tr>
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
                    <asp:Label ID="studentIdent" runat="server"></asp:Label>
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
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="Province" CssClass="auto-style3" ErrorMessage="Please enter a province abbreviation (2 characters only)" ValidationExpression="^[a-zA-Z]{2,2}">
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
                <td class="auto-style20"><span class="main">Phone Number:</span></td>
                <td class="auto-style21">
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
                <td class="auto-style23"></td>
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
                <td class="auto-style22"></td>
                <td class="auto-style23"></td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style23">
                    <asp:Button ID="Remove" runat="server" OnClick="Remove_Click" Text="Remove Student" OnClientClick = "return confirm('This will REMOVE the student, please confirm.')"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style23">
                    <asp:Button ID="SubmitRegister" runat="server" OnClick="SubmitRegister_Click" Text="Submit" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
