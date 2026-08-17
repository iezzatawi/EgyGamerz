<%@ Page Title="" Language="C#" MasterPageFile="~/adminHomePageTemplate.Master" AutoEventWireup="true" CodeBehind="viewOrders.aspx.cs" Inherits="EgyGamerz.viewOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style26 {
            text-align: center;
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
            width: 100%;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style27">
        <tr>
            <td>
                <div class="auto-style26">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1600px" AutoGenerateColumns="False" DataKeyNames="Order ID">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="Order ID" HeaderText="Order ID" ReadOnly="True" SortExpression="Order ID" />
                            <asp:BoundField DataField="Product ID" HeaderText="Product ID" SortExpression="Product ID" />
                            <asp:BoundField DataField="Customer Email" HeaderText="Customer Email" SortExpression="Customer Email" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT order_Id as 'Order ID', product_ID as 'Product ID', cust_Email as 'Customer Email' FROM [ORDER]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back to Admin Home" CssClass="button" ForeColor="Black" />
            </td>
        </tr>
    </table>
</asp:Content>
