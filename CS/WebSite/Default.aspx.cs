using System;
using DevExpress.Web;
using DevExpress.Web.Data;

public partial class _Default : System.Web.UI.Page {
    protected void gv_RowUpdating(object sender, ASPxDataUpdatingEventArgs e) {
        // Note that data modifications are not allowed in online demos
        gv.CancelEdit();
        e.Cancel = true;
    }

    protected void gv_HtmlEditFormCreated(object sender, ASPxGridViewEditFormEventArgs e) {
        ASPxGridView gridView = (ASPxGridView)sender;
        ASPxGridViewTemplateReplacement editor;
        if(gridView.EditingRowVisibleIndex % 2 == 0)
            editor = (ASPxGridViewTemplateReplacement)gv.FindEditFormTemplateControl("UpdateBtn");
        else
            editor = (ASPxGridViewTemplateReplacement)gv.FindEditFormTemplateControl("CancelBtn");
        editor.Visible = false;
    }
}