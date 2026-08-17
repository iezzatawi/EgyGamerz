<%@ Page Title="" Language="C#" MasterPageFile="~/adminHomePageTemplate.Master" AutoEventWireup="true" CodeBehind="deleteUser.aspx.cs" Inherits="EgyGamerz.deleteUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style22 {
            width: 168px;
        }
        .auto-style25 {
            width: 411px;
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
.table {
	font-family: 'Segoe UI';
	font-size: 14px;
	border-radius:5px;
	background-color: aliceblue;
	border: 1px solid rgba(0, 0, 0, 0.1);
	box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
    
}
    .auto-style26 {
        font-family: 'Segoe UI';
        font-size: 14px;
        border-radius: 5px;
        background-color: aliceblue;
        box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
        width: 203px;
    }
    .auto-style27 {
        width: 203px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
    <tr>
        <td class="table">
            <asp:Label ID="Label1" runat="server" Text="Enter the Customer Email"></asp:Label>
        </td>
        <td class="table">
            <asp:TextBox ID="delUserIdTxt" runat="server" CssClass="Textbox" Width="165px" placeholder ="Customer Email" TextMode="Email"></asp:TextBox>
        </td>
        <td class="auto-style26">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="delUserIdTxt" ErrorMessage="Customer Email Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
        <td class="table">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="delUserIdTxt" ErrorMessage="Incorrect Email Format" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="table">&nbsp;</td>
        <td class="table">
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Confirm" />
        </td>
        <td class="auto-style26">
            <asp:Label ID="Label2" runat="server" ForeColor="#CC0000"></asp:Label>
        </td>
        <td class="table">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="table"></td>
        <td class="table">
            <asp:Button ID="Button4" runat="server" Text="Delete" CssClass="button" ForeColor="Black" OnClick="Button4_Click" />
        </td>
        <td class="auto-style26">&nbsp;</td>
        <td class="table">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22">&nbsp;</td>
        <td class="auto-style25">&nbsp;</td>
        <td class="auto-style27">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
