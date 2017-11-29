
Partial Class success
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        

        Try
            If Session("user") = " " Then
                Response.Redirect("first_Login.aspx")
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
End Class
