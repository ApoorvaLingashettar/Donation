<%@ Page Title="" Language="VB" MasterPageFile="~/Donation.master" AutoEventWireup="false" CodeFile="campaigns.aspx.vb" Inherits="campaigns" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
 p.MsoNormal
	{margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	        margin-left: 0in;
            margin-right: 0in;
            margin-top: 0in;
        }
        .auto-style3 {
            width: 160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphMain" Runat="Server">
    <asp:GridView ID="dgvCampaign" runat="server" AllowPaging="True"   AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="campaignid" DataSourceID="sdsCampaign" Height="331px" Width="312px">
        <AlternatingRowStyle BackColor="Silver" />
        <Columns>
            <asp:BoundField DataField="campaignname" HeaderText="name" SortExpression="campaignname" />
            <asp:BoundField DataField="goal" HeaderText="goal" SortExpression="goal" />
            <asp:BoundField DataField="startdate" HeaderText="start date" SortExpression="startdate" />
            <asp:BoundField DataField="enddate" HeaderText="end date" SortExpression="enddate" />
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="sdsCampaign" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_FA15_lingashettaraConnectionString %>" SelectCommand="SELECT [campaignid], [campaignname], [goal], [startdate], [enddate] FROM [campaign]" DeleteCommand="DELETE FROM [campaign] WHERE [campaignid] = @campaignid" InsertCommand="INSERT INTO [campaign] ([campaignname], [goal], [startdate], [enddate]) VALUES (@campaignname, @goal, @startdate, @enddate)" UpdateCommand="UPDATE [campaign] SET [campaignname] = @campaignname, [goal] = @goal, [startdate] = @startdate, [enddate] = @enddate WHERE [campaignid] = @campaignid">
        <DeleteParameters>
            <asp:Parameter Name="campaignid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="campaignname" Type="String" />
            <asp:Parameter Name="goal" Type="Int32" />
            <asp:Parameter Name="startdate" Type="DateTime" />
            <asp:Parameter Name="enddate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="campaignname" Type="String" />
            <asp:Parameter Name="goal" Type="Int32" />
            <asp:Parameter Name="startdate" Type="DateTime" />
            <asp:Parameter Name="enddate" Type="DateTime" />
            <asp:Parameter Name="campaignid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="affiliation" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="affiliation" HeaderText="affiliation" ReadOnly="True" SortExpression="affiliation" />
            <asp:BoundField DataField="affiliation_desc" HeaderText="affiliation_desc" SortExpression="affiliation_desc" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_FA15_lingashettaraConnectionString %>" DeleteCommand="DELETE FROM [affiliation_code] WHERE [affiliation] = @affiliation" InsertCommand="INSERT INTO [affiliation_code] ([affiliation], [affiliation_desc]) VALUES (@affiliation, @affiliation_desc)" SelectCommand="SELECT [affiliation], [affiliation_desc] FROM [affiliation_code]" UpdateCommand="UPDATE [affiliation_code] SET [affiliation_desc] = @affiliation_desc WHERE [affiliation] = @affiliation">
        <DeleteParameters>
            <asp:Parameter Name="affiliation" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="affiliation" Type="String" />
            <asp:Parameter Name="affiliation_desc" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="affiliation_desc" Type="String" />
            <asp:Parameter Name="affiliation" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <span style="font-size:12.0pt;font-family:Times New Roman">To create a new campaign,&nbsp;enter the information and click Add New Campaign<br />
    <br />
    </span>
    <table class="auto-style2">
        <tr>
            <td class="auto-style3">
                <p class="MsoNormal" style="margin-left:.5in">
                    Campaign Name</p>
            </td>
            <td>
                <asp:TextBox ID="TextBox_Name" runat="server" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <p class="MsoNormal">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Goal</p>
            </td>
            <td>
                <asp:TextBox ID="TextBox_Goal" runat="server" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start Date:</td>
            <td>
                <asp:TextBox ID="TextBox_startDate" runat="server" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End Date:</td>
            <td>
                <asp:TextBox ID="TextBox_EndDate" runat="server" Width="170px"></asp:TextBox>
            </td>
        </tr>
    </table>


    <br />
    <asp:Button ID="Button_AddCampaign" runat="server" Text="Add New Campaign" />
    <br />
    <br />
    <asp:Label ID="Label_error" runat="server"></asp:Label>


</asp:Content>

