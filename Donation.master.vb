
Partial Class Donation
    Inherits System.Web.UI.MasterPage


    Public Property statusLabel() As Label
        Get
            Return lbl_status
        End Get
        Set(value As Label)
            lbl_status = value
        End Set
    End Property

    Private Function DaysUntilFounderDay() As Integer
        Dim dtmFoundersDay As Date = New DateTime(DateTime.Today.Year, 3, 19)
        If DateTime.Today > dtmFoundersDay Then
            dtmFoundersDay = dtmFoundersDay.AddYears(1)
        End If

        Dim tsTimeUntil As TimeSpan = dtmFoundersDay - DateTime.Today
        Return tsTimeUntil.Days
    End Function


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim iDaysUntil As Integer = DaysUntilFounderDay()
        If iDaysUntil = 0 Then
            lbl_Message.Text = "Happy Founders Day!"
        ElseIf iDaysUntil = 1 Then
            lbl_Message.Text = "Tomorrow is Founders Day!"
        Else
            lbl_Message.Text = "There are only " & iDaysUntil & " days left until Founders Day!"
        End If
    End Sub

    Protected Sub LinkBtn_Logout_Click(sender As Object, e As EventArgs) Handles LinkBtn_Logout.Click
        Session.RemoveAll()
        Response.Redirect("first_Login.aspx")
    End Sub

    Public WriteOnly Property AdmimMenu() As Boolean
        Set(value As Boolean)
            mnuAdmin.Visible = value

        End Set

    End Property

    Public WriteOnly Property userMenu() As Boolean
        Set(value As Boolean)
            mnuuser.Visible = value
        End Set
    End Property
End Class

