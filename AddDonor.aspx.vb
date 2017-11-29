Imports System.Data.SqlClient

Partial Class AddDonor
    Inherits System.Web.UI.Page



    Protected Sub Button_addDonor_Click(sender As Object, e As EventArgs) Handles Button_addDonor.Click

       Dim cmdAddDonor As New SqlCommand
        Dim condonor As New SqlConnection
        Dim strSQL As String
        Try
            condonor.ConnectionString = "Data Source=shucsd.sacredheart.edu\sql2012;" & _
                                         "Initial Catalog=CS557_FA15_lingashettara;" & _
                                         "User ID=CS557_FA15_lingashettara;" & _
                                         "Password=Welcome1"
            strSQL = "InsertUser"
            cmdAddDonor.CommandType = Data.CommandType.StoredProcedure
            cmdAddDonor.CommandText = strSQL
            cmdAddDonor.Parameters.Add("@donoruser", Data.SqlDbType.VarChar).Value = TextBox_UserName.Text
            cmdAddDonor.Parameters.Add("@donorpwd", Data.SqlDbType.VarChar).Value = TextBox_Password.Text
            cmdAddDonor.Parameters.Add("@donorlevel", Data.SqlDbType.Int).Value = DropDownList_level.SelectedValue
            cmdAddDonor.Parameters.Add("@donorlname", Data.SqlDbType.VarChar).Value = TextBox_lastName.Text
            cmdAddDonor.Parameters.Add("@donorfname", Data.SqlDbType.VarChar).Value = TextBox_firstName.Text
            cmdAddDonor.Parameters.Add("@affiliation", Data.SqlDbType.VarChar).Value = dropdown_affiliation.SelectedValue

            condonor.Open()
            cmdAddDonor.Connection = condonor
            Label_Error.Text = cmdAddDonor.ExecuteNonQuery().ToString & " records added!"
            condonor.Close()
            TextBox_UserName.Text = ""
            TextBox_Password.Text = ""
            TextBox_lastName.Text = ""
            TextBox_firstName.Text = ""
            DropDownList_level.SelectedIndex = -1
            dropdown_affiliation.SelectedIndex = -1

        Catch ex As Exception
            Label_Error.Text = ex.Message
        End Try

    End Sub
End Class
