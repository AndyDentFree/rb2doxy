<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" version="1.0" encoding="UTF-8"  />
<!-- think XML Spy bug fails to process <xsl:template match="block[@type='Module']"> and shows whole file first!
so do the grotty xsl:choice instead of having severalm template matches
 -->

<xsl:template match="/">
<xsl:text>/**
\page pageCurrentRB2Doxy Current RB2Doxy Features
This page describes what does and doesn't work so can be maintained as I add features to the script.

\section sectParams Params yet to do
- removing 'extends' params from the param list
- add extends methods to their classes (check how implented for Objetive-C)
- work out a meaningful solution for ByRef
- multi-dimensional arrays

\section sectGeneral General Issues
- constants not parsed
- case-insensitive matching and output should be used to ensure that at least common types are matched for params and results
- parse note and add to classes
- references to other files
*/

</xsl:text>
<!-- get the group definitions out of the way first -->
<xsl:apply-templates select="//block[@type='Folder']"	/>
<xsl:apply-templates select="//block[ IsInterface='1' ]"	/>  <!-- interfaces -->
<xsl:apply-templates select="//block[ IsClass='1' and IsInterface='0'  ]"	/>  <!-- classes -->
<xsl:apply-templates select="//block[ @type='Module' and IsClass='0' and IsInterface='0' ]"	/>  <!-- modules -->
<xsl:apply-templates select="//block[ @type='Window' ]"	/>  <!-- windows -->
</xsl:template>


<!--  F O L D E R -->
<xsl:template match="block[ @type='Folder' ]">
<xsl:text>
/**</xsl:text>
<xsl:call-template name="GenDefGroup"><xsl:with-param name="Name" select="ObjName"></xsl:with-param></xsl:call-template>
<xsl:call-template name="GenInGroup"><xsl:with-param name="ParentID" select="ObjContainerID"></xsl:with-param></xsl:call-template>
<xsl:text>
*/

</xsl:text>
</xsl:template>


<!--  I N T E R F A C E -->
<xsl:template match="block[ IsInterface='1' ]">
<xsl:call-template name="GenClassComment" />
public interface <xsl:value-of select="ObjName"/> <xsl:text> {
</xsl:text>
<xsl:text>
}

</xsl:text>
</xsl:template>

<!--  M O D U L E -->
<xsl:template match="block[ @type='Module' and IsClass='0' and IsInterface='0'  ]">
<!-- modules that aren't classes or interfaces are plain modules & their methods and properties are static  -->
<xsl:call-template name="GenClassComment" />
public class <xsl:value-of select="ObjName"/> extends Module <xsl:text> {
</xsl:text>
<xsl:apply-templates select="Property"><xsl:with-param name="scopeQualifier" select="'static '" /></xsl:apply-templates>
<xsl:apply-templates select="Method"><xsl:with-param name="scopeQualifier" select="'static '" /></xsl:apply-templates>
<xsl:text>
}

</xsl:text></xsl:template>



<!-- C L A S S -->
<xsl:template match="block[ IsClass='1' and IsInterface='0' ]">
<xsl:call-template name="GenClassComment" />
public class <xsl:value-of select="ObjName"/> extends <xsl:choose>
	<xsl:when test="Superclass"><xsl:value-of select="Superclass"/></xsl:when>
	<xsl:otherwise>Object</xsl:otherwise>	
</xsl:choose><xsl:if test="string-length(Interfaces)!=0"> implements <xsl:value-of select="Interfaces"/></xsl:if>
<xsl:text> {
</xsl:text>
<xsl:apply-templates select="Property"/>
<xsl:apply-templates select="Method"/>
<xsl:call-template name="OptionalMenuHandlers" />	
<xsl:call-template name="OptionalEvents" />	
<xsl:text>
}

</xsl:text></xsl:template>


<!-- W I N D O W -->
<xsl:template match="block[ @type='Window' ]">
public class <xsl:value-of select="ObjName"/> extends <xsl:value-of select="FormDefn/Superclass" />
<xsl:text> {
/// \name Controls
//@{
</xsl:text>
<xsl:apply-templates select="Control"/>
<xsl:text>
//@}

/// \name Properties
//@{
</xsl:text>
<xsl:apply-templates select="Property"/>
<xsl:text>
//@}
</xsl:text>
<xsl:call-template name="OptionalMenuHandlers" />	
<xsl:call-template name="OptionalEvents" />	
<xsl:text>
/// \name Methods
//@{
</xsl:text>
<xsl:apply-templates select="Method"/>
<xsl:text>
//@}
}

</xsl:text>
</xsl:template>  <!--  Window -->

<xsl:template match="Method">
<xsl:param name="scopeQualifier"/>
<xsl:if test="starts-with(ItemParams, 'extends ')"><xsl:text>
    /**
    This method extends another class (more details to be extracted later)
     \ingroup ExtendsAClass
    */
</xsl:text>
</xsl:if>
<xsl:text>    </xsl:text><xsl:value-of select="$scopeQualifier"/><xsl:apply-templates select="ItemFlags"/>
<xsl:choose><xsl:when test="string-length(ItemResult)=0" >void</xsl:when>
<xsl:otherwise><xsl:value-of select="ItemResult" /></xsl:otherwise>	
</xsl:choose><xsl:text>  </xsl:text><xsl:value-of select="ItemName" />(<xsl:call-template name="ParamsList"><xsl:with-param name="PList" select="ItemParams" /></xsl:call-template><xsl:text>);
</xsl:text>
</xsl:template>


<xsl:template name="OptionalEvents">
<xsl:if test="HookInstance">
<xsl:text>
/// \name Events
//@{
</xsl:text>
<xsl:apply-templates select="HookInstance"/>
<xsl:text>//@}

</xsl:text>
</xsl:if></xsl:template>


<xsl:template name="OptionalMenuHandlers">
<xsl:if test="MenuHandler">
<xsl:text>
/// \name Menu Handlers
//@{
</xsl:text>
<xsl:apply-templates select="MenuHandler"/>
<xsl:text>//@}

</xsl:text>
</xsl:if></xsl:template>

	
<xsl:template match="MenuHandler">
<xsl:text>   private bool </xsl:text><xsl:value-of select="ItemName" /><xsl:text>() ;
</xsl:text>
</xsl:template>

	
<xsl:template match="ItemFlags">
<!-- cheat a bit by only using the access control aspect of flags-->
<xsl:choose>
	<xsl:when test=".=32">private </xsl:when>
	<xsl:when test=".=33">private </xsl:when>
	<xsl:when test=".=1">protected  </xsl:when>
	<xsl:otherwise>public </xsl:otherwise>	
</xsl:choose>	
</xsl:template>

	
<xsl:template match="HookInstance">
<xsl:text>   private bool </xsl:text><xsl:value-of select="ItemName" /><xsl:text>() ;
</xsl:text>
</xsl:template>

<xsl:template match="Control">
<xsl:text>   public </xsl:text><xsl:value-of select="ControlClass" /><xsl:text>  </xsl:text><xsl:value-of select="PropertyVal[@Name='Name']" /><xsl:text> ;
</xsl:text>
</xsl:template>

<xsl:template match="Property">
<xsl:param name="scopeQualifier"/>
<xsl:text>   </xsl:text><xsl:value-of select="$scopeQualifier"/><xsl:apply-templates select="ItemFlags"/><xsl:call-template name="SingleDecl"><xsl:with-param name="DeclBody" select="." /></xsl:call-template>	 <xsl:text> ;
</xsl:text>
</xsl:template>

<xsl:template name="SingleDecl">
<xsl:param name="DeclBody"/>
<xsl:choose>
	<xsl:when test="contains($DeclBody, '=')"><xsl:value-of select="substring-before( substring-after($DeclBody, ' as '), '=')" /></xsl:when>
	<xsl:otherwise><xsl:value-of select="substring-after($DeclBody, ' as ')" /></xsl:otherwise>
</xsl:choose><xsl:text>  </xsl:text>
<!-- allow for arrays, eg:  unsized myArray(-1) as integer  or myArray(10) as someClass  
 take advantage of ByRef never being combined with arrays -->
<xsl:variable name="p" select="substring-before($DeclBody, ' as ')" />
<xsl:choose>
	<xsl:when test="contains($p, 'ByRef')"><xsl:value-of select="substring-after($p, 'ByRef')" /></xsl:when>
	<xsl:when test="contains($p, '-1')"><xsl:value-of select="substring-before($p, '(')" />[]</xsl:when>
	<xsl:when test="contains($p, '(')"><xsl:value-of select="substring-before($p, '(')" />[<xsl:value-of select="substring-before( substring-after($p, '(' ), ')' )" />]	</xsl:when>
	<xsl:otherwise><xsl:value-of select="$p"/></xsl:otherwise>	
</xsl:choose>
<xsl:if test="contains($DeclBody, '=')"> = <xsl:value-of select="substring-after($DeclBody, '=')" /></xsl:if>
</xsl:template>

<xsl:template name="ParamsList">
<xsl:param name="PList"/>
<xsl:choose>
    <xsl:when test="string-length($PList)=0"><!-- finished recursing --></xsl:when>
    <xsl:when test="contains($PList, ',')"><xsl:call-template name="SingleDecl">
        <xsl:with-param name="DeclBody" select="substring-before($PList, ', ')" /></xsl:call-template>, <xsl:call-template name="ParamsList"><xsl:with-param name="PList" select="substring-after($PList, ', ')" /></xsl:call-template>
        </xsl:when>
	<xsl:otherwise><xsl:call-template name="SingleDecl"><xsl:with-param name="DeclBody" select="$PList" /></xsl:call-template></xsl:otherwise>
</xsl:choose>
</xsl:template>


<xsl:template name="GenDefGroup">
<xsl:param name="Name" />
\defgroup <xsl:call-template name="GenGroupName"><xsl:with-param name="Name" select="$Name"></xsl:with-param></xsl:call-template>
<xsl:text>  </xsl:text>
<xsl:value-of select="$Name" />	
</xsl:template>

<xsl:template name="GenInGroup">
<xsl:param name="ParentID" />
\ingroup <xsl:choose>
	<xsl:when test="$ParentID=0">Folders</xsl:when>
	<xsl:otherwise><xsl:call-template name="GenGroupName"><xsl:with-param name="Name" select="//block[@ID=$ParentID]/ObjName"></xsl:with-param></xsl:call-template></xsl:otherwise>
</xsl:choose>
</xsl:template>

<xsl:template name="GenClassComment">
/**<xsl:if test="ObjContainerID!=0"><xsl:call-template name="GenInGroup"><xsl:with-param name="ParentID" select="ObjContainerID"></xsl:with-param></xsl:call-template></xsl:if>
<xsl:text>
*/</xsl:text>
</xsl:template>


<xsl:template name="GenGroupName">
<xsl:param name="Name" />
<xsl:value-of select="translate($Name,' 	','')" />	
</xsl:template>

</xsl:stylesheet>
