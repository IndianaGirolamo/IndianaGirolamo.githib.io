<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" />

<xsl:template match="/"> <!-- forward slash matches the root node of the XML doc --> 

<html>
<head>
	<title>90s Video Games!</title>
	  <link rel="stylesheet" type="text/css" href="main.css" />

</head>

<body onload="welcome()">
	<div id="container">
	
	<h1><span id="aimLeft"><img src="aim.png" class="aim"/></span>Hit Video Games from the 1990s<span id="aimRight"><img src="aim.png" class="aim"/></span> </h1>
	<h3> Hover over a category and click a link to learn more about the game, technology, or year.</h3>
	
	<div id="navbar">
	
	<a> 
		<xsl:attribute name="href">
			javascript:void(0)
		</xsl:attribute>

		<xsl:attribute name="onclick">
			showSection('games'); switchColors(this);
		</xsl:attribute>
			<h3 class="header"> Games </h3>
	</a>
	
	<a> 
		<xsl:attribute name="href">
			javascript:void(0)
		</xsl:attribute>

		<xsl:attribute name="onclick">
			showSection('tech'); switchColors(this);
		</xsl:attribute>
			<h3 class="header"> Game Technologies </h3>
	</a>
	
	
	<a> 
		<xsl:attribute name="href">
			javascript:void(0)
		</xsl:attribute>

		<xsl:attribute name="onclick">
			showSection('year'); switchColors(this);
		</xsl:attribute>
			<h3 class="header"> Release Year </h3>
	</a>
	
	
	<a> 
		<xsl:attribute name="href">
			javascript:void(0)
		</xsl:attribute>

		<xsl:attribute name="onclick">
			showSection('dev'); switchColors(this);
		</xsl:attribute>
			<h3 class="header"> Developers </h3>
	</a>

	<a> 
		<xsl:attribute name="href">
			javascript:void(0)
		</xsl:attribute>

		<xsl:attribute name="onclick">
			showSection('plat'); switchColors(this);
		</xsl:attribute>
			<h3 class="header"> Platforms </h3>
	</a>
	
	</div>
	
	<div id="linkNothing"></div>
	
	<div id="nothing"></div>

<div id="games">

	<xsl:attribute name="class">
		content
	</xsl:attribute>

	<xsl:for-each select="root/game/name">
		<xsl:sort select="." />
		<div>
		<a>
			<xsl:attribute name="href">
				javascript:void(0)
			</xsl:attribute>
			
			<xsl:attribute name="class">
				sublinks
			</xsl:attribute>
			
			<xsl:attribute name="id">
				<xsl-value-of select="./@image" />
			</xsl:attribute>
			
			<xsl:attribute name="onclick">
				showStuff('<xsl:value-of select="." />'); switchColors2(this);
			</xsl:attribute>
			
			<xsl:value-of select="." /> <br />
		</a>
	</div>

		<div>
			<xsl:attribute name="id">
				<xsl:value-of select="." />
			</xsl:attribute>

			<xsl:attribute name="class">
				master
			</xsl:attribute>

			<!-- display name of game, then display it's image (title screen, box art, etc) -->
			<h2> <i> <xsl:value-of select="." /> </i> </h2>

			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="./@image" />
				</xsl:attribute>
				<xsl:attribute name="class">
					gameImages
				</xsl:attribute>
			</img> <br />

			<!-- Select id of game, match it with id of enhancement -->

			<span class="right"> 

				Developer: <xsl:value-of select="../../dev[@id=current()/./@dev]" /> <br />

				Known for: <xsl:value-of select="../../advancements/known_for[@enhance=current()/./@id]" /> <br />

				Released in: <xsl:value-of select="../../release[@year=current()/./@release]" /> <br />
				
				<xsl:value-of select="../../year - current()/./@release" /> years since release <br />

				ESRB Rating: <xsl:value-of select="../../esrb/rating[@id=current()/./@rating]" /> <br /> <br />

				<u> Released for the following systems:</u> <br />
				<div> 
				<xsl:attribute name="class">
				platform
				</xsl:attribute>
				
				<xsl:if test="./@arc">
				<i><xsl:value-of select="../../system[@id=current()/./@arc]" /></i>&#160;
				</xsl:if>
				
				<xsl:if test="./@dos">
				<xsl:value-of select="../../system[@id=current()/./@dos]" />&#160;
				</xsl:if>
				
				<xsl:if test="./@dre">
				<xsl:value-of select="../../system[@id=current()/./@dre]" />&#160;
				</xsl:if>
				
				<xsl:if test="./@gen">
				<xsl:value-of select="../../system[@id=current()/./@gen]" />&#160;
				</xsl:if>
				
				<xsl:if test="./@n64">
				<xsl:value-of select="../../system[@id=current()/./@n64]" />&#160;
				</xsl:if>
				
				<xsl:if test="./@psx">
				<xsl:value-of select="../../system[@id=current()/./@psx]" />&#160;
				</xsl:if>
				
				<xsl:if test="./@sat">
				<xsl:value-of select="../../system[@id=current()/./@sat]" />&#160;
				</xsl:if>
				
				<xsl:if test="./@snes">
				<xsl:value-of select="../../system[@id=current()/./@snes]" />&#160;
				</xsl:if>
				
				<xsl:if test="./@win">
				<xsl:value-of select="../../system[@id=current()/./@win]" />&#160;
				</xsl:if>
				</div> <br />
				

			
				Description: <xsl:value-of select="./@description" /> <br />

			
			</span>
				
			
		</div>

	</xsl:for-each>
</div>
		
	
	<div id="tech">
		<xsl:attribute name="class">
			content
		</xsl:attribute>
	<xsl:for-each select="root/advancements/known_for">
	<xsl:sort select="." />
	<div>
	<a>
	<xsl:attribute name="href">
		javascript:void(0)
	</xsl:attribute>
	
	<xsl:attribute name="class">
		sublinks
	</xsl:attribute>

	<xsl:attribute name="onclick">
		showStuff('<xsl:value-of select="." />'); switchColors2(this);
	</xsl:attribute>

	
	<xsl:value-of select="." /> <br />
	
	</a>
	</div>
		<div>
			<xsl:attribute name="id">
				<xsl:value-of select="." />
			</xsl:attribute>

			<xsl:attribute name="class">
				master
			</xsl:attribute>
				<h2> <i> <xsl:value-of select="." /> </i></h2><br />
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="./@image" />
				</xsl:attribute>

				<xsl:attribute name="class">
					techGameHeader
				</xsl:attribute>
		
		

			</img> <br />
			<u> There are <b> <xsl:value-of select="count(../../game/name[@id=current()/./@enhance])" /> </b> games in this category </u> <br /> <br />
			<xsl:for-each select="../../game/name[@id=current()/./@enhance]"> 
			<xsl:sort select="." />
			<div> 
				<xsl:attribute name="class">
					yearDiv
				</xsl:attribute>

			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="./@image" />
				</xsl:attribute>

				<xsl:attribute name="class">
					techGameImages
				</xsl:attribute>
			</img> <br />

					<h3> <xsl:value-of select="." /> (<xsl:value-of select="./@release" />) </h3>
					
				</div>
			</xsl:for-each>
		</div>
	</xsl:for-each>
	</div>

	
	<div id="year">
			<xsl:attribute name="class">
				content
			</xsl:attribute>
			<xsl:for-each select="root/release">
				<xsl:sort select="." />
				<div>

				<a>
					<xsl:attribute name="href">
						javascript:void(0)
					</xsl:attribute>
						
				<xsl:attribute name="class">
					sublinks
				</xsl:attribute>

					<xsl:attribute name="onclick">
						showStuff('<xsl:value-of select="." />'); switchColors2(this);
					</xsl:attribute>

					<xsl:value-of select="." /> <br />
				</a>
	</div>

		<div>
			<xsl:attribute name="class">
				master
			</xsl:attribute>

			<xsl:attribute name="id">
				<xsl:value-of select='.' />
			</xsl:attribute>

			<h2> <b> 
			<xsl:value-of select="count(../game/name[@release=current()/./@year])"/>  game(s) were released in <xsl:value-of select="." /> 
			</b> </h2>

			<xsl:for-each select="../game/name[@release=current()/./@year]">
			<xsl:sort select="."/>
			<div>
				<xsl:attribute name="class">
					yearDiv
				</xsl:attribute>

				<img> 
					<xsl:attribute name="src"> 
						<xsl:value-of select="./@image" />
					</xsl:attribute> 
					<xsl:attribute name="class">
						gameImages
					</xsl:attribute>
				</img> 

				<h3> 
					<xsl:value-of select="." /> by <xsl:value-of select="../../dev[@id=current()/./@dev]" /> 
				</h3>  <br />
			</div>
			</xsl:for-each>
		</div>

	</xsl:for-each>

	</div>

	
	
	<div id="dev">
		<xsl:attribute name="class">
			content
		</xsl:attribute>
	<xsl:for-each select="root/dev">
		<xsl:sort select="."/>
	<div>
		<a>
			<xsl:attribute name="href">
				javascript:void(0)
			</xsl:attribute>
			
			<xsl:attribute name="class">
				sublinks
			</xsl:attribute>

			<xsl:attribute name="onclick">
				showStuff('<xsl:value-of select="." />'); switchColors2(this);
			</xsl:attribute>

			<xsl:value-of select="." /> <br />
		</a>
	</div>
	
	<div>
		<xsl:attribute name="class">
			master
		</xsl:attribute>

		<xsl:attribute name="id">
			<xsl:value-of select='.' />
		</xsl:attribute>
		<img> <xsl:attribute name="src"><xsl:value-of select="./@logo" /></xsl:attribute><xsl:attribute name="class">logoImage</xsl:attribute></img> <br />
		<h3><xsl:value-of select="count(../game/name[@dev=current()/./@id])" /> games released by <xsl:value-of select="." /></h3> <br /> 
		
		<xsl:for-each select="../game/name[@dev=current()/./@id]">
		<xsl:sort select="."/>
		<div>
			<xsl:attribute name="class">
				yearDiv
			</xsl:attribute>
		
		 
		<img>
		
		<xsl:attribute name="src">
		<xsl:value-of select="./@image" />
		</xsl:attribute>
		
		<xsl:attribute name="class">
		gameImages
		</xsl:attribute>
		
		</img> 

		<xsl:value-of select="." /> released in <xsl:value-of select="@release" /><br /> <br /> <br />
		
		</div>
		</xsl:for-each>
		
	</div>
	</xsl:for-each>

	</div>

	<div id="plat">
		<xsl:attribute name="class">
			content
		</xsl:attribute>
	<xsl:for-each select="root/system">
		<xsl:sort select="."/>
	<div>
		<a>
			<xsl:attribute name="href">
				javascript:void(0)
			</xsl:attribute>
			
			<xsl:attribute name="class">
				sublinks
			</xsl:attribute>

			<xsl:attribute name="onclick">
				showStuff('<xsl:value-of select="." />'); switchColors2(this);
			</xsl:attribute>

			<xsl:value-of select="." /> <br />
		</a>
	</div>
	
	<div>
	<xsl:attribute name="class">
			master
	</xsl:attribute>

	<xsl:attribute name="id">
		<xsl:value-of select='.' />
	</xsl:attribute>
	
	<img> <xsl:attribute name="src"><xsl:value-of select="./@logo" /></xsl:attribute><xsl:attribute name="class">consoleImage</xsl:attribute></img> <br />
	
	<xsl:if test="current()/@id=../game/name/@arc" >
		<h3> There are <xsl:value-of select="count(../game/name/@arc)" /> games for the <xsl:value-of select="." /></h3> <br />
		<xsl:for-each select="../game/name/@arc">
		<xsl:sort select="../."/>
			<div>
				<xsl:attribute name="class">
					yearDiv
				</xsl:attribute>
					<xsl:value-of select="../." />
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select=".././@image" />
						</xsl:attribute>
						
						<xsl:attribute name="class">
							gameImages
						</xsl:attribute>
					</img>
			</div>
		</xsl:for-each>
	</xsl:if> 
	
	<xsl:if test="current()/@id=../game/name/@dos" >
		<h3> There are <xsl:value-of select="count(../game/name/@dos)" /> games for the <xsl:value-of select="." /></h3> <br />
		<xsl:for-each select="../game/name/@dos">
		<xsl:sort select="../."/>
			<div>
				<xsl:attribute name="class">
					yearDiv
				</xsl:attribute>
					<xsl:value-of select="../." />
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select=".././@image" />
						</xsl:attribute>
						
						<xsl:attribute name="class">
							gameImages
						</xsl:attribute>
					</img>
			</div>
		</xsl:for-each>
	</xsl:if> 
	
	<xsl:if test="current()/@id=../game/name/@dre" >
		<h3> There are <xsl:value-of select="count(../game/name/@dre)" /> games for <xsl:value-of select="." /></h3> <br />
		<xsl:for-each select="../game/name/@dre">
		<xsl:sort select="../."/>
			<div>
				<xsl:attribute name="class">
					yearDiv
				</xsl:attribute>
					<xsl:value-of select="../." />
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select=".././@image" />
						</xsl:attribute>
						
						<xsl:attribute name="class">
							gameImages
						</xsl:attribute>
					</img>
			</div>
		</xsl:for-each>
	</xsl:if> 
	
	<xsl:if test="current()/@id=../game/name/@gen" >
		<h3> There are <xsl:value-of select="count(../game/name/@gen)" /> games for the <xsl:value-of select="." /> </h3><br />
		<xsl:for-each select="../game/name/@gen">
		<xsl:sort select="../."/>
			<div>
				<xsl:attribute name="class">
					yearDiv
				</xsl:attribute>
					<xsl:value-of select="../." />
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select=".././@image" />
						</xsl:attribute>
						
						<xsl:attribute name="class">
							gameImages
						</xsl:attribute>
					</img>
			</div>
		</xsl:for-each>
	</xsl:if> 
	
	<xsl:if test="current()/@id=../game/name/@n64" >
		<h3> There are <xsl:value-of select="count(../game/name/@n64)" /> games for the <xsl:value-of select="." /></h3> <br />
		<xsl:for-each select="../game/name/@n64">
		<xsl:sort select="../."/>
			<div>
				<xsl:attribute name="class">
					yearDiv
				</xsl:attribute>
					<xsl:value-of select="../." />
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select=".././@image" />
						</xsl:attribute>
						
						<xsl:attribute name="class">
							gameImages
						</xsl:attribute>
					</img>
			</div>
		</xsl:for-each>
	</xsl:if> 
	
	<xsl:if test="current()/@id=../game/name/@psx" >
		<h3> There are <xsl:value-of select="count(../game/name/@psx)" /> games for the <xsl:value-of select="." /></h3> <br />
		<xsl:for-each select="../game/name/@psx">
		<xsl:sort select="../."/>
			<div>
				<xsl:attribute name="class">
					yearDiv
				</xsl:attribute>
					<xsl:value-of select="../." />
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select=".././@image" />
						</xsl:attribute>
						
						<xsl:attribute name="class">
							gameImages
						</xsl:attribute>
					</img>
			</div>
		</xsl:for-each>
	</xsl:if> 
	
	<xsl:if test="current()/@id=../game/name/@sat" >
		<h3> There are <xsl:value-of select="count(../game/name/@sat)" /> games for the <xsl:value-of select="." /></h3> <br />
		<xsl:for-each select="../game/name/@sat">
		<xsl:sort select="../."/>
			<div>
				<xsl:attribute name="class">
					yearDiv
				</xsl:attribute>
					<xsl:value-of select="../." />
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select=".././@image" />
						</xsl:attribute>
						
						<xsl:attribute name="class">
							gameImages
						</xsl:attribute>
					</img>
			</div>
		</xsl:for-each>
	</xsl:if> 
	
	<xsl:if test="current()/@id=../game/name/@snes" >
		<h3> There are <xsl:value-of select="count(../game/name/@snes)" /> games for the <xsl:value-of select="." /></h3> <br />
		<xsl:for-each select="../game/name/@snes">
		<xsl:sort select="../."/>
			<div>
				<xsl:attribute name="class">
					yearDiv
				</xsl:attribute>
					<xsl:value-of select="../." />
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select=".././@image" />
						</xsl:attribute>
						
						<xsl:attribute name="class">
							gameImages
						</xsl:attribute>
					</img>
			</div>
		</xsl:for-each>
	</xsl:if>
	
	<xsl:if test="current()/@id=../game/name/@win" >
		<h3> There are <xsl:value-of select="count(../game/name/@win)" /> games for the <xsl:value-of select="." /></h3> <br />
		<xsl:for-each select="../game/name/@win">
		<xsl:sort select="../."/>
			<div>
				<xsl:attribute name="class">
					yearDiv
				</xsl:attribute>
					<xsl:value-of select="../." />
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select=".././@image" />
						</xsl:attribute>
						
						<xsl:attribute name="class">
							gameImages
						</xsl:attribute>
					</img>
			</div>
		</xsl:for-each>
	</xsl:if>
	
	<xsl:if test="current()/@id=../game/name/@s32" >
		<h3> There are <xsl:value-of select="count(../game/name/@s32)" /> games for the <xsl:value-of select="." /></h3> <br />
		<xsl:for-each select="../game/name/@s32">
		<xsl:sort select="../."/>
			<div>
				<xsl:attribute name="class">
					yearDiv
				</xsl:attribute>
					<xsl:value-of select="../." />
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select=".././@image" />
						</xsl:attribute>
						
						<xsl:attribute name="class">
							gameImages
						</xsl:attribute>
					</img>
			</div>
		</xsl:for-each>
	</xsl:if>
	
	<xsl:if test="current()/@id=../game/name/@scd" >
		<h3> There are <xsl:value-of select="count(../game/name/@scd)" /> games for the <xsl:value-of select="." /></h3> <br />
		<xsl:for-each select="../game/name/@scd">
		<xsl:sort select="../."/>
			<div>
				<xsl:attribute name="class">
					yearDiv
				</xsl:attribute>
					<xsl:value-of select="../." />
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select=".././@image" />
						</xsl:attribute>
						
						<xsl:attribute name="class">
							gameImages
						</xsl:attribute>
					</img>
			</div>
		</xsl:for-each>
	</xsl:if> 
	
	</div>




	<!-- This div ends #plat -->
	</xsl:for-each>
	</div>



<script src="script.js"></script>

</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>