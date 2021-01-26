<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">
  <xsl:output method="xml" omit-xml-declaration="no" indent="yes"/>
  <xsl:strip-space elements="*"/>
  
  <xsl:template match="@*|node()">
	<xsl:copy>
		<xsl:apply-templates select="@*|node()"/>
	</xsl:copy>
  </xsl:template>
  
  <xsl:template match="images">
	<Images>Image-Nodes-Below</Images>
	<AspectRatio191><xsl:value-of select="AspectRatio191/url"/></AspectRatio191>
	<Box100><xsl:value-of select="Box100/url"/></Box100>
	<Box1280><xsl:value-of select="Box1280/url"/></Box1280>
	<Box1440><xsl:value-of select="Box1440/url"/></Box1440>
	<Box320><xsl:value-of select="Box320/url"/></Box320>
	<Box40><xsl:value-of select="Box40/url"/></Box40>
	<Box640><xsl:value-of select="Box640/url"/></Box640>
	<Box80><xsl:value-of select="Box80/url"/></Box80>
	<Box960><xsl:value-of select="Box960/url"/></Box960>
	<EmailLargeImage><xsl:value-of select="EmailLargeImage/url"/></EmailLargeImage>
	<Original><xsl:value-of select="Original/url"/></Original>
	<Square240><xsl:value-of select="Square240/url"/></Square240>
	<Square320><xsl:value-of select="Square320/url"/></Square320>
	<Square80><xsl:value-of select="Square80/url"/></Square80>
  </xsl:template>
  
  <xsl:template match="statistics">
	<xsl:apply-templates select="@*|node()"/>
  </xsl:template>
  
  <xsl:template match="userShareInfo">
	<xsl:apply-templates select="@*|node()"/>
  </xsl:template>
  
  <xsl:template match="author">
	<xsl:apply-templates select="@*|node()"/>
  </xsl:template>
  
  <xsl:template match="categories">
	<category_id><xsl:value-of select="./element/id"/></category_id>
	<category_name><xsl:value-of select="./element/name"/></category_name>
  </xsl:template>

</xsl:stylesheet>