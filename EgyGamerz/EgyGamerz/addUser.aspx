<%@ Page Title="" Language="C#" MasterPageFile="~/adminHomePageTemplate.Master" AutoEventWireup="true" CodeBehind="addUser.aspx.cs" Inherits="EgyGamerz.addUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


.table {
	font-family: 'Segoe UI';
	font-size: 14px;
	border-radius:5px;
	background-color: aliceblue;
	border: 1px solid rgba(0, 0, 0, 0.1);
	box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
    
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
    .auto-style28 {
        flex-grow: 1;
        display: flex;
        border-radius: 4px;
        margin-top: 10px;
        margin-bottom: 10px;
        padding: 12px 16px;
        background-color: white;
    }
    .auto-style29 {
        width: 1603px;
    }
        .auto-style30 {
            font-family: 'Segoe UI';
            font-size: 14px;
            border-radius: 5px;
            background-color: aliceblue;
            box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 381px;
        }
        .auto-style31 {
            font-family: 'Segoe UI';
            font-size: 14px;
            border-radius: 5px;
            background-color: aliceblue;
            box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
            width: 381px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style29">
    <tr>
        <td class="table">
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        </td>
        <td class="table">
            <asp:TextBox ID="txtFName" runat="server" CssClass="Textbox" ToolTip="First Name" placeholder="First Name" Width="172px"></asp:TextBox>
        </td>
        <td class="auto-style31">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtFName" ErrorMessage="Incorrect Format" ValidationExpression="^[A-Za-z\s]+$" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        </td>
        <td class="table">
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
        <td class="auto-style31">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtLName" ErrorMessage="Incorrect Format" ValidationExpression="^[A-Za-z\s]+$" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        </td>
        <td class="table">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLName" ErrorMessage="Last name is required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="table">
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
        </td>
        <td class="table">
            <asp:TextBox ID="txtEmail" runat="server" CssClass="Textbox" TextMode="Email" ToolTip="Email" placeholder="Email" Width="172px"></asp:TextBox>
        </td>
        <td class="auto-style31">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Incorrect Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        </td>
        <td class="table">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="table">
            <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
        </td>
        <td class="table">
            <asp:TextBox ID="txtAddress" runat="server" CssClass="Textbox" TextMode="MultiLine" ToolTip="Address" placeholder="Full Address" Width="172px"></asp:TextBox>
        </td>
        <td class="auto-style31">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
        <td class="table">&nbsp;</td>
    </tr>
    <tr>
        <td class="table">
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
        </td>
        <td class="table">
            <asp:TextBox ID="txtPassword" runat="server" CssClass="Textbox" TextMode="Password" ToolTip="Password" placeholder="Password" Width="172px"></asp:TextBox>
        </td>
        <td class="auto-style31">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
        <td class="table">&nbsp;</td>
    </tr>
    <tr>
        <td class="table">
            <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
        </td>
        <td class="table">
            <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style28" TextMode="Password" ToolTip="Confirm Password" Width="172px" placeholder="Confirm Password"></asp:TextBox>
        </td>
        <td class="auto-style31">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Password confirmation is required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
        <td class="table">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="TextBox5" ErrorMessage="Passwords don't match!" ForeColor="#CC0000"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="table">
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </td>
        <td class="table">
            <asp:Button ID="signUpBtn" runat="server" Height="48px" Text="Add User" ForeColor="Black" CssClass="button" Width="191px" OnClick="Button1_Click" />
        </td>
        <td class="auto-style30">
            &nbsp;</td>
        <td class="table"></td>
    </tr>
</table>
</asp:Content>
