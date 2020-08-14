
// =====================================
// Shader Paris
// Clatoo 20/03/09
// =====================================

// ------------------------------------- 
// Ciel
// ------------------------------------- 

textures/paris/stencil_ciel
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 800
	q3map_lightRGB 255 255 255
	qer_editorimage textures/paris/stencil_ciel.tga
 	skyparms - 512 -
	{
		map textures/paris/ciel01.jpg
		tcMod scale 3 3 //4 4
		tcMod scroll 0.0200 0.00200
	}
}

// ------------------------------------- 
// Eau
// ------------------------------------- 

textures/paris/eau01
{
	qer_editorimage textures/paris/eau01.jpg
	qer_trans .5
	q3map_globaltexture
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water
	cull disable
	deformVertexes wave 64 sin .5 .5 0 .5	
	{ 
		map textures/paris/eau02.jpg
		blendFunc GL_dst_color GL_one
		rgbgen identity
		tcmod scale .15 .15
		tcmod transform 1.5 0 1.5 1 1 2
		tcmod scroll -.05 .001
	}
	{ 
		map textures/paris/eau03.jpg
		blendFunc GL_dst_color GL_one
		rgbgen identity
		tcmod scale .15 .15
		tcmod transform 0 1.5 1 1.5 2 1
		tcmod scroll .025 -.001
	}
	{ 
		map textures/paris/eau01.jpg
		blendFunc GL_dst_color GL_one
		rgbgen identity
		tcmod scale .15 .15
		tcmod scroll .001 .025
	}	
	{
		map $lightmap
		blendFunc GL_dst_color GL_zero
		rgbgen identity		
	}
}

// ------------------------------------- 
// Echelle
// ------------------------------------- 

textures/paris/ladderclip
{
	qer_trans 0.3
	surfaceparm ladder
	surfaceparm nodraw
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm playerclip
	surfaceparm trans
}

// ------------------------------------- 
// Utiliser avec les Hints
// ------------------------------------- 

textures/paris/skip
{
	qer_nocarve
	qer_trans 0.30
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm skip
	surfaceparm structural
	surfaceparm trans
}

// ------------------------------------- 
// Fenetre
// ------------------------------------- 

textures/paris/fenetre01
{
	{	
		map textures/paris/fenetre01.tga
	}
	{
		map textures/paris/reflet01.tga
		tcgen environment
		blendFunc GL_ONE GL_ONE
		tcMod scroll 0.0200 0.00200
	}

	{
		map textures/paris/fenetre01.tga
   		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_SRC_COLOR 
	}
}

textures/paris/fenetre02
{
	{	
		map textures/paris/fenetre02.tga
	}
	{
		map textures/paris/reflet01.tga
		tcgen environment
		blendFunc GL_ONE GL_ONE
		tcMod scroll 0.0200 0.00200
	}

	{
		map textures/paris/fenetre02.tga
   		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_SRC_COLOR 
	}
}

// ------------------------------------- 
// Alpha
// ------------------------------------- 

textures/paris/fer_01			// Lumière
{
	surfaceparm trans
	surfaceparm nolightmap
	cull none
	nopicmip
	nomipmaps
	{
		map textures/paris/fer_01.tga
		AlphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

// ------------------------------------- 

textures/paris/fer_02			// Balcon
{
	surfaceparm trans
	surfaceparm nolightmap
	cull none
	nopicmip
	nomipmaps
	{
		map textures/paris/fer_02.tga
		AlphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

// ------------------------------------- 

textures/paris/fleurs			// Fleurs
{
	surfaceparm trans
	surfaceparm nolightmap
	cull none
	nopicmip
	nomipmaps
	{
		map textures/paris/fleurs.tga
		AlphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

// ------------------------------------- 

textures/paris/signe_01			// Signe01
{
	polygonoffset
	nopicmip
	{
		map textures/paris/signe_01.tga
		blendfunc blend
		rgbgen vertex
	}
}

textures/paris/signe_02			// Signe02
{
	polygonoffset
	nopicmip
	{
		map textures/paris/signe_02.tga
		blendfunc blend
		rgbgen vertex
	}
}

textures/paris/signe_03			// Signe03
{
	polygonoffset
	nopicmip
	{
		map textures/paris/signe_03.tga
		blendfunc blend
		rgbgen vertex
	}
}

textures/paris/signe_04			// Signe04
{
	polygonoffset
	nopicmip
	{
		map textures/paris/signe_04.tga
		blendfunc blend
		rgbgen vertex
	}
}

textures/paris/signe_05			// Signe05
{
	polygonoffset
	nopicmip
	{
		map textures/paris/signe_05.tga
		blendfunc blend
		rgbgen vertex
	}
}

// ------------------------------------- 

textures/paris/egout_02			// Plaque Egout
{
	polygonoffset
	surfaceparm nomarks
	nopicmip
	{
		map textures/paris/egout_02.tga
		blendfunc blend
		rgbgen vertex
	}
}

// ------------------------------------- 

textures/paris/trace			// Trace homme
{
	polygonoffset
	surfaceparm nomarks
	nopicmip
	{
		map textures/paris/trace.tga
		blendfunc blend
		rgbgen vertex
	}
}

// ------------------------------------- 

textures/paris/Graffiti_1		// Graffiti
{
	polygonoffset
	nopicmip
	{
		map textures/paris/Graffiti_1.tga
		blendfunc filter
	}
}

textures/paris/Graffiti_2		// Graffiti
{
	polygonoffset
	nopicmip
	{
		map textures/paris/Graffiti_2.tga
		blendfunc filter
	}
}

textures/paris/Graffiti_3		// Graffiti
{
	polygonoffset
	nopicmip
	{
		map textures/paris/Graffiti_3.tga
		blendfunc filter
	}
}

textures/paris/Graffiti_4		// Graffiti
{
	polygonoffset
	nopicmip
	{
		map textures/paris/Graffiti_4.tga
		blendfunc filter
	}
}

// ------------------------------------- 

textures/paris/affiche_01		// Affiche
{
	polygonoffset
	nopicmip
	{
		map textures/paris/affiche_01.tga
		blendfunc blend
		rgbgen vertex
	}
}

textures/paris/affiche_02		// Affiche
{
	polygonoffset
	nopicmip
	{
		map textures/paris/affiche_02.tga
		blendfunc blend
		rgbgen vertex
	}
}

textures/paris/affiche_03		// Affiche
{
	polygonoffset
	nopicmip
	{
		map textures/paris/affiche_03.tga
		blendfunc blend
		rgbgen vertex
	}
}

textures/paris/affiche_04		// Affiche
{
	polygonoffset
	nopicmip
	{
		map textures/paris/affiche_04.tga
		blendfunc blend
		rgbgen vertex
	}
}

textures/paris/affiche_05		// Affiche
{
	polygonoffset
	nopicmip
	{
		map textures/paris/affiche_05.tga
		blendfunc blend
		rgbgen vertex
	}
}

// ------------------------------------- 
// SG
// ------------------------------------- 

textures/paris/sg_1			// Affiche
{
	polygonoffset
	nopicmip
	{
		map textures/paris/sg_1.tga
		blendfunc blend
		rgbgen vertex
	}
}

textures/paris/sg_4			// Affiche
{
	polygonoffset
	nopicmip
	{
		map textures/paris/sg_4.tga
		blendfunc blend
		rgbgen vertex
	}
}

textures/paris/sg_2			// tag couleur
{
	polygonoffset
	nopicmip
	{
		map textures/paris/sg_2.tga
		blendfunc filter
	}
}

// ------------------------------------- 
// Vitre
// ------------------------------------- 

textures/paris/reflet02
{
	qer_editorimage textures/paris/reflet02.tga
	qer_trans 0.5
	surfaceparm nolightmap
	surfaceparm trans
	{
		map textures/paris/reflet02.tga
		tcGen environment
		blendfunc GL_ONE GL_ONE
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc filter
	}
}
