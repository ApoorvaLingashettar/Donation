<%@ Page Title="" Language="VB" MasterPageFile="~/Donation.master" AutoEventWireup="false" CodeFile="give_gift.aspx.vb" Inherits="give_gift" %>
<%@ MasterType VirtualPath ="~/Donation.master"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging ="true" DefaultMode ="Insert"  >
        <EditItemTemplate>
            giftdate:
            <asp:TextBox ID="giftdateTextBox" runat="server" Text='<%# Bind("giftdate") %>' />
            <br />
            giftamount:
            <asp:TextBox ID="giftamountTextBox" runat="server" Text='<%# Bind("giftamount") %>' />
            <br />
            cid:
            <asp:TextBox ID="cidTextBox" runat="server" Text='<%# Bind("cid") %>' />
            <br />
            campaignname:
            <asp:TextBox ID="campaignnameTextBox" runat="server" Text='<%# Bind("campaignname") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            giftdate:
            <asp:TextBox ID="giftdateTextBox" runat="server" Text='<%# Bind("giftdate") %>' />
            <br />
            giftamount:
            <asp:TextBox ID="giftamountTextBox" runat="server" Text='<%# Bind("giftamount") %>' />
            <br />
            cid:
            <asp:TextBox ID="cidTextBox" runat="server" Text='<%# Bind("cid") %>' />
            <br />
            campaignname:
            <asp:TextBox ID="campaignnameTextBox" runat="server" Text='<%# Bind("campaignname") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" OnClick="InsertButton_Click" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            giftdate:
            <asp:Label ID="giftdateLabel" runat="server" Text='<%# Bind("giftdate") %>' />
            <br />
            <asp:DropDownList ID="ddlCampaign" runat="server" DataSourceID="sdsCamps" DataTextField="campaignname" DataValueField="campaignid">
            </asp:DropDownList>
            <asp:SqlDataSource ID="sdsCamps" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_FA15_lingashettaraConnectionString %>" SelectCommand="SELECT [campaignid], [campaignname] FROM [campaign]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <br />
            giftamount:
            <asp:Label ID="giftamountLabel" runat="server" Text='<%# Bind("giftamount") %>' />
            <br />
            <br />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_FA15_lingashettaraConnectionString %>" SelectCommand="insert into donorgift (giftamount, giftdate, cid, did) values (@amount, @date, @cid, @did)">
        <SelectParameters>
            <asp:Parameter Name="amount" />
            <asp:Parameter Name="date" />
            <asp:Parameter Name="cid" />
            <asp:Parameter Name="did" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

