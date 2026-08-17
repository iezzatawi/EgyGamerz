<%@ Page Title="" Language="C#" MasterPageFile="~/adminHomePageTemplate.Master" AutoEventWireup="true" CodeBehind="viewProducts.aspx.cs" Inherits="EgyGamerz.viewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style26 {
            width: 100%;
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
.button:hover {
	background-color:aqua;
	box-shadow: 0px 8px 16px;
	color: White;
}
.button:active {
	box-shadow: initial;
	color: rgba(255, 255, 255, 0.35);
}

    .auto-style27 {
        text-align: center;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style26">
        <tr>
            <td>
                <div class="auto-style27">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Product ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1601px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Product ID" HeaderText="Product ID" ReadOnly="True" SortExpression="Product ID" />
                        <asp:BoundField DataField="Product Name" HeaderText="Product Name" SortExpression="Product Name" />
                        <asp:BoundField DataField="Product Quantity" HeaderText="Product Quantity" SortExpression="Product Quantity" />
                        <asp:BoundField DataField="Product Price" HeaderText="Product Price" SortExpression="Product Price" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT product_ID as 'Product ID', product_Name as 'Product Name', product_Quantity as 'Product Quantity', product_Price as 'Product Price' FROM [PRODUCT]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back to Admin Home" CssClass="button" ForeColor="Black" Width="243px" />
            </td>
        </tr>
    </table>
</asp:Content>
