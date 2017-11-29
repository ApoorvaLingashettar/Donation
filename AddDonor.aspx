<%@ Page Title="" Language="VB" MasterPageFile="~/Donation.master" AutoEventWireup="false" CodeFile="AddDonor.aspx.vb" Inherits="AddDonor" %>

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
            <td class="auto-style3">First Name:</td>
            <td>
                <asp:TextBox ID="TextBox_firstName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Last Name:</td>
            <td>
                <asp:TextBox ID="TextBox_lastName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Affiliation:</td>
            <td>
                <asp:DropDownList ID="dropdown_affiliation" runat="server">
                    <asp:ListItem Value="NA">Please select an Affiliation</asp:ListItem>
                    <asp:ListItem Value="AL">Alumni</asp:ListItem>
                    <asp:ListItem Value="FR">Friend</asp:ListItem>
                    <asp:ListItem Value="PR">Parent</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Username:</td>
            <td>
                <asp:TextBox ID="TextBox_UserName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password:</td>
            <td>
                <asp:TextBox ID="TextBox_Password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">User Level:</td>
            <td>
                <asp:DropDownList ID="DropDownList_level" runat="server">
                    <asp:ListItem Value="0">Please select a value</asp:ListItem>
                    <asp:ListItem Value="1">Administrator</asp:ListItem>
                    <asp:ListItem Value="4">End User</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="Button_addDonor" runat="server" Text="AddDonor" />
            </td>
        </tr>
    </table>


    <br />
    <asp:Label ID="Label_Error" runat="server"></asp:Label>


</asp:Content>

