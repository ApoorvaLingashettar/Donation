<%@ Page Title="" Language="VB" MasterPageFile="~/Donation.master" AutoEventWireup="false" CodeFile="donor_list.aspx.vb" Inherits="donor_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 205px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblAffiliation" runat="server" Text="Please select donor group"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label_donorList" runat="server" Font-Size="Large" Text="Please selct a donor list"></asp:Label>
                <br />
            </td>
            <td>


                <asp:DropDownList ID="DropDownList_affiliation" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_Affiliation" DataTextField="affiliation_desc" DataValueField="affiliation">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource_Affiliation" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_FA15_lingashettaraConnectionString %>" SelectCommand="SELECT [affiliation], [affiliation_desc] FROM [affiliation_code]"></asp:SqlDataSource>
                <br />
                <br />
                <br />


                <asp:DropDownList ID="DropDownList_donors" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_donors" DataTextField="donor_lname" DataValueField="donorid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource_donors" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_FA15_lingashettaraConnectionString %>" SelectCommand="SELECT [donorid], [donor_lname], [donor_fname] FROM [donor] WHERE ([affiliation] = @affiliation)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList_donors" Name="affiliation" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                <br />
                <asp:DataList ID="DataList_donors" runat="server" DataKeyField="donorid" DataSourceID="sdsDonors">
                    <AlternatingItemStyle BackColor="#E0E0E0" />
                    <AlternatingItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("donorid") %>'></asp:Label>
                        &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("donor_lname") %>'></asp:Label>
                        &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("donor_fname") %>'></asp:Label>
                    </AlternatingItemTemplate>
                   
                    <SeparatorTemplate>
                        <hr />
                       
                    </SeparatorTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="sdsDonors" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_FA15_lingashettaraConnectionString %>" SelectCommand="SELECT [donor_lname], [donorid], [donor_fname] FROM [donor] WHERE ([affiliation] = @affiliation)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList_Affiliation" Name="affiliation" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

