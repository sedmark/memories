<?xml version="1.0" encoding="UTF-8"?>
<!--
This file is part of the DITA Open Toolkit project.

Copyright 2011 Jarno Elovirta

See the accompanying LICENSE file for applicable license.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                version="3.0">

    

  <xsl:attribute-set name="region-body.odd">
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}" select="$page-margin-inside"/>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}" select="$page-margin-outside"/>
  	<!--xsl:attribute name="background-color">#C0C0C0</xsl:attribute-->
  </xsl:attribute-set>

  <xsl:attribute-set name="region-body.even">
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}" select="$page-margin-outside"/>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}" select="$page-margin-inside"/>
  	<!--xsl:attribute name="background-color">#C0C0C0</xsl:attribute-->
  </xsl:attribute-set>

  <xsl:attribute-set name="region-before">
  	<!--xsl:attribute name="background-color">#7fff0f</xsl:attribute-->
    <xsl:attribute name="padding-end" select="$page-margin-outside"/>
    <xsl:attribute name="padding-start" select="$page-margin-outside"/>
  </xsl:attribute-set>
 
  <xsl:attribute-set name="region-after">
  	<!--xsl:attribute name="background-color">#7fffff</xsl:attribute-->
    <xsl:attribute name="padding-end" select="$page-margin-outside"/>
    <xsl:attribute name="padding-start" select="$page-margin-outside"/>
  </xsl:attribute-set>

  <xsl:attribute-set name="region-body__frontmatter.odd" use-attribute-sets="region-body.odd">
    <xsl:attribute name="margin-top" select="$page-margin-top-front"/>
    <xsl:attribute name="margin-bottom" select="$page-margin-bottom-front"/>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}" select="$page-margin-inside-front"/>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}" select="$page-margin-outside-front"/>
  	<xsl:attribute name="background-image" select="'url(Customization/OpenTopic/common/artwork/PDFCover.jpg)'"/>
  	<xsl:attribute name="background-repeat" select="'no-repeat'"/>
  	<xsl:attribute name="background-position-horizontal" select="'center'"/>
  	<xsl:attribute name="background-position-vertical" select="'center'"/>
  </xsl:attribute-set>
  <xsl:attribute-set name="region-body__frontmatter.even" use-attribute-sets="region-body.even">
    <xsl:attribute name="margin-top" select="$page-margin-top-front"/>
    <xsl:attribute name="margin-bottom" select="$page-margin-bottom-front"/>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-left' else 'margin-right'}" select="$page-margin-outside-front"/>
    <xsl:attribute name="{if ($writing-mode = 'lr') then 'margin-right' else 'margin-left'}" select="$page-margin-inside-front"/>
  	<xsl:attribute name="background-image" select="'url(Customization/OpenTopic/common/artwork/PDFCover2.jpg)'"/>
  	<xsl:attribute name="background-repeat" select="'no-repeat'"/>
  	<xsl:attribute name="background-position-horizontal" select="'center'"/>
  	<xsl:attribute name="background-position-vertical" select="'center'"/>
  </xsl:attribute-set>

</xsl:stylesheet>
