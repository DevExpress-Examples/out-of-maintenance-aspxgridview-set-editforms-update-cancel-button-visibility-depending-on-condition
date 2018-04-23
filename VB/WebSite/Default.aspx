<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v12.1, Version=12.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>How to set the visibility of ASPxGridView EditForm Update/Cancel buttons depending
		on particular conditions</title>
</head>
<body>
	<form id="form1" runat="server">
		<asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/NorthWind.mdb"
			SelectCommand="SELECT * FROM [Products]"></asp:AccessDataSource>
		<dx:ASPxGridView ID="gv" runat="server" AutoGenerateColumns="False" OnRowUpdating="gv_RowUpdating"
			OnHtmlEditFormCreated="gv_HtmlEditFormCreated" DataSourceID="ads" KeyFieldName="ProductID">
			<Templates>
				<EditForm>
					<dx:ASPxGridViewTemplateReplacement ID="Column" ReplacementType="EditFormEditors"
						runat="server" />
					<dx:ASPxGridViewTemplateReplacement ID="UpdateBtn" ReplacementType="EditFormUpdateButton"
						runat="server"></dx:ASPxGridViewTemplateReplacement>
					<dx:ASPxGridViewTemplateReplacement ID="CancelBtn" ReplacementType="EditFormCancelButton"
						runat="server"></dx:ASPxGridViewTemplateReplacement>
				</EditForm>
			</Templates>
			<Columns>
				<dx:GridViewCommandColumn VisibleIndex="0">
					<EditButton Visible="True">
					</EditButton>
				</dx:GridViewCommandColumn>
				<dx:GridViewDataTextColumn FieldName="ProductID" VisibleIndex="1"
					ReadOnly="True">
					<EditFormSettings Visible="False" />
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="SupplierID" VisibleIndex="3">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="4">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="5">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="UnitPrice" VisibleIndex="6">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="7">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="UnitsOnOrder" VisibleIndex="8">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataTextColumn FieldName="ReorderLevel" VisibleIndex="9">
				</dx:GridViewDataTextColumn>
				<dx:GridViewDataCheckColumn FieldName="Discontinued" VisibleIndex="10">
				</dx:GridViewDataCheckColumn>
				<dx:GridViewDataTextColumn FieldName="EAN13" VisibleIndex="11">
				</dx:GridViewDataTextColumn>
			</Columns>
		</dx:ASPxGridView>
	</form>
</body>
</html>