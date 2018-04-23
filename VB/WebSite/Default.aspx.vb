Imports Microsoft.VisualBasic
Imports System
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.Data

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub gv_RowUpdating(ByVal sender As Object, ByVal e As ASPxDataUpdatingEventArgs)
		' Note that data modifications are not allowed in online demos
		gv.CancelEdit()
		e.Cancel = True
	End Sub

	Protected Sub gv_HtmlEditFormCreated(ByVal sender As Object, ByVal e As ASPxGridViewEditFormEventArgs)
		Dim gridView As ASPxGridView = CType(sender, ASPxGridView)
		Dim editor As ASPxGridViewTemplateReplacement
		If gridView.EditingRowVisibleIndex Mod 2 = 0 Then
			editor = CType(gv.FindEditFormTemplateControl("UpdateBtn"), ASPxGridViewTemplateReplacement)
		Else
			editor = CType(gv.FindEditFormTemplateControl("CancelBtn"), ASPxGridViewTemplateReplacement)
		End If
		editor.Visible = False
	End Sub
End Class