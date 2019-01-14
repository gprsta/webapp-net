Imports System.Data
Imports System.Data.OleDb

Partial Class login
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim strConnection As String = ConfigurationManager.ConnectionStrings("AccesConnectionString").ConnectionString
        Dim strId_Pengguna As String
        Dim strPassword As String
        Dim strQuery As String = "Select * From Pengguna Where Id_Pengguna='" & Me.txtIdPgn.Text & "';"
        Dim myConnection As New OleDbConnection(strConnection)
        Dim myCommand As New OleDbCommand(strQuery, myConnection)
        myConnection.Open()
        Dim myDataReader As OleDbDataReader = myCommand.ExecuteReader()
        strId_Pengguna = ""
        strPassword = ""
        While myDataReader.Read()
            strId_Pengguna = myDataReader.GetString(0)
            strPassword = myDataReader.GetString(5)
        End While

        myDataReader.Close()
        myConnection.Close()
        If strId_Pengguna = "" Then
            MsgBox("Username Salah!!")
        Else
            If strPassword <> Me.txtPass.Text Then
                MsgBox("Password Anda Salah!")
            Else
                MsgBox("login Sukses")
            End If
        End If
    End Sub
End Class
