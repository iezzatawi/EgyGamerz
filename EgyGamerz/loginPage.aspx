<%@ Page Title="" Language="C#" MasterPageFile="~/unloggedHomePageTemplate.Master" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="EgyGamerz.loginPage1" %>
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
    
        .auto-style16 {
            width: 100%;
        }
        .auto-style14 {
            align-items: center;
            align-content: center;
            font-family: 'Segoe UI';
            font-size: 14px;
            display: flex;
            flex-direction: column;
            width: 1613px;
            border-radius: 8px;
            background-color: aliceblue;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.1);
        }
        .auto-style15 {
            width: 365px;
        }
    
        .auto-style17 {
            width: 365px;
            text-align: center;
        }
        .auto-style18 {
            width: 365px;
            text-align: center;
            direction: ltr;
        }
        .auto-style19 {
            text-align: left;
        }
    
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style16">
        <tr>
            <td>
    <table class="auto-style14">
        <tr>
            <td>
            <table class="auto-style14">
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label1" runat="server" Text="Welcome to EgyGamerz!"></asp:Label>
                    </td>
                    <td class="auto-style30">
                        </td>
                    <td class="auto-style31"></td>
                </tr>
                <tr>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="Textbox" TextMode="Email" ToolTip="Email" placeholder="Email Address"></asp:TextBox>
                    </td>
                    <td class="auto-style25">
                        <asp:Label ID="lblMsg" runat="server" ForeColor="#CC0000"></asp:Label>
                    </td>
                    <td class="auto-style26">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="Textbox" TextMode="Password" ToolTip="Password" placeholder="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        <asp:Button ID="Button3" runat="server" Text="Sign In" ForeColor="Black" CssClass="Button" OnClick="Button3_Click" Height="56px" />
                    </td>
                    <td class="auto-style26">&nbsp;</td>
                </tr>
                </table>
            </td>
        </tr>
        </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
