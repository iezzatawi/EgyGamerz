<%@ Page Title="" Language="C#" MasterPageFile="~/unloggedHomePageTemplate.Master" AutoEventWireup="true" CodeBehind="signupPage.aspx.cs" Inherits="EgyGamerz.signupPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 100%;
        }

.table {
	font-family: 'Segoe UI';
	font-size: 14px;
	border-radius:5px;
	background-color: aliceblue;
	border: 1px solid rgba(0, 0, 0, 0.1);
	box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
    
}
        .auto-style2 {
            font-family: 'Segoe UI';
            font-size: 14px;
            border-radius: 5px;
            background-color: aliceblue;
            box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
            width: 221px;
        }
                
        .auto-style1 {
            font-family: 'Segoe UI';
            font-size: 14px;
            border-radius: 5px;
            background-color: aliceblue;
            box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
            width: 174px;
        }
        .Textbox {
	flex-grow: 1;
	background-color: white;
}

.Textbox {
	display: flex;
	padding: 12px 16px;
	background-color: white;
	border: 1px solid rgba(80, 80, 80, 0.25);
	border-radius: 4px;
	margin-top: 10px;
	margin-bottom: 10px;
}
        
        .auto-style6 {
            font-family: 'Segoe UI';
            font-size: 14px;
            border-radius: 5px;
            background-color: aliceblue;
            box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
            height: 68px;
        }
        .auto-style8 {
            font-family: 'Segoe UI';
            font-size: 14px;
            border-radius: 5px;
            background-color: aliceblue;
            box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
            width: 174px;
            text-align: center;
            height: 68px;
        }
        .auto-style9 {
            font-family: 'Segoe UI';
            font-size: 14px;
            border-radius: 5px;
            background-color: aliceblue;
            box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
            direction: ltr;
        }
        
    .button{
	padding: 12px 24px;
	background-color: white;
	color: aliceblue;
	box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.1);
	border-radius: 6px;
	font-size: 18px;
	margin-top:10px;
	margin-bottom:10px;
}
        .auto-style17 {
            font-family: 'Segoe UI';
            font-size: 14px;
            border-radius: 5px;
            background-color: aliceblue;
            box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .auto-style18 {
            font-family: 'Segoe UI';
            font-size: 14px;
            border-radius: 5px;
            background-color: aliceblue;
            box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
            width: 221px;
            text-align: center;
        }
        .auto-style19 {
            font-family: 'Segoe UI';
            font-size: 14px;
            border-radius: 5px;
            background-color: aliceblue;
            box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
            width: 174px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
        <tr>
            <td class="table">
            <table>
                <tr>
                    <td class="table">
                        <asp:Label ID="Label8" runat="server" Text="Sign in to EgyGamerz"></asp:Label>
                    </td>
                    <td class="table">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style1">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="table">
                        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td class="table">
                        <asp:TextBox ID="txtFName" runat="server" CssClass="Textbox" ToolTip="First Name" placeholder="First Name" Width="172px"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFName" ErrorMessage="Incorrect Format" ValidationExpression="^[A-Za-z\s]+$" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFName" ErrorMessage="First name is required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="table">
                        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td class="table">
                        <asp:TextBox ID="txtLName" runat="server" CssClass="Textbox" ToolTip="Last Name" placeholder="Last Name" Width="172px"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLName" ErrorMessage="Incorrect Format" ValidationExpression="^[A-Za-z\s]+$" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style13">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLName" ErrorMessage="Last name is required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="Textbox" TextMode="Email" ToolTip="Email" placeholder="Email" Width="172px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Incorrect Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="Textbox" TextMode="MultiLine" ToolTip="Address" placeholder="Full Address" Width="172px"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="table">
                        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="table">
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="Textbox" TextMode="Password" ToolTip="Password" placeholder="Password" Width="172px"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style19">&nbsp;</td>
                </tr>
                <tr>
                    <td class="table">
                        <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td class="table">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="Textbox" TextMode="Password" ToolTip="Confirm Password" Width="172px" placeholder="Confirm Password"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Password confirmation is required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style17">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="TextBox5" ErrorMessage="Passwords don't match!" ForeColor="#CC0000"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="table">
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:Button ID="signUpBtn" runat="server" Height="48px" Text="Sign Up" ForeColor="Black" CssClass="button" Width="191px" OnClick="Button1_Click" />
                    </td>   </script>
                    <td class="auto-style2"></td>
                    <td class="auto-style1"></td>
                </tr>
            </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
