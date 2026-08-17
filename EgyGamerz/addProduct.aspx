<%@ Page Title="" Language="C#" MasterPageFile="~/adminHomePageTemplate.Master" AutoEventWireup="true" CodeBehind="addProduct.aspx.cs" Inherits="EgyGamerz.addProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .table {
	align-items: center;
	align-content: center;
	font-family: 'Segoe UI';
	font-size: 14px;
	display: flex;
	flex-direction: column;
	width: 400px;
	border-radius: 8px;
	background-color: aliceblue;
	border: 1px solid rgba(0, 0, 0, 0.1);
	box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.1);
}
.Label{
	margin-top: 10px;
	margin-bottom: 10px;
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
.Button {
	padding: 12px 24px;
	background-color: white;
	color: aliceblue;
	box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.1);
	border-radius: 6px;
	font-size: 18px;
	margin-top:10px;
	margin-bottom:10px;
}
.Button:hover {
	background-color:aqua;
	box-shadow: 0px 8px 16px;
	color: White;
}
.Button:active {
	box-shadow: initial;
	color: rgba(255, 255, 255, 0.35);
}
        .auto-style31 {
            align-items: center;
            align-content: center;
            font-family: 'Segoe UI';
            font-size: 14px;
            display: flex;
            flex-direction: column;
            width: 1603px;
            border-radius: 8px;
            background-color: aliceblue;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.1);
            height: 471px;
        }
        .auto-style32 {
            width: 411px;
            text-align: center;
            height: 75px;
        }
        .auto-style38 {
            text-align: center;
            width: 410px;
            height: 74px;
        }
        .auto-style39 {
            width: 411px;
            height: 74px;
        }
        .auto-style40 {
            text-align: center;
            width: 410px;
            height: 75px;
        }
        .auto-style41 {
            width: 411px;
            height: 75px;
        }
        .auto-style42 {
            width: 411px;
            height: 74px;
            text-align: center;
        }
        .auto-style44 {
            text-align: center;
            width: 410px;
            height: 76px;
        }
        .auto-style45 {
            width: 411px;
            text-align: center;
            height: 76px;
        }
        .auto-style46 {
            width: 411px;
            height: 76px;
        }
        .auto-style47 {
            width: 410px;
            height: 75px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style31">
        <tr>
            <td class="auto-style38">
                <asp:TextBox ID="idText" runat="server" TextMode="Number" placeholder="Product ID" CssClass="Textbox"></asp:TextBox>
            </td>
            <td class="auto-style42">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="idText" ErrorMessage="Product ID is required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style39">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style40">
                <asp:TextBox ID="pNameText" runat="server" placeholder="Product Name" CssClass="Textbox"></asp:TextBox>
            </td>
            <td class="auto-style32">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pNameText" ErrorMessage="Product Name is required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style41">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style40">
                <asp:TextBox ID="pQuantityText" runat="server" TextMode="Number" placeholder="Product Quantity" CssClass="Textbox"></asp:TextBox>
            </td>
            <td class="auto-style32">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pQuantityText" ErrorMessage="Product Quantity is required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style41">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style44">
                <asp:TextBox ID="priceText" runat="server" TextMode="Number" placeholder="Product Price" CssClass="Textbox"></asp:TextBox>
            </td>
            <td class="auto-style45">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="priceText" ErrorMessage="Product Price is required!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style46">
                </td>
        </tr>
        <tr>
            <td class="auto-style47">
                <asp:Button ID="Button1" runat="server" CssClass="Button" ForeColor="Black" OnClick="Button1_Click" Text="Add Product" />
            </td>
            <td class="auto-style32">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
            <td class="auto-style32">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
