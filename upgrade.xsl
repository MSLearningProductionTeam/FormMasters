<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pc="http://schemas.microsoft.com/office/infopath/2007/PartnerControls" xmlns:dfs="http://schemas.microsoft.com/office/infopath/2003/dataFormSolution" xmlns:tns="http://microsoft.com/webservices/SharePointPortalServer/UserProfileService" xmlns:s1="http://microsoft.com/wsdl/types/" xmlns:my="http://schemas.microsoft.com/office/infopath/2003/myXSD/2018-05-21T23:03:19" xmlns:xd="http://schemas.microsoft.com/office/infopath/2003" version="1.0">
	<xsl:output encoding="UTF-8" method="xml"/>
	<xsl:template match="/">
		<xsl:copy-of select="processing-instruction() | comment()"/>
		<xsl:choose>
			<xsl:when test="my:myFields">
				<xsl:apply-templates select="my:myFields" mode="_0"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:variable name="var">
					<xsl:element name="my:myFields"/>
				</xsl:variable>
				<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_0"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="pc:Person" mode="_3">
		<xsl:copy>
			<xsl:if test="pc:DisplayName">
				<xsl:element name="pc:DisplayName">
					<xsl:copy-of select="pc:DisplayName/text()[1]"/>
				</xsl:element>
			</xsl:if>
			<xsl:if test="pc:AccountId">
				<xsl:element name="pc:AccountId">
					<xsl:copy-of select="pc:AccountId/text()[1]"/>
				</xsl:element>
			</xsl:if>
			<xsl:if test="pc:AccountType">
				<xsl:element name="pc:AccountType">
					<xsl:copy-of select="pc:AccountType/text()[1]"/>
				</xsl:element>
			</xsl:if>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:ContentOwner" mode="_2">
		<xsl:copy>
			<xsl:apply-templates select="pc:Person" mode="_3"/>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:ContentCoOwner" mode="_4">
		<xsl:copy>
			<xsl:apply-templates select="pc:Person" mode="_3"/>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:Request" mode="_1">
		<xsl:copy>
			<xsl:element name="my:WindowsBG">
				<xsl:choose>
					<xsl:when test="my:WindowsBG/text()[1]">
						<xsl:copy-of select="my:WindowsBG/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:DevicesBG">
				<xsl:choose>
					<xsl:when test="my:DevicesBG/text()[1]">
						<xsl:copy-of select="my:DevicesBG/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:PageURL">
				<xsl:copy-of select="my:PageURL/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:FileName">
				<xsl:copy-of select="my:FileName/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:DocumentTitle">
				<xsl:copy-of select="my:DocumentTitle/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:DocumentDescription">
				<xsl:copy-of select="my:DocumentDescription/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:Confidentiality">
				<xsl:copy-of select="my:Confidentiality/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:RequestedPublishDate">
				<xsl:choose>
					<xsl:when test="my:RequestedPublishDate/text()[1]">
						<xsl:copy-of select="my:RequestedPublishDate/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:Attachments">
				<xsl:choose>
					<xsl:when test="my:Attachments/text()[1]">
						<xsl:copy-of select="my:Attachments/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:SourceFileLocation">
				<xsl:copy-of select="my:SourceFileLocation/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:AdditionalDetails">
				<xsl:copy-of select="my:AdditionalDetails/text()[1]"/>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:ContentOwner">
					<xsl:apply-templates select="my:ContentOwner[1]" mode="_2"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:ContentOwner"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_2"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:ContentCoOwner">
					<xsl:apply-templates select="my:ContentCoOwner[1]" mode="_4"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:ContentCoOwner"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_4"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:FTEOwner">
				<xsl:copy-of select="my:FTEOwner/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:RequestPickerSection" mode="_5">
		<xsl:copy>
			<xsl:element name="my:RequestType">
				<xsl:copy-of select="my:RequestType/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:AddMoreContentSection" mode="_7">
		<xsl:copy>
			<xsl:element name="my:MoreContent">
				<xsl:choose>
					<xsl:when test="my:MoreContent/text()[1]">
						<xsl:copy-of select="my:MoreContent/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:AdditionalFileAttachGroup" mode="_9">
		<xsl:copy>
			<xsl:element name="my:FileAttach2">
				<xsl:choose>
					<xsl:when test="my:FileAttach2/text()[1]">
						<xsl:copy-of select="my:FileAttach2/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:AdditionalAttachmentsGroup" mode="_8">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:AdditionalFileAttachGroup">
					<xsl:apply-templates select="my:AdditionalFileAttachGroup" mode="_9"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:AdditionalFileAttachGroup"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_9"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:AddNew" mode="_6">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:AddMoreContentSection">
					<xsl:apply-templates select="my:AddMoreContentSection[1]" mode="_7"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:AddMoreContentSection"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_7"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:ImageExampleSection"/>
			<xsl:element name="my:AddNewContentCheckBox">
				<xsl:choose>
					<xsl:when test="my:AddNewContentCheckBox/text()[1]">
						<xsl:copy-of select="my:AddNewContentCheckBox/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:FileAttach3">
				<xsl:choose>
					<xsl:when test="my:FileAttach3/text()[1]">
						<xsl:copy-of select="my:FileAttach3/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:AdditionalAttachmentsGroup">
					<xsl:apply-templates select="my:AdditionalAttachmentsGroup[1]" mode="_8"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:AdditionalAttachmentsGroup"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_8"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:AdditionalItems" mode="_12">
		<xsl:copy>
			<xsl:element name="my:PageUrl2">
				<xsl:copy-of select="my:PageUrl2/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:DocumentTitle2">
				<xsl:copy-of select="my:DocumentTitle2/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:DocumentDescription2">
				<xsl:copy-of select="my:DocumentDescription2/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:Confidentiality2">
				<xsl:copy-of select="my:Confidentiality2/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:ContentOwner2">
				<xsl:copy-of select="my:ContentOwner2/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:AdditionalDetails2">
				<xsl:copy-of select="my:AdditionalDetails2/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:ContentCoOwner2">
				<xsl:copy-of select="my:ContentCoOwner2/text()[1]"/>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:AdditionalRequests" mode="_11">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:AdditionalItems">
					<xsl:apply-templates select="my:AdditionalItems" mode="_12"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:AdditionalItems"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_12"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:BOMbuilder" mode="_10">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:AdditionalRequests">
					<xsl:apply-templates select="my:AdditionalRequests[1]" mode="_11"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:AdditionalRequests"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_11"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:group" mode="_14">
		<xsl:copy>
			<xsl:apply-templates select="pc:Person" mode="_3"/>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:NameIntro" mode="_13">
		<xsl:copy>
			<xsl:attribute name="my:Hello2">
				<xsl:value-of select="@my:Hello2"/>
			</xsl:attribute>
			<xsl:element name="my:Hello">
				<xsl:copy-of select="my:Hello/text()[1]"/>
			</xsl:element>
			<xsl:element name="my:FirstName">
				<xsl:copy-of select="my:FirstName/text()[1]"/>
			</xsl:element>
			<xsl:choose>
				<xsl:when test="my:group">
					<xsl:apply-templates select="my:group[1]" mode="_14"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:group"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_14"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:ExampleSection" mode="_15">
		<xsl:copy>
			<xsl:element name="my:ExampleYesNo">
				<xsl:choose>
					<xsl:when test="my:ExampleYesNo/text()[1]">
						<xsl:copy-of select="my:ExampleYesNo/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
			<xsl:element name="my:ShowExample">
				<xsl:choose>
					<xsl:when test="my:ShowExample/text()[1]">
						<xsl:copy-of select="my:ShowExample/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="my:myFields" mode="_0">
		<xsl:copy>
			<xsl:choose>
				<xsl:when test="my:Request">
					<xsl:apply-templates select="my:Request[1]" mode="_1"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:Request"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_1"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:RequestPickerSection">
					<xsl:apply-templates select="my:RequestPickerSection[1]" mode="_5"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:RequestPickerSection"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_5"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:AddNew">
					<xsl:apply-templates select="my:AddNew[1]" mode="_6"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:AddNew"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_6"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:BOMbuilder">
					<xsl:apply-templates select="my:BOMbuilder[1]" mode="_10"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:BOMbuilder"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_10"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:NameIntro">
					<xsl:apply-templates select="my:NameIntro[1]" mode="_13"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:NameIntro"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_13"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:choose>
				<xsl:when test="my:ExampleSection">
					<xsl:apply-templates select="my:ExampleSection[1]" mode="_15"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="var">
						<xsl:element name="my:ExampleSection"/>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($var)/*" mode="_15"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:element name="my:RequestID">
				<xsl:choose>
					<xsl:when test="my:RequestID/text()[1]">
						<xsl:copy-of select="my:RequestID/text()[1]"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="xsi:nil">true</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:element>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>