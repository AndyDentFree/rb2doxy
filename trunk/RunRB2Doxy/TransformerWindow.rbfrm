#tag Window
Begin Window TransformerWindow
   BackColor       =   16777215
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   609
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   644379289
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "Untitled"
   Visible         =   True
   Width           =   690
   Begin PushButton ViewXMLBtn
      AutoDeactivate  =   True
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Show XML"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   32
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   39
      Underline       =   ""
      Visible         =   True
      Width           =   106
      BehaviorIndex   =   0
   End
   Begin PushButton ViewXSLBtn
      AutoDeactivate  =   True
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Show XSLT"
      Default         =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   31
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   86
      Underline       =   ""
      Visible         =   True
      Width           =   106
      BehaviorIndex   =   1
   End
   Begin PushButton TransformBtn
      AutoDeactivate  =   True
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Transform"
      Default         =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   32
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   142
      Underline       =   ""
      Visible         =   True
      Width           =   106
      BehaviorIndex   =   2
   End
   Begin StaticText StaticText1
      AutoDeactivate  =   True
      Bold            =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   33
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Multiline       =   ""
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      Text            =   "RB2Doxy applies XSLT to an RB file saved as XML"
      TextAlign       =   0
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   9
      Underline       =   ""
      Visible         =   True
      Width           =   637
      BehaviorIndex   =   3
   End
   Begin EditField DisplayStuff
      AcceptTabs      =   ""
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   16777215
      Bold            =   ""
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   537
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   157
      LimitText       =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      Password        =   ""
      ReadOnly        =   ""
      Scope           =   0
      ScrollbarHorizontal=   ""
      ScrollbarVertical=   True
      Styled          =   ""
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   0
      TextFont        =   "System"
      TextSize        =   0
      Top             =   42
      Underline       =   ""
      UseFocusRing    =   True
      Visible         =   True
      Width           =   510
      BehaviorIndex   =   4
   End
   Begin PushButton TransformBtn1
      AutoDeactivate  =   True
      Bold            =   ""
      Cancel          =   ""
      Caption         =   "Transform -> File"
      Default         =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   7
      LockBottom      =   ""
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   ""
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0
      Top             =   187
      Underline       =   ""
      Visible         =   True
      Width           =   138
      BehaviorIndex   =   5
   End
End
#tag EndWindow

#tag WindowCode
	#tag MenuHandler
		Function FileOpen() As Boolean Handles FileOpen.Action
			xmlFile = GetOpenFolderItem("XML")
			
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h1
		Protected Function TransformIt() As string
		  if xmlFile is nil then
		    MessageDialogHelpers.ModalMessage "Please choose an XML file with File Open before trying a transform", "Oops"
		    return ""
		  end if
		  dim xd as  new XmlDocument
		  return xd.Transform( sampleXSL )
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		xmlFile As FolderItem
	#tag EndProperty


	#tag Constant, Name = sampleXSL, Type = String, Dynamic = False, Default = \"<\?xml version\x3D\"1.0\" encoding\x3D\"UTF-8\"\?>\r<xsl:stylesheet version\x3D\"1.0\" xmlns:xsl\x3D\"http://www.w3.org/1999/XSL/Transform\">\r\t<xsl:output method\x3D\"text\" version\x3D\"1.0\" encoding\x3D\"UTF-8\"  />\r<!-- think XML Spy bug fails to process <xsl:template match\x3D\"block[@type\x3D\'Module\']\"> and shows whole file first!\rso do the grotty xsl:choice instead of having severalm template matches\r -->\r\r<xsl:template match\x3D\"/\">\r<xsl:text>/**\r\\page pageCurrentRB2Doxy Current RB2Doxy Features\rThis page describes what does and doesn\'t work so can be maintained as I add features to the script.\r\r\\section sectParams Params yet to do\r- removing \'extends\' params from the param list\r- add extends methods to their classes (check how implented for Objetive-C)\r- work out a meaningful solution for ByRef\r- multi-dimensional arrays\r\r\\section sectGeneral General Issues\r- constants not parsed\r- case-insensitive matching and output should be used to ensure that at least common types are matched for params and results\r- parse note and add to classes\r- references to other files\r*/\r\r</xsl:text>\r<!-- get the group definitions out of the way first -->\r<xsl:apply-templates select\x3D\"//block[@type\x3D\'Folder\']\"\t/>\r<xsl:apply-templates select\x3D\"//block[ IsInterface\x3D\'1\' ]\"\t/>  <!-- interfaces -->\r<xsl:apply-templates select\x3D\"//block[ IsClass\x3D\'1\' and IsInterface\x3D\'0\'  ]\"\t/>  <!-- classes -->\r<xsl:apply-templates select\x3D\"//block[ @type\x3D\'Module\' and IsClass\x3D\'0\' and IsInterface\x3D\'0\' ]\"\t/>  <!-- modules -->\r<xsl:apply-templates select\x3D\"//block[ @type\x3D\'Window\' ]\"\t/>  <!-- windows -->\r</xsl:template>\r\r\r<!--  F O L D E R -->\r<xsl:template match\x3D\"block[ @type\x3D\'Folder\' ]\">\r<xsl:text>\r/**</xsl:text>\r<xsl:call-template name\x3D\"GenDefGroup\"><xsl:with-param name\x3D\"Name\" select\x3D\"ObjName\"></xsl:with-param></xsl:call-template>\r<xsl:call-template name\x3D\"GenInGroup\"><xsl:with-param name\x3D\"ParentID\" select\x3D\"ObjContainerID\"></xsl:with-param></xsl:call-template>\r<xsl:text>\r*/\r\r</xsl:text>\r</xsl:template>\r\r\r<!--  I N T E R F A C E -->\r<xsl:template match\x3D\"block[ IsInterface\x3D\'1\' ]\">\r<xsl:call-template name\x3D\"GenClassComment\" />\rpublic interface <xsl:value-of select\x3D\"ObjName\"/> <xsl:text> {\r</xsl:text>\r<xsl:text>\r}\r\r</xsl:text>\r</xsl:template>\r\r<!--  M O D U L E -->\r<xsl:template match\x3D\"block[ @type\x3D\'Module\' and IsClass\x3D\'0\' and IsInterface\x3D\'0\'  ]\">\r<!-- modules that aren\'t classes or interfaces are plain modules & their methods and properties are static  -->\r<xsl:call-template name\x3D\"GenClassComment\" />\rpublic class <xsl:value-of select\x3D\"ObjName\"/> extends Module <xsl:text> {\r</xsl:text>\r<xsl:apply-templates select\x3D\"Property\"><xsl:with-param name\x3D\"scopeQualifier\" select\x3D\"\'static \'\" /></xsl:apply-templates>\r<xsl:apply-templates select\x3D\"Method\"><xsl:with-param name\x3D\"scopeQualifier\" select\x3D\"\'static \'\" /></xsl:apply-templates>\r<xsl:text>\r}\r\r</xsl:text></xsl:template>\r\r\r\r<!-- C L A S S -->\r<xsl:template match\x3D\"block[ IsClass\x3D\'1\' and IsInterface\x3D\'0\' ]\">\r<xsl:call-template name\x3D\"GenClassComment\" />\rpublic class <xsl:value-of select\x3D\"ObjName\"/> extends <xsl:choose>\r\t<xsl:when test\x3D\"Superclass\"><xsl:value-of select\x3D\"Superclass\"/></xsl:when>\r\t<xsl:otherwise>Object</xsl:otherwise>\t\r</xsl:choose><xsl:if test\x3D\"string-length(Interfaces)!\x3D0\"> implements <xsl:value-of select\x3D\"Interfaces\"/></xsl:if>\r<xsl:text> {\r</xsl:text>\r<xsl:apply-templates select\x3D\"Property\"/>\r<xsl:apply-templates select\x3D\"Method\"/>\r<xsl:call-template name\x3D\"OptionalMenuHandlers\" />\t\r<xsl:call-template name\x3D\"OptionalEvents\" />\t\r<xsl:text>\r}\r\r</xsl:text></xsl:template>\r\r\r<!-- W I N D O W -->\r<xsl:template match\x3D\"block[ @type\x3D\'Window\' ]\">\rpublic class <xsl:value-of select\x3D\"ObjName\"/> extends <xsl:value-of select\x3D\"FormDefn/Superclass\" />\r<xsl:text> {\r/// \\name Controls\r//@{\r</xsl:text>\r<xsl:apply-templates select\x3D\"Control\"/>\r<xsl:text>\r//@}\r\r/// \\name Properties\r//@{\r</xsl:text>\r<xsl:apply-templates select\x3D\"Property\"/>\r<xsl:text>\r//@}\r</xsl:text>\r<xsl:call-template name\x3D\"OptionalMenuHandlers\" />\t\r<xsl:call-template name\x3D\"OptionalEvents\" />\t\r<xsl:text>\r/// \\name Methods\r//@{\r</xsl:text>\r<xsl:apply-templates select\x3D\"Method\"/>\r<xsl:text>\r//@}\r}\r\r</xsl:text>\r</xsl:template>  <!--  Window -->\r\r<xsl:template match\x3D\"Method\">\r<xsl:param name\x3D\"scopeQualifier\"/>\r<xsl:if test\x3D\"starts-with(ItemParams\x2C \'extends \')\"><xsl:text>\r    /**\r    This method extends another class (more details to be extracted later)\r     \\ingroup ExtendsAClass\r    */\r</xsl:text>\r</xsl:if>\r<xsl:text>    </xsl:text><xsl:value-of select\x3D\"$scopeQualifier\"/><xsl:apply-templates select\x3D\"ItemFlags\"/>\r<xsl:choose><xsl:when test\x3D\"string-length(ItemResult)\x3D0\" >void</xsl:when>\r<xsl:otherwise><xsl:value-of select\x3D\"ItemResult\" /></xsl:otherwise>\t\r</xsl:choose><xsl:text>  </xsl:text><xsl:value-of select\x3D\"ItemName\" />(<xsl:call-template name\x3D\"ParamsList\"><xsl:with-param name\x3D\"PList\" select\x3D\"ItemParams\" /></xsl:call-template><xsl:text>);\r</xsl:text>\r</xsl:template>\r\r\r<xsl:template name\x3D\"OptionalEvents\">\r<xsl:if test\x3D\"HookInstance\">\r<xsl:text>\r/// \\name Events\r//@{\r</xsl:text>\r<xsl:apply-templates select\x3D\"HookInstance\"/>\r<xsl:text>//@}\r\r</xsl:text>\r</xsl:if></xsl:template>\r\r\r<xsl:template name\x3D\"OptionalMenuHandlers\">\r<xsl:if test\x3D\"MenuHandler\">\r<xsl:text>\r/// \\name Menu Handlers\r//@{\r</xsl:text>\r<xsl:apply-templates select\x3D\"MenuHandler\"/>\r<xsl:text>//@}\r\r</xsl:text>\r</xsl:if></xsl:template>\r\r\t\r<xsl:template match\x3D\"MenuHandler\">\r<xsl:text>   private bool </xsl:text><xsl:value-of select\x3D\"ItemName\" /><xsl:text>() ;\r</xsl:text>\r</xsl:template>\r\r\t\r<xsl:template match\x3D\"ItemFlags\">\r<!-- cheat a bit by only using the access control aspect of flags-->\r<xsl:choose>\r\t<xsl:when test\x3D\".\x3D32\">private </xsl:when>\r\t<xsl:when test\x3D\".\x3D33\">private </xsl:when>\r\t<xsl:when test\x3D\".\x3D1\">protected  </xsl:when>\r\t<xsl:otherwise>public </xsl:otherwise>\t\r</xsl:choose>\t\r</xsl:template>\r\r\t\r<xsl:template match\x3D\"HookInstance\">\r<xsl:text>   private bool </xsl:text><xsl:value-of select\x3D\"ItemName\" /><xsl:text>() ;\r</xsl:text>\r</xsl:template>\r\r<xsl:template match\x3D\"Control\">\r<xsl:text>   public </xsl:text><xsl:value-of select\x3D\"ControlClass\" /><xsl:text>  </xsl:text><xsl:value-of select\x3D\"PropertyVal[@Name\x3D\'Name\']\" /><xsl:text> ;\r</xsl:text>\r</xsl:template>\r\r<xsl:template match\x3D\"Property\">\r<xsl:param name\x3D\"scopeQualifier\"/>\r<xsl:text>   </xsl:text><xsl:value-of select\x3D\"$scopeQualifier\"/><xsl:apply-templates select\x3D\"ItemFlags\"/><xsl:call-template name\x3D\"SingleDecl\"><xsl:with-param name\x3D\"DeclBody\" select\x3D\".\" /></xsl:call-template>\t <xsl:text> ;\r</xsl:text>\r</xsl:template>\r\r<xsl:template name\x3D\"SingleDecl\">\r<xsl:param name\x3D\"DeclBody\"/>\r<xsl:choose>\r\t<xsl:when test\x3D\"contains($DeclBody\x2C \'\x3D\')\"><xsl:value-of select\x3D\"substring-before( substring-after($DeclBody\x2C \' as \')\x2C \'\x3D\')\" /></xsl:when>\r\t<xsl:otherwise><xsl:value-of select\x3D\"substring-after($DeclBody\x2C \' as \')\" /></xsl:otherwise>\r</xsl:choose><xsl:text>  </xsl:text>\r<!-- allow for arrays\x2C eg:  unsized myArray(-1) as integer  or myArray(10) as someClass  \r take advantage of ByRef never being combined with arrays -->\r<xsl:variable name\x3D\"p\" select\x3D\"substring-before($DeclBody\x2C \' as \')\" />\r<xsl:choose>\r\t<xsl:when test\x3D\"contains($p\x2C \'ByRef\')\"><xsl:value-of select\x3D\"substring-after($p\x2C \'ByRef\')\" /></xsl:when>\r\t<xsl:when test\x3D\"contains($p\x2C \'-1\')\"><xsl:value-of select\x3D\"substring-before($p\x2C \'(\')\" />[]</xsl:when>\r\t<xsl:when test\x3D\"contains($p\x2C \'(\')\"><xsl:value-of select\x3D\"substring-before($p\x2C \'(\')\" />[<xsl:value-of select\x3D\"substring-before( substring-after($p\x2C \'(\' )\x2C \')\' )\" />]\t</xsl:when>\r\t<xsl:otherwise><xsl:value-of select\x3D\"$p\"/></xsl:otherwise>\t\r</xsl:choose>\r<xsl:if test\x3D\"contains($DeclBody\x2C \'\x3D\')\"> \x3D <xsl:value-of select\x3D\"substring-after($DeclBody\x2C \'\x3D\')\" /></xsl:if>\r</xsl:template>\r\r<xsl:template name\x3D\"ParamsList\">\r<xsl:param name\x3D\"PList\"/>\r<xsl:choose>\r    <xsl:when test\x3D\"string-length($PList)\x3D0\"><!-- finished recursing --></xsl:when>\r    <xsl:when test\x3D\"contains($PList\x2C \'\x2C\')\"><xsl:call-template name\x3D\"SingleDecl\">\r        <xsl:with-param name\x3D\"DeclBody\" select\x3D\"substring-before($PList\x2C \'\x2C \')\" /></xsl:call-template>\x2C <xsl:call-template name\x3D\"ParamsList\"><xsl:with-param name\x3D\"PList\" select\x3D\"substring-after($PList\x2C \'\x2C \')\" /></xsl:call-template>\r        </xsl:when>\r\t<xsl:otherwise><xsl:call-template name\x3D\"SingleDecl\"><xsl:with-param name\x3D\"DeclBody\" select\x3D\"$PList\" /></xsl:call-template></xsl:otherwise>\r</xsl:choose>\r</xsl:template>\r\r\r<xsl:template name\x3D\"GenDefGroup\">\r<xsl:param name\x3D\"Name\" />\r\\defgroup <xsl:call-template name\x3D\"GenGroupName\"><xsl:with-param name\x3D\"Name\" select\x3D\"$Name\"></xsl:with-param></xsl:call-template>\r<xsl:text>  </xsl:text>\r<xsl:value-of select\x3D\"$Name\" />\t\r</xsl:template>\r\r<xsl:template name\x3D\"GenInGroup\">\r<xsl:param name\x3D\"ParentID\" />\r\\ingroup <xsl:choose>\r\t<xsl:when test\x3D\"$ParentID\x3D0\">Folders</xsl:when>\r\t<xsl:otherwise><xsl:call-template name\x3D\"GenGroupName\"><xsl:with-param name\x3D\"Name\" select\x3D\"//block[@ID\x3D$ParentID]/ObjName\"></xsl:with-param></xsl:call-template></xsl:otherwise>\r</xsl:choose>\r</xsl:template>\r\r<xsl:template name\x3D\"GenClassComment\">\r/**<xsl:if test\x3D\"ObjContainerID!\x3D0\"><xsl:call-template name\x3D\"GenInGroup\"><xsl:with-param name\x3D\"ParentID\" select\x3D\"ObjContainerID\"></xsl:with-param></xsl:call-template></xsl:if>\r<xsl:text>\r*/</xsl:text>\r</xsl:template>\r\r\r<xsl:template name\x3D\"GenGroupName\">\r<xsl:param name\x3D\"Name\" />\r<xsl:value-of select\x3D\"translate($Name\x2C\' \t\'\x2C\'\')\" />\t\r</xsl:template>\r\r</xsl:stylesheet>", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events ViewXMLBtn
	#tag Event
		Sub Action()
		  if xmlFile is nil then
		    DisplayStuff.Text = ""
		  else
		    dim ts as TextInputStream = xmlFile.OpenAsTextFile
		    DisplayStuff.Text = ts.ReadAll
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ViewXSLBtn
	#tag Event
		Sub Action()
		  DisplayStuff.Text = sampleXSL
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TransformBtn
	#tag Event
		Sub Action()
		  DisplayStuff.Text = TransformIt
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TransformBtn1
	#tag Event
		Sub Action()
		  dim toSave as String = TransformIt
		  if toSave.lenb = 0 then return
		  
		  dim defaultName as string = xmlFile.DisplayName
		  if defaultName.Right(4) = "xml" then
		    defaultName = defaultName.Left(defaultName.Len-4) + ".java"
		  else
		    defaultName = defaultName + ".java"
		  end if
		  dim outFile as FolderItem = GetSaveFolderItem("text/java", defaultName)
		  if outFile is nil then return
		  dim ws as TextOutputStream = outFile.CreateTextFile
		  ws.Write toSave
		  ws.Close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
