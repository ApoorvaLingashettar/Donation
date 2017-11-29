<%@ Page Title="" Language="VB" MasterPageFile="~/Donation.master" AutoEventWireup="false" CodeFile="success.aspx.vb" Inherits="success" %>
<%@ MasterType VirtualPath ="~/Donation.master" %>

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
            <td class="auto-style3">User name:</td>
            <td>
                <asp:Label ID="LblUser" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password:</td>
            <td>
                <asp:Label ID="LblPassword" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Session ID</td>
            <td>
                <asp:Label ID="LblSessionId" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

