
Partial Class campaigns
    Inherits System.Web.UI.Page


    
    Protected Sub Button_AddCampaign_Click(sender As Object, e As EventArgs) Handles Button_AddCampaign.Click
        sdsCampaign.InsertParameters("campaignname").DefaultValue = TextBox_Name.Text
        sdsCampaign.InsertParameters("goal").DefaultValue = TextBox_Goal.Text
        sdsCampaign.InsertParameters("startdate").DefaultValue = TextBox_startDate.Text
        sdsCampaign.InsertParameters("enddate").DefaultValue = TextBox_EndDate.Text

        Try
            sdsCampaign.Insert()
            TextBox_Name.Text = ""
            TextBox_Goal.Text = ""
            TextBox_EndDate.Text = ""
            TextBox_startDate.Text = ""

        Catch ex As Exception
            Label_error.Text = ex.Message
        End Try



    End Sub


    Protected Sub dgvCampaign_RowUpdating(ByVal sender As Object, ByVal e As GridViewUpdateEventArgs)
       


    End Sub
End Class
