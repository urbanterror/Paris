
// =====================================
// Shader Paris HD
// Clatoo 22/04/11
//
// Paris v3
// JRandomNoob 2016-09-12
// =====================================

// -------------------------------------
// Ciel / Sky
// -------------------------------------

textures/ut4_paris/stencil_ciel
{
	surfaceparm sky
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nodlight
	nopicmip
	nomipmaps
	q3map_backsplash 0 0
	q3map_lightRGB 213 216 225
	q3map_sunExt 0.835 0.847 0.882 60 45 68 3 16
	q3map_skylight 150 5
 	skyparms - 512 -
	{
		map textures/ut4_paris/ciel02.tga
		tcMod scale 3 3
		tcMod scroll 0.0200 0.00200
	}
}

// -------------------------------------
// Eau canal / Canal water
// -------------------------------------

textures/ut4_paris/eau01
{
	qer_trans 0.5
	q3map_globaltexture
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water
	q3map_cheapwater 2 0.23 0.28 0.21
	cull disable
	sort 5
	deformVertexes wave 64 sin 0.5 0.5 0 0.5
	{
		map textures/ut4_paris/eau02.tga
		blendFunc GL_dst_color GL_one
		rgbGen identity
		tcmod scale 0.15 0.15
		tcmod transform 1.5 0 1.5 1 1 2
		tcmod scroll -.05 0.001
	}
	{
		map textures/ut4_paris/eau03.tga
		blendFunc GL_dst_color GL_one
		rgbGen identity
		tcmod scale 0.15 0.15
		tcmod transform 0 1.5 1 1.5 2 1
		tcmod scroll 0.025 -.001
	}
	{
		map textures/ut4_paris/eau01.tga
		blendFunc GL_dst_color GL_one
		rgbGen identity
		tcmod scale 0.15 0.15
		tcmod scroll 0.001 0.025
	}
	{
		map $lightmap
		blendFunc GL_dst_color GL_zero
		rgbGen identity
	}
}

// -------------------------------------
// Eau egout / Sewer water (slightly different fancywater values from canal water)
// -------------------------------------

textures/ut4_paris/eau01a
{
	qer_trans 0.5
	q3map_globaltexture
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water
	q3map_fancywater 2 0.46 0.56 0.42
	cull disable
	sort 5
	deformVertexes wave 64 sin 0.5 0.5 0 0.5
	{
		map textures/ut4_paris/eau02.tga
		blendFunc GL_dst_color GL_one
		rgbGen identity
		tcmod scale 0.15 0.15
		tcmod transform 1.5 0 1.5 1 1 2
		tcmod scroll -.05 0.001
	}
	{
		map textures/ut4_paris/eau03.tga
		blendFunc GL_dst_color GL_one
		rgbGen identity
		tcmod scale 0.15 0.15
		tcmod transform 0 1.5 1 1.5 2 1
		tcmod scroll 0.025 -.001
	}
	{
		map textures/ut4_paris/eau01a.tga
		blendFunc GL_dst_color GL_one
		rgbGen identity
		tcmod scale 0.15 0.15
		tcmod scroll 0.001 0.025
	}
	{
		map $lightmap
		blendFunc GL_dst_color GL_zero
		rgbGen identity
	}
}

// -------------------------------------
// Chute d'eau / Falling water
// -------------------------------------

textures/ut4_paris/Cascade_01
{
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	cull none
	{
		map textures/ut4_paris/Cascade_01.tga
		tcMod Scroll 0 -1.4 // 0 1.8 // Water was falling upwards:-P
		blendFunc GL_ONE GL_ONE
		rgbGen identity
	}
}

textures/ut4_paris/ecume_04
{
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	cull none
	{
		map textures/ut4_paris/ecume_04.tga
		tcMod turb 0.0 0.05 0.0 0.2
		blendFunc GL_ONE GL_ONE
		rgbGen identity
	}
}

// Seeping water
textures/ut4_paris/eaucoule3
{
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	cull none
	{
		map textures/ut4_paris/eaucoule3.tga
		tcMod turb 0.0 0.08 0.0 0.08
		tcMod Scroll 0 -0.1
		blendFunc GL_ONE GL_ONE
		rgbGen identity
	}
}

// -------------------------------------
// Ecume / Mist clouds under falling water
// -------------------------------------

textures/ut4_paris/ecume_05-1
{
	deformVertexes autoSprite
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	cull none
	{
		clampmap textures/ut4_paris/ecume_05.tga
		alphagen wave sin 1 0.3 0 0.663
		tcMod rotate -17
		tcMod stretch sawtooth 1 0.22 0 0.663
		blendFunc blend
	}
}

textures/ut4_paris/ecume_05-2
{
	deformVertexes autoSprite
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	cull none
	{
		clampmap textures/ut4_paris/ecume_05.tga
		alphagen wave sin 1 0.3 0 0.723
		tcMod rotate 13
		tcMod stretch sawtooth 1 0.17 0 0.723
		blendFunc blend
	}
}

textures/ut4_paris/ecume_05-3
{
	deformVertexes autoSprite
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	cull none
	{
		clampmap textures/ut4_paris/ecume_05.tga
		alphagen wave sin 1 0.3 0 0.67
		tcMod rotate -10
		tcMod stretch sawtooth 1 0.133 0 0.67
		blendFunc blend
	}
}

textures/ut4_paris/ecume_05-4
{
	deformVertexes autoSprite
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	cull none
	{
		clampmap textures/ut4_paris/ecume_05.tga
		alphagen wave sin 1 0.3 0 0.597
		tcMod rotate 14
		tcMod stretch sawtooth 1 0.133 0 0.597
		blendFunc blend
	}
}

// -------------------------------------
// Fenetre / Windows
// -------------------------------------

textures/ut4_paris/fenetre01-right
{
	{
		map textures/ut4_paris/fenetre01.tga
	}
	{
		map textures/ut4_paris/ciel02-reflection.tga
		blendFunc GL_DST_COLOR GL_SRC_COLOR
		tcMod scale 0.25 0.5
		tcMod scroll -0.10 0.002
	}
	{
		map textures/ut4_paris/fenetre01.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_SRC_COLOR
	}
}

textures/ut4_paris/fenetre01-up
{
	{
		map textures/ut4_paris/fenetre01.tga
	}
	{
		map textures/ut4_paris/ciel02-reflection.tga
		blendFunc GL_DST_COLOR GL_SRC_COLOR
		tcMod scale 0.25 0.5
		tcMod scroll 0.002 0.12
	}
	{
		map textures/ut4_paris/fenetre01.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_SRC_COLOR
	}
}

textures/ut4_paris/fenetre01-down
{
	{
		map textures/ut4_paris/fenetre01.tga
	}
	{
		map textures/ut4_paris/ciel02-reflection.tga
		blendFunc GL_DST_COLOR GL_SRC_COLOR
		tcMod scale 0.25 0.5
		tcMod scroll 0.002 -0.12
	}
	{
		map textures/ut4_paris/fenetre01.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_SRC_COLOR
	}
}

textures/ut4_paris/fenetre02-right
{
	{
		map textures/ut4_paris/fenetre02.tga
	}
	{
		map textures/ut4_paris/ciel02-reflection.tga
		blendFunc GL_DST_COLOR GL_SRC_COLOR
		tcMod scale 0.25 0.5
		tcMod scroll -0.10 0.002
	}
	{
		map textures/ut4_paris/fenetre02.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_SRC_COLOR
	}
}

textures/ut4_paris/fenetre02-up
{
	{
		map textures/ut4_paris/fenetre02.tga
	}
	{
		map textures/ut4_paris/ciel02-reflection.tga
		blendFunc GL_DST_COLOR GL_SRC_COLOR
		tcMod scale 0.25 0.5
		tcMod scroll 0.002 0.12
	}
	{
		map textures/ut4_paris/fenetre02.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_SRC_COLOR
	}
}

textures/ut4_paris/fenetre02-down
{
	{
		map textures/ut4_paris/fenetre02.tga
	}
	{
		map textures/ut4_paris/ciel02-reflection.tga
		blendFunc GL_DST_COLOR GL_SRC_COLOR
		tcMod scale 0.25 0.5
		tcMod scroll 0.002 -0.12
	}
	{
		map textures/ut4_paris/fenetre02.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_SRC_COLOR
	}
}

textures/ut4_paris/fenetre01-plain
{
	qer_editorimage textures/ut4_paris/fenetre01
	{
		map textures/ut4_paris/fenetre01.tga
	}
	{
		map textures/ut4_paris/reflection.tga
		tcGen environment
		rgbGen identity
		blendFunc GL_DST_COLOR GL_SRC_COLOR
	}
	{
		map textures/ut4_paris/fenetre01.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_SRC_COLOR
	}
}

textures/ut4_paris/fenetre02-plain
{
	qer_editorimage textures/ut4_paris/fenetre02
	{
		map textures/ut4_paris/fenetre02.tga
	}
	{
		map textures/ut4_paris/reflection.tga
		tcGen environment
		rgbGen identity
		blendFunc GL_DST_COLOR GL_SRC_COLOR
	}
	{
		map textures/ut4_paris/fenetre02.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_SRC_COLOR
	}
}

textures/ut4_paris/fenetre01-lit
{
	qer_editorimage textures/ut4_paris/fenetre01-blend
	q3map_surfacelight 2500
	q3map_lightimage textures/ut4_paris/fenetre-lightimage
	{
		map textures/ut4_paris/fenetre01.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
		rgbGen identity
	}
	{
		map textures/ut4_paris/fenetre01-blend.tga
		blendFunc GL_ONE GL_ONE
	}
}

textures/ut4_paris/fenetre02-lit
{
	qer_editorimage textures/ut4_paris/fenetre02-blend
	q3map_surfacelight 2500
	q3map_lightimage textures/ut4_paris/fenetre-lightimage
	{
		map textures/ut4_paris/fenetre02.tga
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
		rgbGen identity
	}
	{
		map textures/ut4_paris/fenetre02-blend.tga
		blendFunc GL_ONE GL_ONE
	}
}

// -------------------------------------
// Alpha
// -------------------------------------

textures/ut4_paris/fer_01 // Lumière / Ironwork used in lanterns and benches
{
	surfaceparm trans
	surfaceparm nonsolid
	cull none
	nopicmip
	nomipmaps
	{
		map textures/ut4_paris/fer_01.tga
		alphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

// -------------------------------------

textures/ut4_paris/fer_02 // Balcon / Balconies
{
	surfaceparm trans
	surfaceparm nonsolid
	cull none
	nopicmip
	nomipmaps
	{
		map textures/ut4_paris/fer_02.tga
		alphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

// -------------------------------------

textures/ut4_paris/Grille_01 // Grille / Bars
{
	surfaceparm trans
	cull none
	nopicmip
	nomipmaps
	{
		map textures/ut4_paris/Grille_01.tga
		alphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

// -------------------------------------

textures/ut4_paris/fleurs // Fleurs / Flowers
{
	surfaceparm trans
	surfaceparm nonsolid
	cull none
	{
		map textures/ut4_paris/fleurs.tga
		alphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

// -------------------------------------

textures/ut4_paris/herbe_03 // Herbes / Grass with small flowers
{
	surfaceparm trans
	cull none
	nopicmip
	nomipmaps
	{
		map textures/ut4_paris/herbe_03.tga
		alphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

// -------------------------------------

textures/ut4_paris/Plante_02 // Flowers
{
	surfaceparm trans
	surfaceparm nonsolid
	cull none
	{
		map textures/ut4_paris/Plante_02.tga
		alphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/ut4_paris/Plante_03
{
	surfaceparm trans
	surfaceparm nonsolid
	cull none
	{
		map textures/ut4_paris/Plante_03.tga
		alphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/ut4_paris/Plante_04
{
	surfaceparm trans
	surfaceparm nonsolid
	cull none
	{
		map textures/ut4_paris/Plante_04.tga
		alphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

// -------------------------------------

textures/ut4_paris/pigeon
{
	surfaceparm trans
	surfaceparm nonsolid
	cull none
	nopicmip
	nomipmaps
	{
		map textures/ut4_paris/pigeon.tga
		alphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

// -------------------------------------

textures/ut4_paris/peniche_05 // Volant / Barge's wheel
{
	surfaceparm trans
	cull none
	nopicmip
	nomipmaps
	{
		map textures/ut4_paris/peniche_05.tga
		alphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/ut4_paris/peniche_09 // Ancre / Anchor
{
	surfaceparm trans
	surfaceparm nonsolid
	cull none
	nopicmip
	nomipmaps
	{
		map textures/ut4_paris/peniche_09.tga
		alphaFunc GE128
		depthWrite
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

// -------------------------------------

textures/ut4_paris/signe_01
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/signe_01.tga
		blendFunc blend
		rgbGen vertex
	}
}

textures/ut4_paris/signe_02
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/signe_02.tga
		blendFunc blend
		rgbGen vertex
	}
}

textures/ut4_paris/signe_03
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/signe_03.tga
		blendFunc blend
		rgbGen vertex
	}
}

textures/ut4_paris/signe_04
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/signe_04.tga
		blendFunc blend
		rgbGen vertex
	}
}

textures/ut4_paris/signe_05
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/signe_05.tga
		blendFunc blend
		rgbGen vertex
	}
}

// -------------------------------------

textures/ut4_paris/egout_02 // Plaque Egout / Manhole cover
{
//	surfaceparm nomarks
	surfaceparm trans
//	surfaceparm nonsolid
	polygonOffset
	{
		map textures/ut4_paris/egout_02.tga
		blendFunc blend
		rgbGen vertex
	}
}

// -------------------------------------

textures/ut4_paris/trace // Trace homme / Chalk outline
{
	nomipmaps
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nonsolid
	polygonOffset
	{
		map textures/ut4_paris/trace.tga
		blendFunc blend
		rgbGen vertex
	}
}

// -------------------------------------

textures/ut4_paris/Graffiti_1
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/Graffiti_1.tga
		blendFunc filter
	}
}

textures/ut4_paris/Graffiti_2
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/Graffiti_2.tga
		blendFunc filter
	}
}

textures/ut4_paris/Graffiti_3
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/Graffiti_3.tga
		blendFunc filter
	}
}

textures/ut4_paris/Graffiti_4
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/Graffiti_4.tga
		blendFunc filter
	}
}

// -------------------------------------

textures/ut4_paris/affiche_01
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/affiche_01.tga
		blendFunc blend
		rgbGen vertex
	}
}

textures/ut4_paris/affiche_02
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/affiche_02.tga
		blendFunc blend
		rgbGen vertex
	}
}

textures/ut4_paris/affiche_03
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/affiche_03.tga
		blendFunc blend
		rgbGen vertex
	}
}

textures/ut4_paris/affiche_04
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/affiche_04.tga
		blendFunc blend
		rgbGen vertex
	}
}

textures/ut4_paris/affiche_05
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/affiche_05.tga
		blendFunc blend
		rgbGen vertex
	}
}

textures/ut4_paris/splodey
{
	nopicmip
	surfaceparm nonsolid
	{
		map textures/ut4_paris/splodey.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

textures/ut4_paris/french-captains
{
	surfaceparm nolightmap
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/french-captains.tga
		blendFunc blend
		rgbGen vertex
	}
}

textures/ut4_paris/dutch-flag
{
	deformVertexes wave 10 sin 0 1 0 .8
	tessSize 10
	cull none
	{
		map textures/ut4_paris/dutch-flag.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

textures/ut4_paris/uzl
{
	surfaceparm nolightmap
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/uzl.tga
		blendFunc blend
		rgbGen vertex
	}
}

textures/ut4_paris/biddle
{
	qer_editorimage textures/ut4_paris/biddle-1
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	polygonOffset
	{
		animMap 10 textures/ut4_paris/biddle-1.tga textures/ut4_paris/biddle-2.tga textures/ut4_paris/biddle-3.tga textures/ut4_paris/biddle-4.tga textures/ut4_paris/biddle-5.tga textures/ut4_paris/biddle-6.tga textures/ut4_paris/biddle-7.tga textures/ut4_paris/biddle-8.tga
		alphaFunc GE128
		rgbGen vertex
	}
}

textures/ut4_paris/klaatu
{
	surfaceparm nolightmap
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/klaatu.tga
		rgbGen vertex
	}
}

textures/ut4_paris/dednub
{
	surfaceparm nolightmap
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/dednub.tga
		blendFunc blend
		rgbGen vertex
	}
}

textures/ut4_paris/spot-of-tea
{
	surfaceparm nolightmap
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/spot-of-tea.tga
		blendFunc blend
		rgbGen vertex
	}
}

// -------------------------------------

textures/ut4_paris/herboristerie
{
	surfaceparm nolightmap
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/herboristerie.tga
		blendFunc blend
		rgbGen vertex
	}
}

// -------------------------------------
// SG
// -------------------------------------

textures/ut4_paris/sg_1 // Affiche
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/sg_1.tga
		blendFunc blend
		rgbGen vertex
	}
}

textures/ut4_paris/sg_4 // Affiche
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/sg_4.tga
		blendFunc blend
		rgbGen vertex
	}
}

textures/ut4_paris/sg_2 // tag couleur
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/sg_2.tga
		blendFunc filter
	}
}

// -------------------------------------
// Sale / Soot and grime
// -------------------------------------

textures/ut4_paris/sale_01
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/sale_01.tga
		blendFunc filter
	}
}

textures/ut4_paris/sale_02
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/sale_02.tga
		blendFunc filter
	}
}

textures/ut4_paris/sale_03
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/sale_03.tga
		blendFunc filter
	}
}

textures/ut4_paris/sale_03-black
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/sale_03-black.tga
		blendFunc filter
	}
}

textures/ut4_paris/sale_04
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/sale_04.tga
		blendFunc filter
	}
}

textures/ut4_paris/sale_08
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/sale_08.tga
		blendFunc filter
	}
}

textures/ut4_paris/sale_11
{
	polygonOffset
	nopicmip
	{
		map textures/ut4_paris/sale_11.tga
		blendFunc filter
	}
}

// -------------------------------------
// Vitre / Barge windows
// -------------------------------------

textures/ut4_paris/glass
{
	qer_trans 0.3
	surfaceparm trans
	cull disable
	{
		map textures/ut4_paris/reflection.tga
		tcGen environment
		blendFunc GL_ONE GL_ONE
	}
	{
		map textures/ut4_paris/glass.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc filter
	}
}

// -------------------------------------
// Fumé / Smoke and steam
// -------------------------------------

textures/ut4_paris/Vapeur_01
{
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	cull none
	deformvertexes autosprite2
	{
		animMap 8 textures/ut4_paris/Vapeur_01.tga textures/ut4_paris/Vapeur_02.tga textures/ut4_paris/Vapeur_03.tga textures/ut4_paris/Vapeur_04.tga textures/ut4_paris/Vapeur_05.tga textures/ut4_paris/Vapeur_06.tga textures/ut4_paris/Vapeur_07.tga textures/ut4_paris/Vapeur_08.tga
		blendFunc GL_ONE GL_ONE
	}
}

// -------------------------------------
// Flamme / Torch flames
// -------------------------------------

textures/ut4_paris/flame1
{
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	cull none
	deformVertexes autoSprite
	q3map_surfacelight 64
	q3map_lightimage textures/ut4_paris/flame-lightimage
	{
		animMap 10 textures/ut4_paris/flame1.tga textures/ut4_paris/flame2.tga textures/ut4_paris/flame3.tga textures/ut4_paris/flame4.tga textures/ut4_paris/flame5.tga textures/ut4_paris/flame6.tga textures/ut4_paris/flame7.tga textures/ut4_paris/flame8.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave inverseSawtooth 0 1 0 10
	}
	{
		animMap 10 textures/ut4_paris/flame2.tga textures/ut4_paris/flame3.tga textures/ut4_paris/flame4.tga textures/ut4_paris/flame5.tga textures/ut4_paris/flame6.tga textures/ut4_paris/flame7.tga textures/ut4_paris/flame8.tga textures/ut4_paris/flame1.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sawtooth 0 1 0 10
	}
	{
		map textures/ut4_paris/flameball.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sin 0.6 0.2 0 0.6
	}
}

textures/ut4_paris/flame2
{
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	cull none
	deformVertexes autoSprite
	q3map_surfacelight 64
	q3map_lightimage textures/ut4_paris/flame-lightimage
	{
		animMap 10 textures/ut4_paris/flame4.tga textures/ut4_paris/flame5.tga textures/ut4_paris/flame6.tga textures/ut4_paris/flame7.tga textures/ut4_paris/flame8.tga textures/ut4_paris/flame1.tga textures/ut4_paris/flame2.tga textures/ut4_paris/flame3.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave inverseSawtooth 0 1 0 10
	}
	{
		animMap 10 textures/ut4_paris/flame5.tga textures/ut4_paris/flame6.tga textures/ut4_paris/flame7.tga textures/ut4_paris/flame8.tga textures/ut4_paris/flame1.tga textures/ut4_paris/flame2.tga textures/ut4_paris/flame3.tga textures/ut4_paris/flame4.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sawtooth 0 1 0 10
	}
	{
		map textures/ut4_paris/flameball.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sin 0.6 0.2 0 0.6
	}
}

// -------------------------------------
// Lanterns and lights
// -------------------------------------

textures/ut4_paris/divers_01
{
	surfaceparm nolightmap
	{
		map textures/ut4_paris/divers_01.tga
	}
}

textures/ut4_paris/divers_01-nonsolid
{
	surfaceparm nolightmap
	surfaceparm nonsolid
	{
		map textures/ut4_paris/divers_01.tga
	}
}

textures/ut4_paris/lampe
{
	surfaceparm nolightmap
	{
		map textures/ut4_paris/lampe.tga
	}
}

textures/ut4_paris/lampe-nonsolid
{
	surfaceparm nonsolid
	surfaceparm nolightmap
	{
		map textures/ut4_paris/lampe.tga
	}
}

textures/ut4_paris/fluo-light-reflector
{
	surfaceparm nolightmap
	surfaceparm nonsolid
	{
		map textures/ut4_paris/fluo-light-reflector.tga
	}
}

textures/ut4_paris/fluo-light-top
{
	surfaceparm nolightmap
	surfaceparm nonsolid
	{
		map textures/ut4_paris/fluo-light-top.tga
	}
}

textures/ut4_paris/fluo-light-pipe
{
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nonsolid
	{
		map textures/ut4_paris/fluo-light-pipe.tga
	}
}

// -------------------------------------
// Nonsolid
// -------------------------------------

textures/ut4_paris/bordure_05-nonsolid
{
	surfaceparm nonsolid
	{
		map textures/ut4_paris/bordure_05.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

textures/ut4_paris/bordure_07-nonsolid
{
	surfaceparm nonsolid
	{
		map textures/ut4_paris/bordure_07.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

textures/ut4_paris/bordure_08-nonsolid
{
	surfaceparm nonsolid
	{
		map textures/ut4_paris/bordure_08.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

textures/ut4_paris/bordure_09-nonsolid
{
	surfaceparm nonsolid
	{
		map textures/ut4_paris/bordure_09.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

textures/ut4_paris/mur_01-nonsolid
{
	surfaceparm nonsolid
	{
		map textures/ut4_paris/mur_01.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

textures/ut4_paris/mur_02-nonsolid
{
	surfaceparm nonsolid
	{
		map textures/ut4_paris/mur_02.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

textures/ut4_paris/mur_04-phong
{
	q3map_shadeangle 180
	surfaceparm nonsolid
	{
		map textures/ut4_paris/mur_04.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

textures/ut4_paris/mur_04-nonsolid
{
	surfaceparm nonsolid
	{
		map textures/ut4_paris/mur_04.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

textures/ut4_paris/mur_05-nonsolid
{
	surfaceparm nonsolid
	{
		map textures/ut4_paris/mur_05.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

textures/ut4_paris/mur_07-nonsolid
{
	surfaceparm nonsolid
	{
		map textures/ut4_paris/mur_07.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

textures/ut4_paris/mur_07b-phong
{
	q3map_shadeangle 180
	{
		map textures/ut4_paris/mur_07b.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

textures/ut4_paris/mur_08-nonsolid
{
	surfaceparm nonsolid
	{
		map textures/ut4_paris/mur_08.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

textures/ut4_paris/mur_09-nonsolid
{
	surfaceparm nonsolid
	{
		map textures/ut4_paris/mur_09.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

textures/ut4_paris/mur_10-nonsolid
{
	surfaceparm nonsolid
	{
		map textures/ut4_paris/mur_10.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

// -------------------------------------

textures/ut4_paris/route_02-nonsolid // Curbs
{
	surfaceparm nonsolid
	{
		map textures/ut4_paris/route_02.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

// -------------------------------------

textures/ut4_paris/peniche_06-nonsolid // Orange metal
{
	surfaceparm nonsolid
	{
		map textures/ut4_paris/peniche_06.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

// -------------------------------------

textures/ut4_paris/metalnoir-nonsolid
{
	surfaceparm nonsolid
	{
		map textures/ut4_paris/metalnoir.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

textures/ut4_paris/journal_01
{
	surfaceparm nonsolid
	{
		map textures/ut4_paris/journal_01.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

textures/ut4_paris/journal_02
{
	surfaceparm nonsolid
	{
		map textures/ut4_paris/journal_02.tga
	}
	{
		map $lightmap
		blendFunc filter
	}
}

// -------------------------------------
// Remove color splashes
// -------------------------------------

textures/ut4_paris/peniche_06:q3map
{
	{
		map textures/ut4_paris/noir.tga
	}
}

textures/ut4_paris/porte_02:q3map
{
	{
		map textures/ut4_paris/noir.tga
	}
}

textures/ut4_paris/porte_03:q3map
{
	{
		map textures/ut4_paris/noir.tga
	}
}

textures/ut4_paris/Plante_04:q3map
{
	surfaceparm trans
	surfaceparm nonsolid
	cull none
	{
		map textures/ut4_paris/noir.tga
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/ut4_paris/herbe_02:q3map
{
	surfaceparm trans
	cull none
	nopicmip
	nomipmaps
	{
		map textures/ut4_paris/noir.tga
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}
