<%@ Page Title="" Language="VB" MasterPageFile="~/Donation.master" AutoEventWireup="false" CodeFile="gift_history.aspx.vb" Inherits="gift_history" %>
<%@ mastertype VirtualPath="~/Donation.master"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <asp:DetailsView ID="dtvGift" runat="server" AutoGenerateRows="False" DataKeyNames="giftid" DataSourceID="sdsGift" Height="50px" Width="125px" AllowPaging ="True" >
        <Fields>
            <asp:BoundField DataField="giftid" HeaderText="giftid" InsertVisible="False" ReadOnly="True" SortExpression="giftid" />
            <asp:BoundField DataField="giftamount" HeaderText="giftamount" SortExpression="giftamount" />
            <asp:BoundField DataField="giftdate" HeaderText="giftdate" SortExpression="giftdate" />
            <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
            <asp:BoundField DataField="did" HeaderText="did" SortExpression="did" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="sdsGift" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_FA15_lingashettaraConnectionString %>" SelectCommand="select giftdate,giftamount,campaignname from donorgift, campaign where campaignid=cid and did = @did">
        <SelectParameters>
            <asp:Parameter Name="did" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

