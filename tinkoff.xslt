<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">   
  <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

   <xsl:template match="@* | node()">
      <xsl:copy>
         <xsl:apply-templates select="@* | node()"/>
      </xsl:copy>
   </xsl:template>

   <xsl:template match="LANGUAGE">
      <xsl:copy-of select="."/>
      <INTU.BID>3000</INTU.BID>
   </xsl:template>

   <xsl:template match="BANKTRANLIST">
      <xsl:copy-of select="."/>
        <LEDGERBAL>
          <BALAMT>0.00</BALAMT>
          <DTASOF>20180511012730.964[+3:MSK]</DTASOF>
        </LEDGERBAL>
   </xsl:template>
</xsl:stylesheet>
