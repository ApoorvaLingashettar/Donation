<%@ Page Title="" Language="VB" MasterPageFile="~/Donation.master" AutoEventWireup="false" CodeFile="first_Login.aspx.vb" Inherits="first_Login" %>
<%@ mastertype virtualpath="~/Donation.master"  %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">User Name:</td>
            <td>
                <asp:TextBox ID="TxtBx_Username" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password:</td>
            <td>
                <asp:TextBox ID="TxtBx_Password" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="Btn_Login" runat="server" Text="Login" Width="69px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="Btn_Register" runat="server" Text="Register" />
            </td>
        </tr>
    </table>
</asp:Content>

