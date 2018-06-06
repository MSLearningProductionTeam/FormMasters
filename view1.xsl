<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:pc="http://schemas.microsoft.com/office/infopath/2007/PartnerControls" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:dfs="http://schemas.microsoft.com/office/infopath/2003/dataFormSolution" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2018-05-21T23:03:19" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" xmlns:tns="http://microsoft.com/webservices/SharePointPortalServer/UserProfileService" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:s1="http://microsoft.com/wsdl/types/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:x="urn:schemas-microsoft-com:office:excel" xmlns:xdExtension="http://schemas.microsoft.com/office/infopath/2003/xslt/extension" xmlns:xdXDocument="http://schemas.microsoft.com/office/infopath/2003/xslt/xDocument" xmlns:xdSolution="http://schemas.microsoft.com/office/infopath/2003/xslt/solution" xmlns:xdFormatting="http://schemas.microsoft.com/office/infopath/2003/xslt/formatting" xmlns:xdImage="http://schemas.microsoft.com/office/infopath/2003/xslt/xImage" xmlns:xdUtil="http://schemas.microsoft.com/office/infopath/2003/xslt/Util" xmlns:xdMath="http://schemas.microsoft.com/office/infopath/2003/xslt/Math" xmlns:xdDate="http://schemas.microsoft.com/office/infopath/2003/xslt/Date" xmlns:sig="http://www.w3.org/2000/09/xmldsig#" xmlns:xdSignatureProperties="http://schemas.microsoft.com/office/infopath/2003/SignatureProperties" xmlns:ipApp="http://schemas.microsoft.com/office/infopath/2006/XPathExtension/ipApp" xmlns:xdEnvironment="http://schemas.microsoft.com/office/infopath/2006/xslt/environment" xmlns:xdUser="http://schemas.microsoft.com/office/infopath/2006/xslt/User" xmlns:xdServerInfo="http://schemas.microsoft.com/office/infopath/2009/xslt/ServerInfo">
	<xsl:output method="html" indent="no"/>
	<xsl:template match="my:myFields">
		<html>
			<head>
				<meta content="text/html" http-equiv="Content-Type"></meta>
				<style controlStyle="controlStyle">@media screen 			{ 			BODY{margin-left:21px;background-position:21px 0px;} 			} 		BODY{color:windowtext;background-color:window;layout-grid:none;} 		.xdListItem {display:inline-block;width:100%;vertical-align:text-top;} 		.xdListBox,.xdComboBox{margin:1px;} 		.xdInlinePicture{margin:1px; BEHAVIOR: url(#default#urn::xdPicture) } 		.xdLinkedPicture{margin:1px; BEHAVIOR: url(#default#urn::xdPicture) url(#default#urn::controls/Binder) } 		.xdHyperlinkBox{word-wrap:break-word; text-overflow:ellipsis;overflow-x:hidden; OVERFLOW-Y: hidden; WHITE-SPACE:nowrap; display:inline-block;margin:1px;padding:5px;border: 1pt solid #dcdcdc;color:windowtext;BEHAVIOR: url(#default#urn::controls/Binder) url(#default#DataBindingUI)} 		.xdSection{border:1pt solid transparent ;margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;} 		.xdRepeatingSection{border:1pt solid transparent;margin:0px 0px 0px 0px;padding:0px 0px 0px 0px;} 		.xdMultiSelectList{margin:1px;display:inline-block; border:1pt solid #dcdcdc; padding:1px 1px 1px 5px; text-indent:0; color:windowtext; background-color:window; overflow:auto; behavior: url(#default#DataBindingUI) url(#default#urn::controls/Binder) url(#default#MultiSelectHelper) url(#default#ScrollableRegion);} 		.xdMultiSelectListItem{display:block;white-space:nowrap}		.xdMultiSelectFillIn{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;overflow:hidden;text-align:left;}		.xdBehavior_Formatting {BEHAVIOR: url(#default#urn::controls/Binder) url(#default#Formatting);} 	 .xdBehavior_FormattingNoBUI{BEHAVIOR: url(#default#CalPopup) url(#default#urn::controls/Binder) url(#default#Formatting);} 	.xdExpressionBox{margin: 1px;padding:1px;word-wrap: break-word;text-overflow: ellipsis;overflow-x:hidden;}.xdBehavior_GhostedText,.xdBehavior_GhostedTextNoBUI{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#TextField) url(#default#GhostedText);}	.xdBehavior_GTFormatting{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#Formatting) url(#default#GhostedText);}	.xdBehavior_GTFormattingNoBUI{BEHAVIOR: url(#default#CalPopup) url(#default#urn::controls/Binder) url(#default#Formatting) url(#default#GhostedText);}	.xdBehavior_Boolean{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#BooleanHelper);}	.xdBehavior_Select{BEHAVIOR: url(#default#urn::controls/Binder) url(#default#SelectHelper);}	.xdBehavior_ComboBox{BEHAVIOR: url(#default#ComboBox)} 	.xdBehavior_ComboBoxTextField{BEHAVIOR: url(#default#ComboBoxTextField);} 	.xdRepeatingTable{BORDER-TOP-STYLE: none; BORDER-RIGHT-STYLE: none; BORDER-LEFT-STYLE: none; BORDER-BOTTOM-STYLE: none; BORDER-COLLAPSE: collapse; WORD-WRAP: break-word;}.xdScrollableRegion{BEHAVIOR: url(#default#ScrollableRegion);} 		.xdLayoutRegion{display:inline-block;} 		.xdMaster{BEHAVIOR: url(#default#MasterHelper);} 		.xdActiveX{margin:1px; BEHAVIOR: url(#default#ActiveX);} 		.xdFileAttachment{display:inline-block;margin:1px;BEHAVIOR:url(#default#urn::xdFileAttachment);} 		.xdSharePointFileAttachment{display:inline-block;margin:2px;BEHAVIOR:url(#default#xdSharePointFileAttachment);} 		.xdAttachItem{display:inline-block;width:100%%;height:25px;margin:1px;BEHAVIOR:url(#default#xdSharePointFileAttachItem);} 		.xdSignatureLine{display:inline-block;margin:1px;background-color:transparent;border:1pt solid transparent;BEHAVIOR:url(#default#SignatureLine);} 		.xdHyperlinkBoxClickable{behavior: url(#default#HyperlinkBox)} 		.xdHyperlinkBoxButtonClickable{border-width:1px;border-style:outset;behavior: url(#default#HyperlinkBoxButton)} 		.xdPictureButton{background-color: transparent; padding: 0px; behavior: url(#default#PictureButton);} 		.xdPageBreak{display: none;}BODY{margin-right:21px;} 		.xdTextBoxRTL{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-align:right;word-wrap:normal;} 		.xdRichTextBoxRTL{display:inline-block;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow-x:hidden;word-wrap:break-word;text-overflow:ellipsis;text-align:right;font-weight:normal;font-style:normal;text-decoration:none;vertical-align:baseline;} 		.xdDTTextRTL{height:100%;width:100%;margin-left:22px;overflow:hidden;padding:0px;white-space:nowrap;} 		.xdDTButtonRTL{margin-right:-21px;height:17px;width:20px;behavior: url(#default#DTPicker);} 		.xdMultiSelectFillinRTL{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;overflow:hidden;text-align:right;}.xdTextBox{display:inline-block;white-space:nowrap;text-overflow:ellipsis;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-align:left;word-wrap:normal;} 		.xdRichTextBox{display:inline-block;;padding:1px;margin:1px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow-x:hidden;word-wrap:break-word;text-overflow:ellipsis;text-align:left;font-weight:normal;font-style:normal;text-decoration:none;vertical-align:baseline;} 		.xdDTPicker{;display:inline;margin:1px;margin-bottom: 2px;border: 1pt solid #dcdcdc;color:windowtext;background-color:window;overflow:hidden;text-indent:0; layout-grid: none} 		.xdDTText{height:100%;width:100%;margin-right:22px;overflow:hidden;padding:0px;white-space:nowrap;} 		.xdDTButton{margin-left:-21px;height:17px;width:20px;behavior: url(#default#DTPicker);} 		.xdRepeatingTable TD {VERTICAL-ALIGN: top;}</style>
				<style tableEditor="TableStyleRulesID">TABLE.xdLayout TD {
	BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none
}
TABLE.msoUcTable TD {
	BORDER-TOP: 1pt solid; BORDER-RIGHT: 1pt solid; BORDER-BOTTOM: 1pt solid; BORDER-LEFT: 1pt solid
}
TABLE {
	BEHAVIOR: url (#default#urn::tables/NDTable)
}
</style>
				<style languageStyle="languageStyle">BODY {
	FONT-SIZE: 10pt; FONT-FAMILY: Calibri
}
SELECT {
	FONT-SIZE: 10pt; FONT-FAMILY: Calibri
}
TABLE {
	FONT-SIZE: 10pt; FONT-FAMILY: Calibri; TEXT-TRANSFORM: none; FONT-WEIGHT: normal; COLOR: black; FONT-STYLE: normal
}
.optionalPlaceholder {
	FONT-SIZE: 9pt; TEXT-DECORATION: none; FONT-FAMILY: Calibri; FONT-WEIGHT: normal; COLOR: #333333; FONT-STYLE: normal; PADDING-LEFT: 20px; BEHAVIOR: url(#default#xOptional)
}
.langFont {
	FONT-SIZE: 10pt; FONT-FAMILY: Calibri; WIDTH: 150px
}
.defaultInDocUI {
	FONT-SIZE: 9pt; FONT-FAMILY: Calibri
}
.optionalPlaceholder {
	PADDING-RIGHT: 20px
}
</style>
				<style themeStyle="urn:office.microsoft.com:themeModernrose">TABLE {
	BORDER-TOP: medium none; BORDER-RIGHT: medium none; BORDER-COLLAPSE: collapse; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none
}
TD {
	BORDER-TOP-COLOR: #d8d8d8; BORDER-LEFT-COLOR: #d8d8d8; BORDER-BOTTOM-COLOR: #d8d8d8; BORDER-RIGHT-COLOR: #d8d8d8
}
TH {
	BORDER-TOP-COLOR: #000000; BORDER-LEFT-COLOR: #000000; COLOR: black; BORDER-BOTTOM-COLOR: #000000; BORDER-RIGHT-COLOR: #000000; BACKGROUND-COLOR: #f2f2f2
}
.xdTableHeader {
	COLOR: black; BACKGROUND-COLOR: #f2f2f2
}
.light1 {
	BACKGROUND-COLOR: #ffffff
}
.dark1 {
	BACKGROUND-COLOR: #000000
}
.light2 {
	BACKGROUND-COLOR: #f8f9fb
}
.dark2 {
	BACKGROUND-COLOR: #424c60
}
.accent1 {
	BACKGROUND-COLOR: #ff006c
}
.accent2 {
	BACKGROUND-COLOR: #014aed
}
.accent3 {
	BACKGROUND-COLOR: #00d05e
}
.accent4 {
	BACKGROUND-COLOR: #e9aa0d
}
.accent5 {
	BACKGROUND-COLOR: #3db2ff
}
.accent6 {
	BACKGROUND-COLOR: #7030a0
}
</style>
				<style tableStyle="Modern">TR.xdTitleRow {
	MIN-HEIGHT: 62px
}
TD.xdTitleCell {
	PADDING-BOTTOM: 6px; PADDING-TOP: 18px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND-COLOR: #ffffff; valign: bottom
}
TR.xdTitleRowWithHeading {
	MIN-HEIGHT: 61px
}
TD.xdTitleCellWithHeading {
	PADDING-BOTTOM: 6px; PADDING-TOP: 18px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND-COLOR: #ffffff; valign: bottom
}
TR.xdTitleRowWithSubHeading {
	MIN-HEIGHT: 59px
}
TD.xdTitleCellWithSubHeading {
	PADDING-BOTTOM: 4px; PADDING-TOP: 18px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND-COLOR: #ffffff; valign: bottom
}
TR.xdTitleRowWithOffsetBody {
	MIN-HEIGHT: 62px
}
TD.xdTitleCellWithOffsetBody {
	PADDING-BOTTOM: 6px; PADDING-TOP: 18px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND-COLOR: #ffffff; valign: bottom
}
TR.xdTitleHeadingRow {
	MIN-HEIGHT: 37px
}
TD.xdTitleHeadingCell {
	PADDING-BOTTOM: 12px; PADDING-TOP: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND-COLOR: #ffffff; valign: top
}
TR.xdTitleSubheadingRow {
	MIN-HEIGHT: 67px
}
TD.xdTitleSubheadingCell {
	PADDING-BOTTOM: 12px; PADDING-TOP: 0px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #ffffff; valign: top
}
TD.xdVerticalFill {
	BACKGROUND-COLOR: #ffffff
}
TD.xdTableContentCellWithVerticalOffset {
	PADDING-BOTTOM: 0px; PADDING-TOP: 12px; PADDING-LEFT: 85px; PADDING-RIGHT: 10px; BACKGROUND-COLOR: #ffffff
}
TR.xdTableContentRow {
	MIN-HEIGHT: 140px
}
TD.xdTableContentCell {
	PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; BACKGROUND-COLOR: #ffffff
}
TD.xdTableContentCellWithVerticalFill {
	PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 1px; PADDING-RIGHT: 1px; BACKGROUND-COLOR: #ffffff
}
TD.xdTableStyleOneCol {
	PADDING-BOTTOM: 6px; PADDING-TOP: 6px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px
}
TR.xdContentRowOneCol {
	MIN-HEIGHT: 45px; valign: center
}
TR.xdHeadingRow {
	MIN-HEIGHT: 38px
}
TD.xdHeadingCell {
	BORDER-BOTTOM: #014aed 1.5pt solid; PADDING-BOTTOM: 6px; PADDING-TOP: 6px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px; valign: top
}
TR.xdSubheadingRow {
	MIN-HEIGHT: 30px
}
TD.xdSubheadingCell {
	BORDER-BOTTOM: #008eed 1pt solid; PADDING-BOTTOM: 6px; PADDING-TOP: 6px; PADDING-LEFT: 22px; PADDING-RIGHT: 22px
}
TR.xdHeadingRowEmphasis {
	MIN-HEIGHT: 38px
}
TD.xdHeadingCellEmphasis {
	BORDER-BOTTOM: #014aed 1.5pt solid; PADDING-BOTTOM: 6px; PADDING-TOP: 6px; PADDING-LEFT: 16px; BORDER-LEFT: #014aed 6pt solid; PADDING-RIGHT: 22px; valign: top
}
TR.xdSubheadingRowEmphasis {
	MIN-HEIGHT: 30px
}
TD.xdSubheadingCellEmphasis {
	BORDER-BOTTOM: #008eed 1pt solid; PADDING-BOTTOM: 6px; PADDING-TOP: 6px; PADDING-LEFT: 16px; BORDER-LEFT: #014aed 6pt solid; PADDING-RIGHT: 22px
}
TR.xdTableLabelControlStackedRow {
	MIN-HEIGHT: 45px
}
TD.xdTableLabelControlStackedCellLabel {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 5px
}
TD.xdTableLabelControlStackedCellComponent {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px
}
TR.xdTableRow {
	MIN-HEIGHT: 30px
}
TD.xdTableCellLabel {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 22px; PADDING-RIGHT: 5px
}
TD.xdTableCellComponent {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px
}
TD.xdTableMiddleCell {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px
}
TR.xdTableEmphasisRow {
	MIN-HEIGHT: 30px
}
TD.xdTableEmphasisCellLabel {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 16px; BORDER-LEFT: #014aed 6pt solid; PADDING-RIGHT: 5px
}
TD.xdTableEmphasisCellComponent {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px
}
TD.xdTableMiddleCellEmphasis {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 5px
}
TR.xdTableOffsetRow {
	MIN-HEIGHT: 30px
}
TD.xdTableOffsetCellLabel {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 16px; BORDER-LEFT: #014aed 6pt solid; PADDING-RIGHT: 5px
}
TD.xdTableOffsetCellComponent {
	PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 5px; PADDING-RIGHT: 22px
}
P {
	FONT-SIZE: 11pt; MARGIN-TOP: 0px; COLOR: #262626
}
H1 {
	FONT-SIZE: 22pt; MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px; FONT-WEIGHT: normal; COLOR: #005f9e
}
H2 {
	FONT-SIZE: 15pt; MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px; FONT-WEIGHT: normal; COLOR: #262626
}
H3 {
	FONT-SIZE: 12pt; MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px; FONT-WEIGHT: bold; COLOR: #005f9e
}
H4 {
	FONT-SIZE: 11pt; MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px; FONT-WEIGHT: normal; COLOR: #262626
}
H5 {
	FONT-SIZE: 11pt; MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px; FONT-WEIGHT: bold; COLOR: #262626
}
H6 {
	FONT-SIZE: 10pt; MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px; FONT-WEIGHT: normal; COLOR: #262626
}
BODY {
	COLOR: black
}
</style>
			</head>
			<body style="BACKGROUND-COLOR: #f2f2f2">
				<div align="center">
					<table class="xdFormLayout" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 1369px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
						<colgroup>
							<col style="WIDTH: 684px"></col>
							<col style="WIDTH: 685px"></col>
						</colgroup>
						<tbody>
							<tr class="xdTitleRow">
								<td style="BORDER-TOP: #d8d8d8 1pt; BORDER-RIGHT: #d8d8d8 1pt; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8d8d8 1pt; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; BORDER-LEFT: #d8d8d8 1pt; PADDING-RIGHT: 0px; BACKGROUND-COLOR: #002060" class="xdTableContentCell">
									<div style="FONT-WEIGHT: normal" align="left">
										<font face="Segoe UI">
											<font style="FONT-SIZE: 16pt">
												<font style="FONT-SIZE: 16pt" color="#f6f6f6"></font>
												<font style="FONT-SIZE: 16pt">
													<strong/>
												</font>
												<font style="FONT-SIZE: 16pt"></font>
											</font>
											<font size="4">    </font>
											<font color="#ffffff">
												<font style="FONT-SIZE: 16pt" color="#f3f9ff">Virtual Help Desk</font>
												<font size="4">   <font color="#bdf871">|  </font>
												</font>
											</font>
											<font color="#ffffff" size="4">
												<font color="#f3f9ff">Windows &amp; Devices </font>    </font>
										</font>
									</div>
								</td>
								<td style="BORDER-TOP: #d8d8d8 1pt; BORDER-RIGHT: #d8d8d8 1pt; VERTICAL-ALIGN: top; BORDER-BOTTOM: #d8d8d8 1pt; PADDING-BOTTOM: 0px; PADDING-TOP: 0px; PADDING-LEFT: 0px; BORDER-LEFT: #d8d8d8 1pt; PADDING-RIGHT: 0px; BACKGROUND-COLOR: #002060" class="xdTableContentCell">
									<div align="right">
										<font style="FONT-SIZE: 16pt"> </font>
										<font size="4">  <font color="#bdf271" face="Segoe UI">|</font>
										</font>
										<font style="FONT-SIZE: 16pt">  </font>
									</div>
									<div align="right"> </div>
								</td>
							</tr>
							<tr class="xdTitleRow">
								<td vAlign="bottom" style="BORDER-TOP: #d8d8d8 1pt; BORDER-BOTTOM-COLOR: ; BACKGROUND-COLOR: #f8f9fb" class="xdTitleCell">
									<div/>
									<div/>
									<div><xsl:apply-templates select="." mode="_6"/>
									</div>
									<div><xsl:apply-templates select="my:NameIntro" mode="_8"/>
									</div>
									<div><xsl:apply-templates select="." mode="_7"/>
									</div>
								</td>
								<td style="BORDER-TOP: #d8d8d8 1pt; VERTICAL-ALIGN: top; BORDER-LEFT-COLOR: ; BORDER-BOTTOM-COLOR: ; BACKGROUND-COLOR: #f8f9fb" class="xdTitleCell">
									<font face="Segoe UI">
										<h1 align="right">
											<a href="https://microsoft.sharepoint.com/sites/Infopedia/Pages/LearningAndDevelopment_ProductionRequestsDashboard.aspx" xd:disableEditing="yes">
												<font color="#2a3540" size="2" face="Segoe UI">View my requests</font>
											</a>
											<font size="2">
												<font color="#2a3540"> </font>| <font face="Segoe UI">
													<font style="COLOR: #ffffa6" face="Segoe UI">
														<font face="Segoe UI">
															<font style="COLOR: #ffffa6" face="Segoe UI">
																<font color="#2a3540">
																	<a href="https://aka.ms/LearningProductionFeedback" xd:disableEditing="yes">Give Feedback</a>
																	<font size="3"></font>
																</font>
															</font>
														</font>
													</font>
												</font>
											</font>
										</h1>
										<div align="right"></div>
									</font>
								</td>
							</tr>
							<tr class="xdTableContentRow">
								<td vAlign="top" style="BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 0px; BACKGROUND-COLOR: #f8f9fb" class="xdTableContentCell">
									<h4 align="left">
										<font size="3" face="Segoe UI">  </font>
									</h4>
									<h4><xsl:apply-templates select="my:RequestPickerSection" mode="_11"/>
									</h4>
									<h4>
										<font size="3" face="Segoe UI"></font>
									</h4>
								</td>
								<td vAlign="top" style="BORDER-LEFT-COLOR: ; BACKGROUND-COLOR: #f8f9fb" class="xdTableContentCell">
									<h4> </h4>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="center">
					<font size="3" face="Segoe UI"></font>
				</div>
				<div align="center">
					<table class="xdFormLayout xdTableStyleFourCol" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 1370px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
						<colgroup>
							<col style="WIDTH: 1370px"></col>
						</colgroup>
						<tbody vAlign="top">
							<tr class="xdHeadingRow" style="MIN-HEIGHT: 4px">
								<td style="BORDER-RIGHT: #a6c2b2 1pt solid; BORDER-BOTTOM: #002060 6pt solid; BORDER-LEFT: #a6c2b2 1pt solid; BACKGROUND-COLOR: #005f9e" class="xdHeadingCell">
									<h2>
										<font size="1" face="Segoe UI">
											<hr style="BORDER-TOP: #542378 1pt solid; HEIGHT: 7px; BORDER-RIGHT: #542378 1pt solid; WIDTH: 1328px; BORDER-BOTTOM: #542378 1pt solid; BORDER-LEFT: #542378 1pt solid; BACKGROUND-COLOR: #0037b1" SIZE="7"></hr>
										</font>
									</h2>
								</td>
							</tr>
							<tr class="xdTableRow" style="MIN-HEIGHT: 30px">
								<td style="BORDER-TOP: #002060 6pt solid; BORDER-RIGHT: #568ea1 1pt solid; BORDER-BOTTOM: #568ea1 1pt solid; BORDER-LEFT: #568ea1 1pt solid; PADDING-RIGHT: 5px; BACKGROUND-COLOR: transparent" class="xdTableCellLabel">
									<h4><xsl:apply-templates select="my:AddNew" mode="_4"/>
									</h4>
									<div><xsl:apply-templates select="my:BOMbuilder" mode="_5"/>
									</div>
									<div> </div>
								</td>
							</tr>
							<tr class="xdTableRow" style="MIN-HEIGHT: 30px">
								<td style="BORDER-TOP: #568ea1 1pt solid; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 22px" class="xdTableCellLabel">
									<h4>
										<font size="3" face="Segoe UI"></font> </h4>
								</td>
							</tr>
							<tr class="xdTableRow" style="MIN-HEIGHT: 30px">
								<td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 22px" class="xdTableCellLabel">
									<h4>
										<font size="3" face="Segoe UI"></font> </h4>
								</td>
							</tr>
							<tr class="xdTableRow" style="MIN-HEIGHT: 60px">
								<td style="BORDER-TOP-COLOR: ; BORDER-BOTTOM-COLOR: ; BORDER-RIGHT-COLOR: ; PADDING-RIGHT: 22px" class="xdTableCellLabel">
									<h4>
										<font size="3" face="Segoe UI"></font> </h4>
									<h4> </h4>
									<div>
										<font size="3" face="Segoe UI"></font> </div>
									<div>
										<font size="3" face="Segoe UI"></font> </div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="center">
					<font size="3" face="Segoe UI"></font> </div>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="my:myFields" mode="_6">
		<div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; HEIGHT: 4px; BORDER-RIGHT: 0pt; WIDTH: 100%; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL126" xd:widgetIndex="0">
			<div><span title="" class="xdTextBox" hideFocus="1" xd:xctname="PlainText" xd:CtrlId="CTRL131" tabIndex="0" xd:disableEditing="yes" xd:binding="my:NameIntro/my:Hello" style="BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-BOTTOM: #dcdcdc 1pt; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: transparent">
					<xsl:value-of select="my:NameIntro/my:Hello"/>
				</span>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="my:NameIntro" mode="_8">
		<div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 100%; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL129" tabIndex="-1" xd:widgetIndex="0">
			<div><span title="" class="xdTextBox" hideFocus="1" xd:xctname="PlainText" xd:CtrlId="CTRL130" tabIndex="0" xd:disableEditing="yes" xd:binding="@my:Hello2" style="BORDER-TOP: #dcdcdc 1pt; BORDER-RIGHT: #dcdcdc 1pt; WIDTH: 100%; WHITE-SPACE: nowrap; BORDER-BOTTOM: #dcdcdc 1pt; BORDER-LEFT: #dcdcdc 1pt; BACKGROUND-COLOR: transparent">
					<xsl:value-of select="@my:Hello2"/>
				</span>
			</div>
			<div> </div>
		</div>
	</xsl:template>
	<xsl:template match="my:myFields" mode="_7">
		<div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; WIDTH: 100%; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL127" xd:widgetIndex="0">
			<div>
				<font face="Segoe UI">
					<font color="#2f2933">
						<font size="4">   W</font>
					</font>
					<font color="#2f2933" size="4">hat would you like assistance with today?</font>
				</font>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="my:RequestPickerSection" mode="_11">
		<xsl:if test="not((my:RequestType != &quot;&quot;))">
			<div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; HEIGHT: 112px; BORDER-RIGHT: 0pt; WIDTH: 595px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL135" tabIndex="-1" xd:widgetIndex="0" xd:caption_0="Rule 1">
				<div>
					<table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 594px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
						<colgroup>
							<col style="WIDTH: 91px"></col>
							<col style="WIDTH: 305px"></col>
							<col style="WIDTH: 198px"></col>
						</colgroup>
						<tbody vAlign="top">
							<tr>
								<td>
									<div align="right">
										<font color="#262626" size="3" face="Segoe UI">I want to: </font>
									</div>
								</td>
								<td>
									<h4><select title="" class="xdListBox xdBehavior_Select" size="3" xd:xctname="listbox" xd:CtrlId="CTRL136" tabIndex="0" xd:binding="my:RequestType" xd:boundProp="value" style="FONT-SIZE: small; HEIGHT: 152px; FONT-FAMILY: Segoe UI; WIDTH: 100%; COLOR: #3f3f3f">
											<xsl:attribute name="value">
												<xsl:value-of select="my:RequestType"/>
											</xsl:attribute>
											<option>
												<xsl:if test="my:RequestType=&quot;&quot;">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>
											</option>
											<option value="AddNewContent">
												<xsl:if test="my:RequestType=&quot;AddNewContent&quot;">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>add new content</option>
											<option value="DoSomethingNotListed">
												<xsl:if test="my:RequestType=&quot;DoSomethingNotListed&quot;">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>do something not listed here</option>
											<option value="UpdateExistingContent">
												<xsl:if test="my:RequestType=&quot;UpdateExistingContent&quot;">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>update existing content</option>
											<option value="RemoveContent">
												<xsl:if test="my:RequestType=&quot;RemoveContent&quot;">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>remove content</option>
											<option value="RequestMultipleItems">
												<xsl:if test="my:RequestType=&quot;RequestMultipleItems&quot;">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>request multiple items</option>
										</select>
									</h4>
								</td>
								<td>
									<div>
										<font style="FONT-SIZE: 11pt" color="#262626" face="Calibri"></font> </div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="my:AddNew" mode="_4">
		<xsl:if test="not((../my:RequestPickerSection/my:RequestType != &quot;AddNewContent&quot;))">
			<div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; HEIGHT: 464px; BORDER-RIGHT: 0pt; WIDTH: 1308px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt; BACKGROUND-COLOR: #f8f9fb" align="left" xd:xctname="Section" xd:CtrlId="CTRL90" tabIndex="-1" xd:widgetIndex="0" xd:caption_0="Rule 1">
				<div> </div>
				<div>
					<table class="xdFormLayout xdTableStyleFourCol" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 1302px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none">
						<colgroup>
							<col style="WIDTH: 25px"></col>
							<col style="WIDTH: 188px"></col>
							<col style="WIDTH: 19px"></col>
							<col style="WIDTH: 267px"></col>
							<col style="WIDTH: 233px"></col>
							<col style="WIDTH: 570px"></col>
						</colgroup>
						<tbody vAlign="top">
							<tr class="xdTableRow" style="MIN-HEIGHT: 35px">
								<td colSpan="3" style="BORDER-TOP: #d8efff 2.25pt solid; BORDER-RIGHT: #d8efff 2.25pt solid; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT: #d8efff 3pt solid; PADDING-RIGHT: 22px; BACKGROUND-COLOR: #002060" class="xdTableCellLabel">
									<h4>
										<font size="2" face="Segoe UI">
											<font color="#f8f9fb" size="3" face="Segoe UI">
												<strong><input title="" class="xdBehavior_Boolean" size="28" type="checkbox" value="" xd:xctname="CheckBox" xd:CtrlId="CTRL147" tabIndex="0" xd:binding="my:AddNewContentCheckBox" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="HEIGHT: 24px; WIDTH: 28px">
														<xsl:attribute name="xd:value">
															<xsl:value-of select="my:AddNewContentCheckBox"/>
														</xsl:attribute>
														<xsl:if test="my:AddNewContentCheckBox=&quot;true&quot;">
															<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
														</xsl:if>
													</input> Add new content</strong>
											</font>
										</font>
									</h4>
								</td>
								<td colSpan="3" style="BORDER-TOP: #d8efff 1pt; BORDER-RIGHT: #d8efff 1pt; BORDER-BOTTOM: #b1e0ff 2.25pt solid; BORDER-LEFT: #d8efff 2.25pt solid; PADDING-RIGHT: 22px" class="xdTableCellLabel">
									<div> </div>
								</td>
							</tr>
							<tr class="xdTableRow">
								<td colSpan="3" style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 1pt; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT: #d8efff 2.25pt solid; PADDING-RIGHT: 22px" class="xdTableCellLabel">
									<h4>
										<font color="#3f3f3f" face="Segoe UI">
											<font face="Segoe UI">
												<font color="#3f3f3f" size="1"></font>
											</font>
										</font> </h4>
									<div><xsl:apply-templates select="../my:ExampleSection" mode="_17"/>
									</div>
									<div><xsl:apply-templates select="../my:ExampleSection" mode="_18"/>
									</div>
								</td>
								<td colSpan="3" style="BORDER-TOP: #b1e0ff 2.25pt solid; BORDER-RIGHT: #b1e0ff 2.25pt solid; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT: #d8efff 1pt; PADDING-RIGHT: 22px" class="xdTableCellLabel">
									<div><xsl:apply-templates select="my:ImageExampleSection" mode="_13"/>
									</div>
								</td>
							</tr>
							<tr class="xdTableRow" style="MIN-HEIGHT: 4px">
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT: #d8efff 3pt solid; BACKGROUND-COLOR: #f8f9fb" class="xdTableCellLabel">
									<h4>
										<font color="#3f3f3f" size="2" face="Segoe UI"></font> </h4>
								</td>
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 2.25pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left">
										<font color="#3f3f3f" size="2" face="Segoe UI">
											<strong>Business Group</strong>
										</font>
									</h4>
								</td>
								<td colSpan="3" style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 1pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; PADDING-BOTTOM: 0px; PADDING-TOP: 4px; PADDING-LEFT: 4px; BORDER-LEFT: #d8efff 2.25pt solid; PADDING-RIGHT: 0px" class="xdTableMiddleCell">
									<div align="left">
										<font face="Segoe UI">
											<font color="#3f3f3f">Windows  </font><input title="" class="xdBehavior_Boolean" size="28" type="checkbox" value="on" xd:xctname="CheckBox" xd:CtrlId="CTRL105" tabIndex="0" xd:binding="../my:Request/my:WindowsBG" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-SIZE: x-small; BORDER-TOP: #d8efff 1pt solid; HEIGHT: 20px; BORDER-RIGHT: #d8efff 1pt solid; WIDTH: 20px; BORDER-BOTTOM: #d8efff 1pt solid; COLOR: #3f3f3f; BORDER-LEFT: #d8efff 1pt solid; MARGIN: 2px; BACKGROUND-COLOR: #d8efff">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="../my:Request/my:WindowsBG"/>
												</xsl:attribute>
												<xsl:if test="../my:Request/my:WindowsBG=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
											<font color="#3f3f3f">   |   </font>
										</font>
										<font face="Segoe UI">
											<font color="#3f3f3f">Devices  </font><input title="" class="xdBehavior_Boolean" type="checkbox" value="on" xd:xctname="CheckBox" xd:CtrlId="CTRL106" tabIndex="0" xd:binding="../my:Request/my:DevicesBG" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-SIZE: x-small; BORDER-TOP: #d8efff 1pt solid; HEIGHT: 20px; FONT-FAMILY: Segoe UI; BORDER-RIGHT: #d8efff 1pt solid; WIDTH: 20px; BORDER-BOTTOM: #d8efff 1pt solid; COLOR: #3f3f3f; BORDER-LEFT: #d8efff 1pt solid; MARGIN: 2px; BACKGROUND-COLOR: #e3d0f1">
												<xsl:attribute name="xd:value">
													<xsl:value-of select="../my:Request/my:DevicesBG"/>
												</xsl:attribute>
												<xsl:if test="../my:Request/my:DevicesBG=&quot;true&quot;">
													<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
												</xsl:if>
											</input>
										</font>
									</div>
								</td>
								<td rowSpan="7" style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 2.25pt solid; BORDER-BOTTOM: #d8efff 1pt; BORDER-LEFT: #d8efff 1pt solid; PADDING-RIGHT: 22px" class="xdTableCellLabel">
									<h4>
										<font color="#3f3f3f" size="2" face="Segoe UI">
											<strong>Additional Details</strong>
										</font>
									</h4>
									<h4><span title="" class="xdTextBox" hideFocus="1" xd:xctname="PlainText" xd:CtrlId="CTRL117" tabIndex="0" xd:binding="../my:Request/my:AdditionalDetails" xd:datafmt="&quot;string&quot;,&quot;plainMultiline&quot;" style="FONT-SIZE: x-small; WORD-WRAP: break-word; BORDER-TOP: #3db2ff 1pt solid; HEIGHT: 213px; FONT-FAMILY: Segoe UI; BORDER-RIGHT: #3db2ff 1pt solid; WIDTH: 423px; WHITE-SPACE: normal; OVERFLOW-X: auto; OVERFLOW-Y: auto; BORDER-BOTTOM: #3db2ff 1pt solid; COLOR: #3f3f3f; BORDER-LEFT: #3db2ff 1pt solid">
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(../my:Request/my:AdditionalDetails,&quot;string&quot;,&quot;plainMultiline&quot;)" disable-output-escaping="yes"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="../my:Request/my:AdditionalDetails" disable-output-escaping="yes"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
										<font color="#3f3f3f"></font>
									</h4>
								</td>
							</tr>
							<tr class="xdTableRow" style="MIN-HEIGHT: 4px">
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT: #d8efff 3pt solid; BORDER-RIGHT-COLOR: ; BACKGROUND-COLOR: #f8f9fb" class="xdTableCellLabel">
									<div>
										<font color="#3f3f3f" face="Segoe UI"></font> </div>
								</td>
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 2.25pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<div align="left">
										<font color="#3f3f3f" face="Segoe UI">
											<strong>Page URL</strong>
										</font>
									</div>
								</td>
								<td colSpan="3" style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 1pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; PADDING-TOP: 4px; PADDING-LEFT: 4px; BORDER-LEFT: #d8efff 2.25pt solid; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<div align="left"><span title="" class="xdTextBox" hideFocus="1" xd:xctname="PlainText" xd:CtrlId="CTRL107" tabIndex="0" xd:binding="../my:Request/my:PageURL" style="FONT-SIZE: x-small; FONT-FAMILY: Segoe UI; WIDTH: 100%; COLOR: #3f3f3f">
											<xsl:value-of select="../my:Request/my:PageURL"/>
										</span>
									</div>
								</td>
							</tr>
							<tr class="xdTableRow" style="MIN-HEIGHT: 4px">
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT: #d8efff 3pt solid; BORDER-RIGHT-COLOR: ; BACKGROUND-COLOR: #f8f9fb" class="xdTableCellLabel">
									<h4>
										<font color="#3f3f3f" size="2" face="Segoe UI"></font> </h4>
								</td>
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 2.25pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left">
										<font color="#3f3f3f" size="2" face="Segoe UI">
											<strong>File Name</strong>
										</font>
									</h4>
								</td>
								<td colSpan="3" style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 1pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; PADDING-TOP: 4px; PADDING-LEFT: 4px; BORDER-LEFT: #d8efff 2.25pt solid; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left"><span title="" class="xdTextBox" hideFocus="1" xd:xctname="PlainText" xd:CtrlId="CTRL108" tabIndex="0" xd:binding="../my:Request/my:FileName" style="FONT-SIZE: x-small; FONT-FAMILY: Segoe UI; WIDTH: 100%; COLOR: #3f3f3f">
											<xsl:value-of select="../my:Request/my:FileName"/>
										</span>
									</h4>
								</td>
							</tr>
							<tr class="xdTableRow" style="MIN-HEIGHT: 4px">
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT: #d8efff 3pt solid; BORDER-RIGHT-COLOR: ; BACKGROUND-COLOR: #f8f9fb" class="xdTableCellLabel">
									<h4>
										<font color="#3f3f3f" size="2" face="Segoe UI"></font> </h4>
								</td>
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 2.25pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left">
										<font color="#3f3f3f" size="2" face="Segoe UI">
											<strong>Document Title to Display</strong>
										</font>
									</h4>
								</td>
								<td colSpan="3" style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 1pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; PADDING-TOP: 4px; PADDING-LEFT: 4px; BORDER-LEFT: #d8efff 2.25pt solid; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left"><span title="" class="xdTextBox" hideFocus="1" xd:xctname="PlainText" xd:CtrlId="CTRL109" tabIndex="0" xd:binding="../my:Request/my:DocumentTitle" style="FONT-SIZE: x-small; FONT-FAMILY: Segoe UI; WIDTH: 100%; COLOR: #3f3f3f">
											<xsl:value-of select="../my:Request/my:DocumentTitle"/>
										</span>
									</h4>
								</td>
							</tr>
							<tr class="xdTableRow" style="MIN-HEIGHT: 37px">
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT: #d8efff 3pt solid; BORDER-RIGHT-COLOR: ; BACKGROUND-COLOR: #f8f9fb" class="xdTableCellLabel">
									<h4>
										<font color="#3f3f3f" size="2" face="Segoe UI"></font> </h4>
								</td>
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 2.25pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left">
										<font color="#3f3f3f" size="2" face="Segoe UI">
											<strong>Document Description</strong>
										</font>
									</h4>
								</td>
								<td colSpan="3" style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 1pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; PADDING-BOTTOM: 0px; PADDING-TOP: 4px; PADDING-LEFT: 4px; BORDER-LEFT: #d8efff 2.25pt solid; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left"><span title="" class="xdTextBox" hideFocus="1" xd:xctname="PlainText" xd:CtrlId="CTRL110" tabIndex="0" xd:binding="../my:Request/my:DocumentDescription" xd:datafmt="&quot;string&quot;,&quot;plainMultiline&quot;" style="FONT-SIZE: x-small; WORD-WRAP: break-word; HEIGHT: 64px; FONT-FAMILY: Segoe UI; WIDTH: 100%; WHITE-SPACE: normal; OVERFLOW-X: auto; OVERFLOW-Y: auto; COLOR: #3f3f3f">
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(../my:Request/my:DocumentDescription,&quot;string&quot;,&quot;plainMultiline&quot;)" disable-output-escaping="yes"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="../my:Request/my:DocumentDescription" disable-output-escaping="yes"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
									</h4>
								</td>
							</tr>
							<tr class="xdTableRow" style="MIN-HEIGHT: 4px">
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT: #d8efff 3pt solid; BORDER-RIGHT-COLOR: ; BACKGROUND-COLOR: #f8f9fb" class="xdTableCellLabel">
									<h4>
										<font color="#3f3f3f" size="2" face="Segoe UI"></font> </h4>
								</td>
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 2.25pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left">
										<font color="#3f3f3f" face="Segoe UI">
											<strong>
												<font size="2">Maximum Reach </font>
												<font size="1">(confidentiality)</font>
											</strong>
										</font>
									</h4>
								</td>
								<td colSpan="3" style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 1pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; PADDING-TOP: 4px; PADDING-LEFT: 4px; BORDER-LEFT: #d8efff 2.25pt solid; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left"><select title="" class="xdComboBox xdBehavior_Select" size="1" xd:xctname="dropdown" xd:CtrlId="CTRL111" tabIndex="0" xd:binding="../my:Request/my:Confidentiality" xd:boundProp="value" style="FONT-SIZE: x-small; FONT-FAMILY: Segoe UI; WIDTH: 273px; COLOR: #3f3f3f">
											<xsl:attribute name="value">
												<xsl:value-of select="../my:Request/my:Confidentiality"/>
											</xsl:attribute>
											<option value="">
												<xsl:if test="../my:Request/my:Confidentiality=&quot;&quot;">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>Select...</option>
										</select>
									</h4>
								</td>
							</tr>
							<tr class="xdTableRow" style="MIN-HEIGHT: 17px">
								<td rowSpan="2" style="BORDER-TOP: #d8efff 1pt solid; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT: #d8efff 3pt solid; BORDER-RIGHT-COLOR: ; BACKGROUND-COLOR: #f8f9fb" class="xdTableCellLabel">
									<h4>
										<font color="#3f3f3f" size="2" face="Segoe UI"></font> </h4>
								</td>
								<td rowSpan="2" style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 2.25pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left">
										<font color="#3f3f3f" size="2" face="Segoe UI">
											<strong>FTE Content Owner</strong>
										</font>
									</h4>
								</td>
								<td colSpan="2" rowSpan="2" style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 2.25pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; PADDING-TOP: 4px; PADDING-LEFT: 4px; BORDER-LEFT: #d8efff 2.25pt solid; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left">
										<font color="#3f3f3f" size="2" face="Segoe UI">Owner</font>
									</h4>
									<h4 align="left">
										<object class="xdActiveX" hideFocus="1" style="FONT-SIZE: x-small; HEIGHT: 22px; FONT-FAMILY: Segoe UI; WIDTH: 100%; COLOR: #3f3f3f" width="316" height="22" tabIndex="0" xd:SharePointGroup="0" xd:SearchPeopleOnly="true" xd:AllowMultiple="false" xd:boundProp="xd:inline" xd:bindingProperty="Value" xd:bindingType="xmlNode" xd:server="http://" xd:CtrlId="CTRL112" xd:xctname="{{61e40d31-993d-4777-8fa0-19ca59b6d0bb}}" tabStop="true" classid="clsid:61e40d31-993d-4777-8fa0-19ca59b6d0bb" contentEditable="false" xd:binding="../my:Request/my:ContentOwner">
											<xsl:if test="function-available('xdImage:getImageUrl')">
												<xsl:attribute name="src"><xsl:value-of select="xdImage:getImageUrl(../my:Request/my:ContentOwner)"/></xsl:attribute>
											</xsl:if>
											<param NAME="ButtonFont" VALUE="Segoe UI,10,0,400,0,0,0"/>
											<param NAME="ButtonText" VALUE=""/>
											<param NAME="DisplayNameXPath" VALUE="pc:DisplayName"/>
											<param NAME="ObjectIdXPath" VALUE="pc:AccountId"/>
											<param NAME="ObjectTypeXPath" VALUE="pc:AccountType"/>
											<param NAME="SiteUrlXPath" VALUE="/Context/@siteUrl"/>
											<param NAME="SiteUrlDataSource" VALUE="Context"/>
											<param NAME="NewNodeTemplate" VALUE="&lt;pc:Person xmlns:pc=&quot;http://schemas.microsoft.com/office/infopath/2007/PartnerControls&quot;&gt;&#xA;	&lt;pc:DisplayName&gt;&lt;/pc:DisplayName&gt;&#xA;	&lt;pc:AccountId&gt;&lt;/pc:AccountId&gt;&#xA;	&lt;pc:AccountType&gt;&lt;/pc:AccountType&gt;&#xA;&lt;/pc:Person&gt;"/>
											<param NAME="BackgroundColor" VALUE="2147483653"/>
											<param NAME="MaxLines" VALUE="4"/>
											<param NAME="Direction" VALUE="0"/>
										</object>
									</h4>
								</td>
								<td rowSpan="2" style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 1pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT: #d8efff 2.25pt solid" class="xdTableCellLabel">
									<h4 align="left">
										<font color="#3f3f3f" size="2" face="Segoe UI">Co-Owner (optional)</font>
									</h4>
									<h4 align="left">
										<object class="xdActiveX" hideFocus="1" style="FONT-SIZE: x-small; HEIGHT: 22px; FONT-FAMILY: Segoe UI; WIDTH: 178px; COLOR: #3f3f3f" width="251" height="22" tabIndex="0" tabStop="true" xd:xctname="{{61e40d31-993d-4777-8fa0-19ca59b6d0bb}}" xd:CtrlId="CTRL113" xd:server="http://" xd:bindingType="xmlNode" xd:bindingProperty="Value" xd:boundProp="xd:inline" xd:AllowMultiple="false" xd:SearchPeopleOnly="true" xd:SharePointGroup="0" classid="clsid:61e40d31-993d-4777-8fa0-19ca59b6d0bb" contentEditable="false" xd:binding="../my:Request/my:ContentCoOwner">
											<xsl:if test="function-available('xdImage:getImageUrl')">
												<xsl:attribute name="src"><xsl:value-of select="xdImage:getImageUrl(../my:Request/my:ContentCoOwner)"/></xsl:attribute>
											</xsl:if>
											<param NAME="ButtonFont" VALUE="Segoe UI,10,0,400,0,0,0"/>
											<param NAME="ButtonText" VALUE=""/>
											<param NAME="DisplayNameXPath" VALUE="pc:DisplayName"/>
											<param NAME="ObjectIdXPath" VALUE="pc:AccountId"/>
											<param NAME="ObjectTypeXPath" VALUE="pc:AccountType"/>
											<param NAME="SiteUrlXPath" VALUE="/Context/@siteUrl"/>
											<param NAME="SiteUrlDataSource" VALUE="Context"/>
											<param NAME="NewNodeTemplate" VALUE="&lt;pc:Person xmlns:pc=&quot;http://schemas.microsoft.com/office/infopath/2007/PartnerControls&quot;&gt;&#xA;	&lt;pc:DisplayName&gt;&lt;/pc:DisplayName&gt;&#xA;	&lt;pc:AccountId&gt;&lt;/pc:AccountId&gt;&#xA;	&lt;pc:AccountType&gt;&lt;/pc:AccountType&gt;&#xA;&lt;/pc:Person&gt;"/>
											<param NAME="BackgroundColor" VALUE="2147483653"/>
											<param NAME="MaxLines" VALUE="4"/>
											<param NAME="Direction" VALUE="0"/>
										</object>
									</h4>
								</td>
							</tr>
							<tr style="MIN-HEIGHT: 4px">
								<td rowSpan="5" style="BORDER-TOP: #d8efff 1pt; BORDER-RIGHT: #d8efff 1pt solid; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT: #d8efff 1pt solid; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<font color="#3f3f3f" size="2" face="Segoe UI">
										<strong>
											<h4 align="left"> </h4>
										</strong>
									</font>
								</td>
							</tr>
							<tr class="xdTableRow" style="MIN-HEIGHT: 19px">
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT: #d8efff 3pt solid; BORDER-RIGHT-COLOR: ; BACKGROUND-COLOR: #f8f9fb" class="xdTableCellLabel">
									<h4>
										<font color="#3f3f3f" size="2" face="Segoe UI"></font> </h4>
								</td>
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 2.25pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left">
										<font color="#3f3f3f" size="2" face="Segoe UI">
											<strong>Source File Location</strong>
										</font>
									</h4>
								</td>
								<td colSpan="3" style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 1pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt; PADDING-TOP: 4px; PADDING-LEFT: 4px; BORDER-LEFT: #d8efff 2.25pt solid; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left"><span title="" class="xdTextBox" hideFocus="1" xd:xctname="PlainText" xd:CtrlId="CTRL114" tabIndex="0" xd:binding="../my:Request/my:SourceFileLocation" style="FONT-SIZE: x-small; FONT-FAMILY: Segoe UI; WIDTH: 100%; COLOR: #3f3f3f">
											<xsl:value-of select="../my:Request/my:SourceFileLocation"/>
										</span>
									</h4>
								</td>
							</tr>
							<tr class="xdTableRow" style="MIN-HEIGHT: 23px">
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT: #d8efff 3pt solid; BORDER-RIGHT-COLOR: ; BACKGROUND-COLOR: #f8f9fb" class="xdTableCellLabel">
									<h4>
										<font color="#3f3f3f" size="2" face="Segoe UI"></font> </h4>
								</td>
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 2.25pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left">
										<font color="#3f3f3f" size="2" face="Segoe UI">
											<strong>Attachments</strong>
										</font>
									</h4>
								</td>
								<td colSpan="3" style="BORDER-TOP: #d8efff 1pt; BORDER-RIGHT: #d8efff 1pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; PADDING-TOP: 4px; PADDING-LEFT: 4px; BORDER-LEFT: #d8efff 2.25pt solid; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left"></h4>
									<div align="left">
										<table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 512px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL156" xd:widgetIndex="0">
											<colgroup>
												<col style="WIDTH: 512px"></col>
											</colgroup><tbody xd:xctname="RepeatingTable">
												<xsl:for-each select="my:AdditionalAttachmentsGroup/my:AdditionalFileAttachGroup">
													<tr style="MIN-HEIGHT: 22px">
														<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: medium none; BORDER-BOTTOM: #d8efff 1pt solid; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: medium none; PADDING-RIGHT: 5px">
															<h4 align="left"><span class="xdFileAttachment" hideFocus="1" style="HEIGHT: 31px; WIDTH: 159px" xd:xctname="FileAttachment" xd:CtrlId="CTRL162" tabIndex="0" xd:binding="my:FileAttach2" xd:boundProp="xd:inline" tabStop="true">
																	<xsl:if test="function-available('xdImage:getImageUrl')">
																		<xsl:attribute name="src"><xsl:value-of select="xdImage:getImageUrl(my:FileAttach2)"/></xsl:attribute>
																	</xsl:if>
																</span>
															</h4>
														</td>
													</tr>
												</xsl:for-each>
											</tbody>
										</table>
										<div class="optionalPlaceholder" xd:xmlToEdit="group17_141" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 512px">Add more attachments</div>
									</div>
									<div align="left"> </div>
								</td>
							</tr>
							<tr class="xdTableRow" style="MIN-HEIGHT: 28px">
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT: #d8efff 3pt solid; BORDER-RIGHT-COLOR: ; BACKGROUND-COLOR: #f8f9fb" class="xdTableCellLabel">
									<h4>
										<font color="#3f3f3f" size="2" face="Segoe UI"></font> </h4>
								</td>
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 2.25pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT-COLOR: ; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left">
										<font color="#3f3f3f" size="2" face="Segoe UI">
											<strong>Requested Publish Date</strong>
										</font>
									</h4>
								</td>
								<td colSpan="3" style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 1pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; PADDING-TOP: 4px; PADDING-LEFT: 4px; BORDER-LEFT: #d8efff 2.25pt solid; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left">
										<div title="" class="xdDTPicker" style="FONT-SIZE: x-small; FONT-FAMILY: Segoe UI; WIDTH: 225px; COLOR: #3f3f3f" noWrap="1" xd:xctname="DTPicker" xd:CtrlId="CTRL116"><span class="xdDTText xdBehavior_FormattingNoBUI" hideFocus="1" contentEditable="true" xd:xctname="DTPicker_DTText" tabIndex="0" xd:binding="../my:Request/my:RequestedPublishDate" xd:boundProp="xd:num" xd:datafmt="&quot;date&quot;,&quot;dateFormat:Short Date;&quot;" xd:innerCtrl="_DTText">
												<xsl:attribute name="xd:num">
													<xsl:value-of select="../my:Request/my:RequestedPublishDate"/>
												</xsl:attribute>
												<xsl:choose>
													<xsl:when test="function-available('xdFormatting:formatString')">
														<xsl:value-of select="xdFormatting:formatString(../my:Request/my:RequestedPublishDate,&quot;date&quot;,&quot;dateFormat:Short Date;&quot;)"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="../my:Request/my:RequestedPublishDate"/>
													</xsl:otherwise>
												</xsl:choose>
											</span>
											<button class="xdDTButton" xd:xctname="DTPicker_DTButton" xd:innerCtrl="_DTButton" tabIndex="0">
												<img src="res://infopath.exe/calendar.gif" Linked="true"/>
											</button>
										</div>
									</h4>
								</td>
							</tr>
							<tr class="xdTableRow" style="MIN-HEIGHT: 67px">
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 1pt; BORDER-BOTTOM: #d8efff 1pt solid; BORDER-LEFT: #d8efff 3pt solid; BACKGROUND-COLOR: #f8f9fb" class="xdTableCellLabel">
									<h4>
										<font color="#3f3f3f" size="2" face="Segoe UI"></font> </h4>
								</td>
								<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 1pt; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt solid; PADDING-BOTTOM: 4px; PADDING-TOP: 4px; PADDING-LEFT: 0px; BORDER-LEFT: #d8efff 1pt; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left">
										<font color="#3f3f3f" size="2" face="Segoe UI">
											<strong>+ Add more Content +</strong>
										</font>
									</h4>
									<div align="left"><xsl:apply-templates select="my:AddMoreContentSection" mode="_9"/>
									</div>
									<div align="left">
										<font color="#3f3f3f" size="2">
											<strong/>
										</font>
									</div>
								</td>
								<td colSpan="3" style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 1pt solid; VERTICAL-ALIGN: middle; BORDER-BOTTOM: #d8efff 1pt; PADDING-TOP: 4px; PADDING-LEFT: 4px; BORDER-LEFT: #d8efff 1pt; PADDING-RIGHT: 0px" class="xdTableCellLabel">
									<h4 align="left">
										<font color="#3f3f3f" size="2"><input title="" class="langFont" style="BORDER-TOP: #8ad0fe 1pt solid; HEIGHT: 34px; FONT-FAMILY: Segoe UI; BORDER-RIGHT: #8ad0fe 1pt solid; WIDTH: 230px; BORDER-BOTTOM: #8ad0fe 1pt solid; BORDER-LEFT: #8ad0fe 1pt solid; MARGIN: 1px; BACKGROUND-COLOR: #d8efff" size="29" type="button" value="Add more content" xd:xctname="Button" xd:CtrlId="CTRL133_5" tabIndex="0"/>
										</font>
									</h4>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div>
					<font color="#3f3f3f"></font>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="my:ExampleSection" mode="_17">
		<xsl:if test="not((my:ExampleYesNo = string(true())))">
			<div title="" class="xdSection xdRepeating" style="BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt; MARGIN: auto auto 0px" align="left" xd:xctname="Section" xd:CtrlId="CTRL157" tabIndex="-1" xd:widgetIndex="0" xd:caption_0="Rule 1">
				<div>
					<font color="#3f3f3f" size="2" face="Segoe UI">
						<font size="3" face="Segoe UI">
							<font color="#3f3f3f"><input title="" class="langFont" style="BORDER-TOP: #8ad0fe 1pt solid; HEIGHT: 34px; FONT-FAMILY: Segoe UI; BORDER-RIGHT: #8ad0fe 1pt solid; WIDTH: 179px; BORDER-BOTTOM: #8ad0fe 1pt solid; BORDER-LEFT: #8ad0fe 1pt solid; MARGIN: 1px; BACKGROUND-COLOR: #d8efff" size="29" type="button" value="show example" xd:xctname="Button" xd:CtrlId="CTRL141" tabIndex="0"/>
							</font>
						</font>
					</font>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="my:ExampleSection" mode="_18">
		<xsl:if test="not((my:ExampleYesNo = string(false())))">
			<div title="" class="xdSection xdRepeating" style="BORDER-TOP: 0pt; BORDER-RIGHT: 0pt; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt; MARGIN: auto auto 0px" align="left" xd:xctname="Section" xd:CtrlId="CTRL160" tabIndex="-1" xd:widgetIndex="0" xd:caption_0="Rule 1">
				<div>
					<font color="#3f3f3f" size="2" face="Segoe UI">
						<font size="3" face="Segoe UI">
							<font color="#3f3f3f"><input title="" class="langFont" style="BORDER-TOP: #8ad0fe 1pt solid; HEIGHT: 34px; FONT-FAMILY: Segoe UI; BORDER-RIGHT: #8ad0fe 1pt solid; WIDTH: 179px; BORDER-BOTTOM: #8ad0fe 1pt solid; BORDER-LEFT: #8ad0fe 1pt solid; MARGIN: 1px; BACKGROUND-COLOR: #d8efff" size="29" type="button" value="hide example" xd:xctname="Button" xd:CtrlId="CTRL161" tabIndex="0"/>
							</font>
						</font>
					</font>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="my:ImageExampleSection" mode="_13">
		<xsl:if test="not((../../my:ExampleSection/my:ExampleYesNo = string(false())))">
			<div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; HEIGHT: 270px; BORDER-RIGHT: 0pt; WIDTH: 959px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL140" tabIndex="-1" xd:widgetIndex="0" xd:caption_0="Rule 1">
				<div> </div>
				<div>
					<table class="xdLayout" style="WORD-WRAP: break-word; BORDER-TOP: medium none; BORDER-RIGHT: medium none; WIDTH: 958px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM: medium none; BORDER-LEFT: medium none" borderColor="buttontext" border="1">
						<colgroup>
							<col style="WIDTH: 412px"></col>
							<col style="WIDTH: 546px"></col>
						</colgroup>
						<tbody vAlign="top">
							<tr>
								<td style="BORDER-TOP: #b1e0ff 1pt solid; BORDER-BOTTOM: #b1e0ff 1pt solid; BORDER-LEFT: #b1e0ff 1pt solid; BACKGROUND-COLOR: #ffffff">
									<div>
										<font size="2" face="Calibri">
											<img style="HEIGHT: 236px; WIDTH: 380px" src="FCD3F551.png"/>
										</font>
									</div>
								</td>
								<td style="BORDER-TOP: #b1e0ff 1pt solid; BORDER-RIGHT: #b1e0ff 1pt solid; BORDER-BOTTOM: #b1e0ff 1pt solid; BACKGROUND-COLOR: #ffffff">
									<div>
										<font size="4" face="Segoe UI">REQUIRED INFORMATION:</font>
									</div>
									<ul style="MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px" type="disc">
										<li>
											<font size="4" face="Segoe UI">Place to download the file from</font>
										</li>
										<li>
											<font size="4" face="Segoe UI">Page to place the file on</font>
										</li>
										<li>
											<font size="4" face="Segoe UI">Actual file name</font>
										</li>
										<li>
											<font size="4" face="Segoe UI">Document title to display</font>
										</li>
										<li>
											<font size="4" face="Segoe UI">Description of Document</font>
										</li>
										<li>
											<font size="4" face="Segoe UI">FTE Owner name</font>
										</li>
										<li>
											<font size="4" face="Segoe UI">Confidentiality</font>
										</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="my:AddMoreContentSection" mode="_9">
		<xsl:if test="not((my:MoreContent = string(false())))">
			<div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; HEIGHT: 33px; BORDER-RIGHT: 0pt; WIDTH: 78px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL134" tabIndex="-1" xd:widgetIndex="0" xd:caption_0="Rule 1">
				<div>            <input title="" class="xdBehavior_Boolean" size="28" type="checkbox" value="" xd:xctname="CheckBox" xd:CtrlId="CTRL120" tabIndex="0" xd:binding="my:MoreContent" xd:boundProp="xd:value" xd:offValue="false" xd:onValue="true" style="FONT-SIZE: x-small; BORDER-TOP: #f2f2f2 1pt solid; HEIGHT: 31px; FONT-FAMILY: Segoe UI; BORDER-RIGHT: #f2f2f2 1pt solid; WIDTH: 37px; BORDER-BOTTOM: #f2f2f2 1pt solid; FONT-WEIGHT: bold; COLOR: #3f3f3f; BORDER-LEFT: #f2f2f2 1pt solid; BACKGROUND-COLOR: transparent">
						<xsl:attribute name="xd:value">
							<xsl:value-of select="my:MoreContent"/>
						</xsl:attribute>
						<xsl:if test="my:MoreContent=&quot;true&quot;">
							<xsl:attribute name="CHECKED">CHECKED</xsl:attribute>
						</xsl:if>
					</input>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="my:BOMbuilder" mode="_5">
		<xsl:if test="not((../my:AddNew/my:AddMoreContentSection/my:MoreContent = string(false())))">
			<div title="" class="xdSection xdRepeating" style="MARGIN-BOTTOM: 0px; BORDER-TOP: 0pt; HEIGHT: 172px; BORDER-RIGHT: 0pt; WIDTH: 1344px; BORDER-BOTTOM: 0pt; BORDER-LEFT: 0pt" align="left" xd:xctname="Section" xd:CtrlId="CTRL122" tabIndex="-1" xd:widgetIndex="0" xd:caption_0="Rule 1">
				<div>
					<table title="" class="xdRepeatingTable msoUcTable" style="BORDER-TOP-STYLE: none; WORD-WRAP: break-word; BORDER-LEFT-STYLE: none; WIDTH: 1341px; BORDER-COLLAPSE: collapse; TABLE-LAYOUT: fixed; BORDER-BOTTOM-STYLE: none; BORDER-RIGHT-STYLE: none" border="1" xd:CtrlId="CTRL45" xd:widgetIndex="0">
						<colgroup>
							<col style="WIDTH: 211px"></col>
							<col style="WIDTH: 263px"></col>
							<col style="WIDTH: 269px"></col>
							<col style="WIDTH: 247px"></col>
							<col style="WIDTH: 150px"></col>
							<col style="WIDTH: 194px"></col>
							<col style="WIDTH: 7px"></col>
						</colgroup>
						<tbody class="xdTableHeader">
							<tr>
								<td style="BORDER-RIGHT: #dce8ec 1pt; BORDER-BOTTOM: #d8efff 1pt solid; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: #dce8ec 1pt solid; PADDING-RIGHT: 5px; BACKGROUND-COLOR: #002060">
									<h5 style="FONT-WEIGHT: normal">
										<font color="#f7f8f4" size="3" face="Segoe UI">File Name</font>
									</h5>
								</td>
								<td style="BORDER-RIGHT: #dce8ec 1pt; BORDER-BOTTOM: #d8efff 1pt solid; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: #dce8ec 1pt; PADDING-RIGHT: 5px; BACKGROUND-COLOR: #002060">
									<div>
										<h5 style="FONT-WEIGHT: normal">
											<font color="#f7f8f4" size="3" face="Segoe UI">Document Title</font>
										</h5>
									</div>
								</td>
								<td style="BORDER-RIGHT: #dce8ec 1pt; BORDER-BOTTOM: #d8efff 1pt solid; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: #dce8ec 1pt; PADDING-RIGHT: 5px; BACKGROUND-COLOR: #002060">
									<div>
										<h5 style="FONT-WEIGHT: normal">
											<font color="#f7f8f4" size="3" face="Segoe UI">Document Description</font>
										</h5>
									</div>
								</td>
								<td style="BORDER-RIGHT: #dce8ec 1pt; BORDER-BOTTOM: #d8efff 1pt solid; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: #dce8ec 1pt; PADDING-RIGHT: 5px; BACKGROUND-COLOR: #002060">
									<div>
										<h5 style="FONT-WEIGHT: normal">
											<font color="#f7f8f4" size="3" face="Segoe UI">Confidentiality</font>
										</h5>
									</div>
								</td>
								<td style="BORDER-RIGHT: #dce8ec 1pt; BORDER-BOTTOM: #d8efff 1pt solid; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: #dce8ec 1pt; PADDING-RIGHT: 5px; BACKGROUND-COLOR: #002060">
									<div>
										<h5 style="FONT-WEIGHT: normal">
											<font color="#f7f8f4" size="3" face="Segoe UI">Content Owner</font>
										</h5>
									</div>
								</td>
								<td style="BORDER-RIGHT: #dce8ec 1pt; BORDER-BOTTOM: #d8efff 1pt solid; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: #dce8ec 1pt; PADDING-RIGHT: 5px; BACKGROUND-COLOR: #002060">
									<div>
										<h5 style="FONT-WEIGHT: normal">
											<font color="#f7f8f4" size="3" face="Segoe UI">Additional Details</font>
										</h5>
									</div>
								</td>
								<td style="BORDER-RIGHT: #dce8ec 1pt solid; BORDER-BOTTOM: #dce8ec 1pt solid; PADDING-BOTTOM: 1px; TEXT-ALIGN: center; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: #dce8ec 1pt; PADDING-RIGHT: 5px; BACKGROUND-COLOR: #002060">
									<div>
										<h5 style="FONT-WEIGHT: normal">
											<font color="#f7f8f4" size="3" face="Segoe UI"></font> </h5>
									</div>
								</td>
							</tr>
						</tbody><tbody xd:xctname="RepeatingTable">
							<xsl:for-each select="my:AdditionalRequests/my:AdditionalItems">
								<tr style="MIN-HEIGHT: 53px">
									<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #dce8ec 1pt; BORDER-BOTTOM: #d8efff 2.25pt solid; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: #d8efff 2.25pt solid; PADDING-RIGHT: 5px"><span title="" class="xdTextBox" hideFocus="1" xd:xctname="PlainText" xd:CtrlId="CTRL58" tabIndex="0" xd:binding="my:PageUrl2" xd:datafmt="&quot;string&quot;,&quot;plainMultiline&quot;" style="FONT-SIZE: x-small; WORD-WRAP: break-word; FONT-FAMILY: Segoe UI; WIDTH: 100%; WHITE-SPACE: normal; OVERFLOW-X: auto; OVERFLOW-Y: auto">
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(my:PageUrl2,&quot;string&quot;,&quot;plainMultiline&quot;)" disable-output-escaping="yes"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="my:PageUrl2" disable-output-escaping="yes"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
									</td>
									<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #dce8ec 1pt; BORDER-BOTTOM: #d8efff 2.25pt solid; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: #dce8ec 1pt; PADDING-RIGHT: 5px"><span title="" class="xdTextBox" hideFocus="1" xd:xctname="PlainText" xd:CtrlId="CTRL59" tabIndex="0" xd:binding="my:DocumentTitle2" xd:datafmt="&quot;string&quot;,&quot;plainMultiline&quot;" style="FONT-SIZE: x-small; WORD-WRAP: break-word; FONT-FAMILY: Segoe UI; WIDTH: 100%; WHITE-SPACE: normal; OVERFLOW-X: auto; OVERFLOW-Y: auto">
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(my:DocumentTitle2,&quot;string&quot;,&quot;plainMultiline&quot;)" disable-output-escaping="yes"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="my:DocumentTitle2" disable-output-escaping="yes"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
									</td>
									<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #dce8ec 1pt; BORDER-BOTTOM: #d8efff 2.25pt solid; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: #dce8ec 1pt; PADDING-RIGHT: 5px"><span title="" class="xdTextBox" hideFocus="1" xd:xctname="PlainText" xd:CtrlId="CTRL60" tabIndex="0" xd:binding="my:DocumentDescription2" xd:datafmt="&quot;string&quot;,&quot;plainMultiline&quot;" style="FONT-SIZE: x-small; WORD-WRAP: break-word; HEIGHT: 85px; FONT-FAMILY: Segoe UI; WIDTH: 100%; WHITE-SPACE: normal; OVERFLOW-X: auto; OVERFLOW-Y: auto">
											<xsl:choose>
												<xsl:when test="function-available('xdFormatting:formatString')">
													<xsl:value-of select="xdFormatting:formatString(my:DocumentDescription2,&quot;string&quot;,&quot;plainMultiline&quot;)" disable-output-escaping="yes"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="my:DocumentDescription2" disable-output-escaping="yes"/>
												</xsl:otherwise>
											</xsl:choose>
										</span>
									</td>
									<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #dce8ec 1pt; BORDER-BOTTOM: #d8efff 2.25pt solid; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: #dce8ec 1pt; PADDING-RIGHT: 5px"><select title="" class="xdComboBox xdBehavior_Select" size="1" xd:xctname="dropdown" xd:CtrlId="CTRL123" tabIndex="0" xd:binding="my:Confidentiality2" xd:boundProp="value" style="FONT-SIZE: x-small; FONT-FAMILY: Segoe UI; WIDTH: 100%">
											<xsl:attribute name="value">
												<xsl:value-of select="my:Confidentiality2"/>
											</xsl:attribute>
											<option>
												<xsl:if test="my:Confidentiality2=&quot;&quot;">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>Select...</option>
											<option value="Internal Users (Default MS)">
												<xsl:if test="my:Confidentiality2=&quot;Internal Users (Default MS)&quot;">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>Internal Users (Default MS)</option>
											<option value="Customer Ready">
												<xsl:if test="my:Confidentiality2=&quot;Customer Ready&quot;">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>Customer Ready</option>
											<option value="Partner Ready">
												<xsl:if test="my:Confidentiality2=&quot;Partner Ready&quot;">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>Partner Ready</option>
											<option value="Non-Disclosure">
												<xsl:if test="my:Confidentiality2=&quot;Non-Disclosure&quot;">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>Non-Disclosure</option>
										</select>
									</td>
									<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #dce8ec 1pt; BORDER-BOTTOM: #d8efff 2.25pt solid; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: #dce8ec 1pt; PADDING-RIGHT: 5px">
										<div><span title="" class="xdTextBox" hideFocus="1" xd:xctname="PlainText" xd:CtrlId="CTRL62" tabIndex="0" xd:binding="my:ContentOwner2" style="FONT-SIZE: x-small; FONT-FAMILY: Segoe UI; WIDTH: 100%">
												<xsl:value-of select="my:ContentOwner2"/>
											</span>
											<font face="Segoe UI"></font>
										</div>
										<h5 style="FONT-WEIGHT: normal">
											<font face="Segoe UI">  <font size="2">Co-Owner(optional)</font>
											</font>
										</h5>
										<div><span title="" class="xdTextBox" hideFocus="1" xd:xctname="PlainText" xd:CtrlId="CTRL121" tabIndex="0" xd:binding="my:ContentCoOwner2" style="FONT-SIZE: x-small; FONT-FAMILY: Segoe UI; WIDTH: 100%">
												<xsl:value-of select="my:ContentCoOwner2"/>
											</span>
										</div>
										<h5 style="FONT-WEIGHT: normal">
											<font face="Segoe UI"></font> </h5>
									</td>
									<td style="BORDER-TOP: #d8efff 1pt solid; BORDER-RIGHT: #d8efff 2.25pt solid; BORDER-BOTTOM: #d8efff 2.25pt solid; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: #dce8ec 1pt; PADDING-RIGHT: 5px">
										<div><span title="" class="xdTextBox" hideFocus="1" xd:xctname="PlainText" xd:CtrlId="CTRL63" tabIndex="0" xd:binding="my:AdditionalDetails2" style="FONT-SIZE: x-small; HEIGHT: 85px; FONT-FAMILY: Segoe UI; WIDTH: 100%">
												<xsl:value-of select="my:AdditionalDetails2"/>
											</span>
										</div>
									</td>
									<td style="BORDER-TOP: #dce8ec 1pt solid; BORDER-RIGHT: #dce8ec 1pt solid; BORDER-BOTTOM: #dce8ec 1pt solid; PADDING-BOTTOM: 1px; PADDING-TOP: 1px; PADDING-LEFT: 5px; BORDER-LEFT: #d8efff 2.25pt solid; PADDING-RIGHT: 5px">
										<div> </div>
									</td>
								</tr>
							</xsl:for-each>
						</tbody>
					</table>
					<div class="optionalPlaceholder" xd:xmlToEdit="AdditionalItems_59" tabIndex="0" xd:action="xCollection::insert" style="WIDTH: 1341px">Insert another item</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
