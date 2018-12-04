<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:target="http://skuniv.ac.kr/bill"  
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
		xmlns:xsi="http://skuniv.ac.kr/bill">
 
<xsl:template match="/">
	<HTML>
	<HEAD>
		<TITLE>Billboard Chart</TITLE>
	</HEAD>
	<BR/>
	<BR/>
	<BR/>
	<BODY bgcolor="#E1BEE7">
	<BR/>
		<image>
			<center><img width="1000px" height="200px" src="billboard.jpg"></img></center>
		</image>
		<BR/>
		<TABLE align="center" BORDER="0" cellpadding="5" cellspacing="2">
		<THEAD>
		<TR>
			<TH bgcolor="#E53935"><font color="white">Rank</font></TH>
			<TH bgcolor="#FB8C00"><font color="white">Title</font></TH>
			<TH bgcolor="#FDD835"><font color="white">Artist</font></TH>
			<TH bgcolor="#43A047"><font color="white">Nationality</font></TH>
			<TH bgcolor="#1E88E5"><font color="white">Album</font></TH>
			<TH bgcolor="#546E7A"><font color="white">Image</font></TH>
			<TH bgcolor="#8E24AA"><font color="white">Genre</font></TH>
			<TH bgcolor="#D81B60"><font color="white">Release-Date</font></TH>
			<TH bgcolor="#00897B"><font color="white">Another-Album</font></TH>
			<TH bgcolor="#C0CA33"><font color="white">Distributor</font></TH>
		</TR>
		</THEAD>
		<TBODY>
			<xsl:apply-templates select = "/xsi:billboard/xsi:song"/>
		</TBODY>
		</TABLE>
	</BODY>
	</HTML>
</xsl:template>
<xsl:template match="/xsi:billboard/xsi:song">
	<TR>
	<TD bgcolor="#FFCDD2"><p align="center" style="margin-top:3px"><xsl:value-of select="xsi:rank"/></p></TD>
	<TD bgcolor="#FFE0B2"><p align="center" style="margin-top:3px"><xsl:value-of select="@title"/></p></TD>
	<TD bgcolor="#FFF9C4"><p align="center" style="margin-top:3px"><xsl:value-of select="xsi:artist/xsi:name"/></p></TD>
	<TD bgcolor="#C8E6C9"><p align="center" style="margin-top:3px"><xsl:value-of select="xsi:artist/xsi:nationality"/></p></TD>
	<TD bgcolor="#BBDEFB"><p align="center" style="margin-top:3px"><xsl:value-of select="xsi:album"/></p></TD>
	<TD bgcolor="#546E7A">
		<img align="center" width="200px" height="200px">
			<xsl:attribute name="src">
				<xsl:value-of select="xsi:img"/>
			</xsl:attribute>
		</img>
	</TD>
	<TD bgcolor="#E1BEE7"><p align="center" style="margin-top:3px"><xsl:value-of select="xsi:genre"/></p></TD>
	<TD bgcolor="#F8BBD0"><p align="center" style="margin-top:3px"><xsl:value-of select="xsi:release-date"/></p></TD>
	<TD bgcolor="#B2DFDB"><p align="center" style="margin-top:3px"><xsl:value-of select="xsi:another-album"/></p></TD>
	<TD bgcolor="#F0F4C3"><p align="center" style="margin-top:3px"><xsl:value-of select="xsi:distributor"/></p></TD>
	</TR>
</xsl:template>
</xsl:stylesheet>