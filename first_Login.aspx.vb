Imports System.Data.SqlClient
Partial Class first_Login
    Inherits System.Web.UI.Page

    Protected Sub Btn_Login_Click(sender As Object, e As EventArgs) Handles Btn_Login.Click
        Dim conDonor As New SqlConnection
        Dim cmdUser As New SqlCommand
        Dim strSQL As String
        Dim dtrUser As SqlDataReader

        Try
            conDonor.ConnectionString = "Data Source=shucsd.sacredheart.edu\sql2012;" & _
                                         "Initial Catalog=CS557_FA15_lingashettara;" & _
                                         "User ID=CS557_FA15_lingashettara;" & _
                                         "Password=Welcome1"
            strSQL = "select * from donor_user where donorname=@user and donorpassword=@pwd"
            cmdUser.CommandType = Data.CommandType.Text
            cmdUser.CommandText = strSQL
            cmdUser.Parameters.Add("@user", Data.SqlDbType.VarChar).Value = TxtBx_Username.Text
            cmdUser.Parameters.Add("@pwd", Data.SqlDbType.VarChar).Value = TxtBx_Password.Text

            conDonor.Open()
            cmdUser.Connection = conDonor
            dtrUser = cmdUser.ExecuteReader()
            If dtrUser.HasRows Then
                dtrUser.Read()
                Session("username") = dtrUser("donorname")
                Session("level") = dtrUser("donorlevel")
                Session("did") = dtrUser("donorid_fk")
                Response.Redirect("default.aspx")


            Else
                Me.Master.statusLabel.Text = "Not a user"
            End If

            dtrUser.Close()
            conDonor.Close()
        Catch ex As Exception
            Me.Master.statusLabel.Text = ex.Message
        End Try



    End Sub

    Protected Sub Btn_Register_Click(sender As Object, e As EventArgs) Handles Btn_Register.Click
        Response.Redirect("~/register.aspx")
    End Sub
End Class
