<%@ Page Title="" Language="C#" MasterPageFile="~/adminHomePageTemplate.Master" AutoEventWireup="true" CodeBehind="deleteProduct.aspx.cs" Inherits="EgyGamerz.deleteProduct" %>
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
	display: flex;
	padding: 12px 16px;
	background-color: white;
	border: 1px solid rgba(80, 80, 80, 0.25);
	border-radius: 4px;
	margin-top: 10px;
	margin-bottom: 10px;
}
            .Textbox {
	flex-grow: 1;
	background-color: white;
}

    .auto-style26 {
        font-family: 'Segoe UI';
        font-size: 14px;
        border-radius: 5px;
        background-color: aliceblue;
        box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
        width: 203px;
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
            .auto-style27 {
        font-family: 'Segoe UI';
        font-size: 14px;
        border-radius: 5px;
        background-color: aliceblue;
        box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
        height: 22px;
    }
    .auto-style28 {
        font-family: 'Segoe UI';
        font-size: 14px;
        border-radius: 5px;
        background-color: aliceblue;
        box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
        width: 203px;
        height: 23px;
    }
    .auto-style29 {
        font-family: 'Segoe UI';
        font-size: 14px;
        border-radius: 5px;
        background-color: aliceblue;
        box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
        width: 203px;
        height: 22px;
    }
    .auto-style30 {
        font-family: 'Segoe UI';
        font-size: 14px;
        border-radius: 5px;
        background-color: aliceblue;
        box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
        height: 25px;
    }
    .auto-style31 {
        font-family: 'Segoe UI';
        font-size: 14px;
        border-radius: 5px;
        background-color: aliceblue;
        box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
        width: 203px;
        height: 25px;
    }
        .auto-style32 {
            font-family: 'Segoe UI';
            font-size: 14px;
            border-radius: 5px;
            background-color: aliceblue;
            box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
            width: 515px;
        }
        .auto-style33 {
            font-family: 'Segoe UI';
            font-size: 14px;
            border-radius: 5px;
            background-color: aliceblue;
            box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
            height: 25px;
            width: 515px;
        }
        .auto-style34 {
            font-family: 'Segoe UI';
            font-size: 14px;
            border-radius: 5px;
            background-color: aliceblue;
            box-shadow: 0px 20px 16px rgba(0, 0, 0, 0.1);
            height: 22px;
            width: 515px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
    <tr>
        <td class="auto-style32">
            <asp:Label ID="Label1" runat="server" Text="Enter the Product ID"></asp:Label>
        </td>
        <td class="table">
            <asp:TextBox ID="delProdIdTxt" runat="server" CssClass="Textbox" Width="165px" placeholder ="Customer Email" TextMode="Number"></asp:TextBox>
        </td>
        <td class="auto-style26">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="delProdIdTxt" ErrorMessage="Product ID Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
        <td class="table">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style33"></td>
        <td class="auto-style30">
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Confirm" />
        </td>
        <td class="auto-style31">
            <asp:Label ID="Label2" runat="server" ForeColor="#CC0000"></asp:Label>
        </td>
        <td class="auto-style30"></td>
    </tr>
    <tr>
        <td class="auto-style32"></td>
        <td class="table">
            <asp:Button ID="Button4" runat="server" Text="Delete" CssClass="button" ForeColor="Black" OnClick="Button4_Click" />
        </td>
        <td class="auto-style26">&nbsp;</td>
        <td class="table">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style34"></td>
        <td class="auto-style27"></td>
        <td class="auto-style29"></td>
        <td class="auto-style27"></td>
    </tr>
</table>
</asp:Content>
