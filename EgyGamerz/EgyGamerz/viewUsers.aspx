<%@ Page Title="" Language="C#" MasterPageFile="~/adminHomePageTemplate.Master" AutoEventWireup="true" CodeBehind="viewUsers.aspx.cs" Inherits="EgyGamerz.viewUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
        <tr>
            <td>
                <div class="auto-style15">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Customer Email" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1598px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="Customer Name" HeaderText="Customer Name" ReadOnly="True" SortExpression="Customer Name" />
                            <asp:BoundField DataField="Customer Email" HeaderText="Customer Email" ReadOnly="True" SortExpression="Customer Email" />
                            <asp:BoundField DataField="Customer Address" HeaderText="Customer Address" SortExpression="Customer Address" />
                            <asp:BoundField DataField="Customer Password" HeaderText="Customer Password" SortExpression="Customer Password" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT cust_FName+' '+cust_LName as 'Customer Name', cust_Email as 'Customer Email', cust_Address as 'Customer Address', cust_Password as 'Customer Password' from CUSTOMER"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button4" runat="server" CssClass="button" Text="Back to Admin Home" ForeColor="Black" Width="224px" OnClick="Button4_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
