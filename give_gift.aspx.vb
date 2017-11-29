
Partial Class give_gift
    Inherits System.Web.UI.Page

    Protected Sub InsertButton_Click(sender As Object, e As EventArgs)
        Dim txtAmount As TextBox
        Dim txtDate As TextBox
        Dim ddlCamps As DropDownList

        txtAmount = FormView1.FindControl("txtgiftamount")
        txtDate = FormView1.FindControl("txtgiftdate")
        ddlCamps = FormView1.FindControl("ddlCampaign")

        SqlDataSource1.InsertParameters("amount").DefaultValue = txtAmount.Text
        SqlDataSource1.InsertParameters("date").DefaultValue = txtDate.Text
        SqlDataSource1.InsertParameters("cid").DefaultValue = ddlCamps.SelectedValue
        SqlDataSource1.InsertParameters("did").DefaultValue = Session("did")



    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Try
            If Session("user") = "" Then
                Response.Redirect("first_login.aspx")
            Else
                If Session("level") = 1 Then
                    Me.Master.AdmimMenu = True
                    Me.Master.userMenu = False
                Else
                    Me.Master.AdmimMenu = False
                    Me.Master.userMenu = True
                End If
            End If
        Catch ex As Exception
            Me.Master.statusLabel.Text = ex.Message
        End Try

    End Sub

    Protected Sub FormView1_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles FormView1.ItemInserted

        FormView1.DefaultMode = FormViewMode.ReadOnly
    End Sub

   
   
End Class
