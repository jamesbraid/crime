### __glim_Enable (IP32CRM32)

Binary `root/usr/gfx/arch/IP32CRM32/libGLcore.so`, routine at 0xd9c2a70, 3244 bytes.

Every value takes this path when [0x1018] == 1: call __glSetError(a0=0x502, a2=[0x1010]); return.

Values with the same outcome as the default, with no leaf of their own: 65458 of 65536 (0x0 to 0xb0f, 0xb11 to 0xb1f, 0xb21 to 0xb23, 0xb25 to 0xb40, 0xb43, 0xb45 to 0xb4f, 0xb51 to 0xb56, 0xb58 to 0xb5f, 0xb61 to 0xb70, 0xb72 to 0xb8f, 0xb91 to 0xba0, 0xba2 to 0xbbf, 0xbc1 to 0xbcf, 0xbd1 to 0xbe1, 0xbe3 to 0xbf0, 0xbf3 to 0xc10, 0xc12 to 0xc5f, 0xc64 to 0xd7f, 0xd81 to 0xd8f, 0xd99 to 0xdaf, 0xdb9 to 0xddf, 0xde2 to 0x2a00, 0x2a03 to 0x2fff, 0x3006 to 0x3fff, 0x4008 to 0x800f, 0x8013 to 0x8023, 0x8025 to 0x802d, 0x802f to 0x8036, 0x8038 to 0x806e, 0x8070 to 0x8073, 0x807a to 0x80bb, 0x80bd to 0x80cf, 0x80d3 to 0x8438, 0x843b to 0xffff). That outcome is: call __glSetError(a0=0x500, a2=[0x1010]); return.

| value | name | decimal | leaf | outcome |
|---|---|---|---|---|
| 0xb10 | GL_POINT_SMOOTH | 2832 | 0xd9c3154 | [ctx+1792] |= 0x400; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xb20 | GL_LINE_SMOOTH | 2848 | 0xd9c2ec8 | [ctx+1792] |= 0x200; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xb24 | GL_LINE_STIPPLE | 2852 | 0xd9c33f4 | [ctx+1792] |= 0x100; [0x1018] w= 2; [ctx+11756] |= 2; return |
| 0xb41 | GL_POLYGON_SMOOTH | 2881 | 0xd9c2d88 | [ctx+1792] |= 0x800; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xb42 | GL_POLYGON_STIPPLE | 2882 | 0xd9c3160 | [ctx+1792] |= 0x2000; [0x1018] w= 2; [ctx+11756] |= 4; return |
| 0xb44 | GL_CULL_FACE | 2884 | 0xd9c31cc | [ctx+1792] |= 0x1000; [0x1018] w= 2; [ctx+11756] |= 4; return (when ([ctx+1792] & 0x1000) == 0) |
| 0xb44 | GL_CULL_FACE | 2884 | - | return (when ([ctx+1792] & 0x1000) != 0) |
| 0xb50 | GL_LIGHTING | 2896 | 0xd9c2f70 | [ctx+1792] |= 0x40; [0x1018] w= 2; [ctx+11756] |= 0x20; call <[ctx+11792]>(); call <[ctx+12000]>(); return |
| 0xb57 | GL_COLOR_MATERIAL | 2903 | 0xd9c36c0 | [ctx+1792] |= 0x80; call <[ctx+11792]>(); call <[ctx+12000]>(); return |
| 0xb60 | GL_FOG | 2912 | 0xd9c2c68 | [ctx+1792] |= 0x20; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xb71 | GL_DEPTH_TEST | 2929 | 0xd9c2b7c | [ctx+1792] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 0x80; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xb90 | GL_STENCIL_TEST | 2960 | 0xd9c33b0 | [ctx+1792] |= 0x8000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xba1 | GL_NORMALIZE | 2977 | 0xd9c3138 | [ctx+1792] |= 0x400000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xbc0 | GL_ALPHA_TEST | 3008 | 0xd9c2ea0 | [ctx+1792] |= 1; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xbd0 | GL_DITHER | 3024 | 0xd9c334c | [ctx+1792] |= 8; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xbe2 | GL_BLEND | 3042 | 0xd9c2cdc | [ctx+1792] |= 2; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xbf1 | GL_INDEX_LOGIC_OP | 3057 | 0xd9c35b0 | [ctx+1792] |= 4; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xbf2 | GL_COLOR_LOGIC_OP | 3058 | 0xd9c3320 | [ctx+1796] |= 0x800; call __glim_BlendEquationEXT(a0=0xbf1, a2=[0x1010]); [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0xd9c305c | [ctx+1792] |= 0x4000; [ctx+31312] w= [ctx+31308]; call <[ctx+11916]>(); call <[ctx+11908]>(); [0x1018] w= 2; [ctx+11756] |= 1; return (when ([ctx+1792] & 0x4000) == 0 and [ctx+1636] != 0 and [ctx+3225] != 0) |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0xd9c305c | [ctx+1792] |= 0x4000; call <[ctx+11916]>(); call <[ctx+11908]>(); [0x1018] w= 2; [ctx+11756] |= 1; return (when ([ctx+1792] & 0x4000) == 0 and [ctx+1636] != 0 and [ctx+3225] == 0) |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0xd9c305c | [ctx+1792] |= 0x4000; call <[ctx+11916]>(); call <[ctx+11908]>(); [0x1018] w= 2; [ctx+11756] |= 1; return (when ([ctx+1792] & 0x4000) == 0 and [ctx+1636] == 0) |
| 0xc11 | GL_SCISSOR_TEST | 3089 | - | return (when ([ctx+1792] & 0x4000) != 0) |
| 0xc60 | GL_TEXTURE_GEN_S | 3168 | 0xd9c3594 | [ctx+1792] |= 0x40000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xc61 | GL_TEXTURE_GEN_T | 3169 | 0xd9c2b10 | [ctx+1792] |= 0x80000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xc62 | GL_TEXTURE_GEN_R | 3170 | 0xd9c3394 | [ctx+1792] |= 0x100000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xc63 | GL_TEXTURE_GEN_Q | 3171 | 0xd9c310c | [ctx+1792] |= 0x200000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd80 | GL_AUTO_NORMAL | 3456 | 0xd9c2e78 | [ctx+1792] |= 0x800000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd90 | GL_MAP1_COLOR_4 | 3472 | 0xd9c2db0 | [ctx+1808] |= 1; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd91 | GL_MAP1_INDEX | 3473 | 0xd9c2db0 | [ctx+1808] |= 2; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd92 | GL_MAP1_NORMAL | 3474 | 0xd9c2db0 | [ctx+1808] |= 4; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd93 | GL_MAP1_TEXTURE_COORD_1 | 3475 | 0xd9c2db0 | [ctx+1808] |= 8; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd94 | GL_MAP1_TEXTURE_COORD_2 | 3476 | 0xd9c2db0 | [ctx+1808] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd95 | GL_MAP1_TEXTURE_COORD_3 | 3477 | 0xd9c2db0 | [ctx+1808] |= 0x20; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd96 | GL_MAP1_TEXTURE_COORD_4 | 3478 | 0xd9c2db0 | [ctx+1808] |= 0x40; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd97 | GL_MAP1_VERTEX_3 | 3479 | 0xd9c2db0 | [ctx+1808] |= 0x80; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd98 | GL_MAP1_VERTEX_4 | 3480 | 0xd9c2db0 | [ctx+1808] |= 0x100; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb0 | GL_MAP2_COLOR_4 | 3504 | 0xd9c2b34 | [ctx+1812] |= 1; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb1 | GL_MAP2_INDEX | 3505 | 0xd9c2b34 | [ctx+1812] |= 2; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb2 | GL_MAP2_NORMAL | 3506 | 0xd9c2b34 | [ctx+1812] |= 4; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb3 | GL_MAP2_TEXTURE_COORD_1 | 3507 | 0xd9c2b34 | [ctx+1812] |= 8; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb4 | GL_MAP2_TEXTURE_COORD_2 | 3508 | 0xd9c2b34 | [ctx+1812] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb5 | GL_MAP2_TEXTURE_COORD_3 | 3509 | 0xd9c2b34 | [ctx+1812] |= 0x20; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb6 | GL_MAP2_TEXTURE_COORD_4 | 3510 | 0xd9c2b34 | [ctx+1812] |= 0x40; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb7 | GL_MAP2_VERTEX_3 | 3511 | 0xd9c2b34 | [ctx+1812] |= 0x80; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb8 | GL_MAP2_VERTEX_4 | 3512 | 0xd9c2b34 | [ctx+1812] |= 0x100; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xde0 | GL_TEXTURE_1D | 3552 | 0xd9c30e0 | [ctx+1792] |= 0x10000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xde1 | GL_TEXTURE_2D | 3553 | 0xd9c2e4c | [ctx+1792] |= 0x20000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x2a01 | GL_POLYGON_OFFSET_POINT | 10753 | 0xd9c32a0 | [ctx+1796] |= 0x200; [0x1018] w= 2; [ctx+11756] |= 4; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x2a02 | GL_POLYGON_OFFSET_LINE | 10754 | 0xd9c2cfc | [ctx+1796] |= 0x400; [0x1018] w= 2; [ctx+11756] |= 4; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x3000 | GL_CLIP_PLANE0 | 12288 | 0xd9c2ef4 | [ctx+1804] |= 1; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x3001 | GL_CLIP_PLANE1 | 12289 | 0xd9c2ef4 | [ctx+1804] |= 2; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x3002 | GL_CLIP_PLANE2 | 12290 | 0xd9c2ef4 | [ctx+1804] |= 4; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x3003 | GL_CLIP_PLANE3 | 12291 | 0xd9c2ef4 | [ctx+1804] |= 8; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x3004 | GL_CLIP_PLANE4 | 12292 | 0xd9c2ef4 | [ctx+1804] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x3005 | GL_CLIP_PLANE5 | 12293 | 0xd9c2ef4 | [ctx+1804] |= 0x20; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x4000 | GL_LIGHT0 | 16384 | 0xd9c2f28 | [ctx+1800] |= 1; [0x1018] w= 2; [ctx+11756] |= 0x20; return |
| 0x4001 | GL_LIGHT1 | 16385 | 0xd9c2f28 | [ctx+1800] |= 2; [0x1018] w= 2; [ctx+11756] |= 0x20; return |
| 0x4002 | GL_LIGHT2 | 16386 | 0xd9c2f28 | [ctx+1800] |= 4; [0x1018] w= 2; [ctx+11756] |= 0x20; return |
| 0x4003 | GL_LIGHT3 | 16387 | 0xd9c2f28 | [ctx+1800] |= 8; [0x1018] w= 2; [ctx+11756] |= 0x20; return |
| 0x4004 | GL_LIGHT4 | 16388 | 0xd9c2f28 | [ctx+1800] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 0x20; return |
| 0x4005 | GL_LIGHT5 | 16389 | 0xd9c2f28 | [ctx+1800] |= 0x20; [0x1018] w= 2; [ctx+11756] |= 0x20; return |
| 0x4006 | GL_LIGHT6 | 16390 | 0xd9c2f28 | [ctx+1800] |= 0x40; [0x1018] w= 2; [ctx+11756] |= 0x20; return |
| 0x4007 | GL_LIGHT7 | 16391 | 0xd9c2f28 | [ctx+1800] |= 0x80; [0x1018] w= 2; [ctx+11756] |= 0x20; return |
| 0x8010 | GL_CONVOLUTION_1D | 32784 | 0xd9c2ac8 | [ctx+1792] |= 0x2000000; [0x1018] w= 2; [ctx+11756] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x8011 | GL_CONVOLUTION_2D | 32785 | 0xd9c3518 | [ctx+1792] |= 0x4000000; [0x1018] w= 2; [ctx+11756] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x8012 | GL_SEPARABLE_2D | 32786 | 0xd9c325c | [ctx+1792] |= 0x8000000; [0x1018] w= 2; [ctx+11756] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x8024 | GL_HISTOGRAM | 32804 | 0xd9c2fec | [ctx+1792] |= 0x10000000; [0x1018] w= 2; [ctx+11756] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x802e | GL_MINMAX | 32814 | 0xd9c34cc | [ctx+1792] |= 0x20000000; [0x1018] w= 2; [ctx+11756] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x8037 | GL_POLYGON_OFFSET_FILL | 32823 | 0xd9c2e04 | [ctx+1792] |= 0x1000000; [0x1018] w= 2; [ctx+11756] |= 4; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x806f | GL_TEXTURE_3D | 32879 | 0xd9c368c | [ctx+1792] |= 0x40000000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x8074 | GL_VERTEX_ARRAY | 32884 | 0xd9c34a8 | [ctx+5356] |= 0x20; [ctx+5344] |= 0xff; return |
| 0x8075 | GL_NORMAL_ARRAY | 32885 | 0xd9c36f4 | [ctx+5356] |= 1; [ctx+5344] |= 0xf00; return |
| 0x8076 | GL_COLOR_ARRAY | 32886 | 0xd9c3228 | [ctx+5356] |= 2; [ctx+5344] |= 0xff000; return |
| 0x8077 | GL_INDEX_ARRAY | 32887 | 0xd9c3368 | [ctx+5356] |= 8; [ctx+5344] |= 0xf0000000; return |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0xd9c3634 | [ctx+5348] |= (1 <<mod32 ([ctx+28212] + -33735)); [ctx+5356] |= 4; [ctx+5344] |= 0x7f00000; return (when ([ctx+28212] + -33735) == 0) |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0xd9c3634 | [ctx+5348] |= (1 <<mod32 ([ctx+28212] + -33735)); return (when ([ctx+28212] + -33735) != 0) |
| 0x8079 | GL_EDGE_FLAG_ARRAY | 32889 | 0xd9c344c | [ctx+5356] |= 0x10; [ctx+5344] |= 0x8000000; return |
| 0x80bc | GL_TEXTURE_COLOR_TABLE_SGI | 32956 | 0xd9c31b0 | [ctx+1792] |= 0x80000000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x80d0 | GL_COLOR_TABLE | 32976 | 0xd9c35f0 | [ctx+1796] |= 1; [0x1018] w= 2; [ctx+11756] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x80d1 | GL_POST_CONVOLUTION_COLOR_TABLE | 32977 | 0xd9c2c9c | [ctx+1796] |= 2; [0x1018] w= 2; [ctx+11756] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x80d2 | GL_POST_COLOR_MATRIX_COLOR_TABLE | 32978 | 0xd9c35c4 | [ctx+1796] |= 4; [0x1018] w= 2; [ctx+11756] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x8439 | GL_TANGENT_ARRAY_SGIX | 33849 | 0xd9c3718 | [ctx+5352] |= 1; return |
| 0x843a | GL_BINORMAL_ARRAY_SGIX | 33850 | 0xd9c33e8 | [ctx+5352] |= 2; return |

78 capability values with a leaf of their own.

### __glim_Disable (IP32CRM32)

Binary `root/usr/gfx/arch/IP32CRM32/libGLcore.so`, routine at 0xd9c3720, 3328 bytes.

Every value takes this path when [0x1018] == 1: call __glSetError(a0=0x502, a2=[0x1010]); return.

Values with the same outcome as the default, with no leaf of their own: 65458 of 65536 (0x0 to 0xb0f, 0xb11 to 0xb1f, 0xb21 to 0xb23, 0xb25 to 0xb40, 0xb43, 0xb45 to 0xb4f, 0xb51 to 0xb56, 0xb58 to 0xb5f, 0xb61 to 0xb70, 0xb72 to 0xb8f, 0xb91 to 0xba0, 0xba2 to 0xbbf, 0xbc1 to 0xbcf, 0xbd1 to 0xbe1, 0xbe3 to 0xbf0, 0xbf3 to 0xc10, 0xc12 to 0xc5f, 0xc64 to 0xd7f, 0xd81 to 0xd8f, 0xd99 to 0xdaf, 0xdb9 to 0xddf, 0xde2 to 0x2a00, 0x2a03 to 0x2fff, 0x3006 to 0x3fff, 0x4008 to 0x800f, 0x8013 to 0x8023, 0x8025 to 0x802d, 0x802f to 0x8036, 0x8038 to 0x806e, 0x8070 to 0x8073, 0x807a to 0x80bb, 0x80bd to 0x80cf, 0x80d3 to 0x8438, 0x843b to 0xffff). That outcome is: call __glSetError(a0=0x500, a2=[0x1010]); return.

| value | name | decimal | leaf | outcome |
|---|---|---|---|---|
| 0xb10 | GL_POINT_SMOOTH | 2832 | 0xd9c3dd0 | [ctx+1792] &= ~0x400; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xb20 | GL_LINE_SMOOTH | 2848 | 0xd9c3b90 | [ctx+1792] &= ~0x200; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xb24 | GL_LINE_STIPPLE | 2852 | 0xd9c40a4 | [ctx+1792] &= ~0x100; [0x1018] w= 2; [ctx+11756] |= 2; return |
| 0xb41 | GL_POLYGON_SMOOTH | 2881 | 0xd9c3a3c | [ctx+1792] &= ~0x800; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xb42 | GL_POLYGON_STIPPLE | 2882 | 0xd9c3de0 | [ctx+1792] &= ~0x2000; [0x1018] w= 2; [ctx+11756] |= 4; return |
| 0xb44 | GL_CULL_FACE | 2884 | 0xd9c3e5c | [ctx+1792] &= ~0x1000; [0x1018] w= 2; [ctx+11756] |= 4; return (when ([ctx+1792] & 0x1000) != 0) |
| 0xb44 | GL_CULL_FACE | 2884 | - | return (when ([ctx+1792] & 0x1000) == 0) |
| 0xb50 | GL_LIGHTING | 2896 | 0xd9c3c38 | [ctx+1792] &= ~0x40; [0x1018] w= 2; [ctx+11756] |= 0x20; call <[ctx+11792]>(); call <[ctx+12000]>(); return |
| 0xb57 | GL_COLOR_MATERIAL | 2903 | 0xd9c436c | [ctx+1792] &= ~0x80; call <[ctx+11792]>(); return |
| 0xb60 | GL_FOG | 2912 | 0xd9c392c | [ctx+1792] &= ~0x20; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xb71 | GL_DEPTH_TEST | 2929 | 0xd9c3840 | [ctx+1792] &= ~0x10; [0x1018] w= 2; [ctx+11756] |= 0x80; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xb90 | GL_STENCIL_TEST | 2960 | 0xd9c405c | [ctx+1792] &= ~0x8000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xba1 | GL_NORMALIZE | 2977 | 0xd9c3db0 | [ctx+1792] &= ~0x400000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xbc0 | GL_ALPHA_TEST | 3008 | 0xd9c3b60 | [ctx+1792] &= ~0x1; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xbd0 | GL_DITHER | 3024 | 0xd9c3fe4 | [ctx+1792] &= ~0x8; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xbe2 | GL_BLEND | 3042 | 0xd9c3994 | [ctx+1792] &= ~0x2; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xbf1 | GL_INDEX_LOGIC_OP | 3057 | 0xd9c4258 | [ctx+1792] &= ~0x4; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xbf2 | GL_COLOR_LOGIC_OP | 3058 | 0xd9c3fc4 | [ctx+1796] &= ~0x800; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xc11 | GL_SCISSOR_TEST | 3089 | 0xd9c439c | [ctx+1792] &= ~0x4000; call __glReadjustZCounts(a0=[0x1010], a2=[0x1010]); call <[ctx+11916]>(); call <[ctx+11908]>(); [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xc60 | GL_TEXTURE_GEN_S | 3168 | 0xd9c3d28 | [ctx+1792] &= ~0x40000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xc61 | GL_TEXTURE_GEN_T | 3169 | 0xd9c37d0 | [ctx+1792] &= ~0x80000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xc62 | GL_TEXTURE_GEN_R | 3170 | 0xd9c4038 | [ctx+1792] &= ~0x100000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xc63 | GL_TEXTURE_GEN_Q | 3171 | 0xd9c3d84 | [ctx+1792] &= ~0x200000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd80 | GL_AUTO_NORMAL | 3456 | 0xd9c3b34 | [ctx+1792] &= ~0x800000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd90 | GL_MAP1_COLOR_4 | 3472 | 0xd9c3a68 | [ctx+1808] &= 0xfffe; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd91 | GL_MAP1_INDEX | 3473 | 0xd9c3a68 | [ctx+1808] &= 0xfffd; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd92 | GL_MAP1_NORMAL | 3474 | 0xd9c3a68 | [ctx+1808] &= 0xfffb; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd93 | GL_MAP1_TEXTURE_COORD_1 | 3475 | 0xd9c3a68 | [ctx+1808] &= 0xfff7; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd94 | GL_MAP1_TEXTURE_COORD_2 | 3476 | 0xd9c3a68 | [ctx+1808] &= 0xffef; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd95 | GL_MAP1_TEXTURE_COORD_3 | 3477 | 0xd9c3a68 | [ctx+1808] &= 0xffdf; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd96 | GL_MAP1_TEXTURE_COORD_4 | 3478 | 0xd9c3a68 | [ctx+1808] &= 0xffbf; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd97 | GL_MAP1_VERTEX_3 | 3479 | 0xd9c3a68 | [ctx+1808] &= 0xff7f; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xd98 | GL_MAP1_VERTEX_4 | 3480 | 0xd9c3a68 | [ctx+1808] &= 0xfeff; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb0 | GL_MAP2_COLOR_4 | 3504 | 0xd9c37f4 | [ctx+1812] &= 0xfffe; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb1 | GL_MAP2_INDEX | 3505 | 0xd9c37f4 | [ctx+1812] &= 0xfffd; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb2 | GL_MAP2_NORMAL | 3506 | 0xd9c37f4 | [ctx+1812] &= 0xfffb; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb3 | GL_MAP2_TEXTURE_COORD_1 | 3507 | 0xd9c37f4 | [ctx+1812] &= 0xfff7; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb4 | GL_MAP2_TEXTURE_COORD_2 | 3508 | 0xd9c37f4 | [ctx+1812] &= 0xffef; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb5 | GL_MAP2_TEXTURE_COORD_3 | 3509 | 0xd9c37f4 | [ctx+1812] &= 0xffdf; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb6 | GL_MAP2_TEXTURE_COORD_4 | 3510 | 0xd9c37f4 | [ctx+1812] &= 0xffbf; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb7 | GL_MAP2_VERTEX_3 | 3511 | 0xd9c37f4 | [ctx+1812] &= 0xff7f; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xdb8 | GL_MAP2_VERTEX_4 | 3512 | 0xd9c37f4 | [ctx+1812] &= 0xfeff; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xde0 | GL_TEXTURE_1D | 3552 | 0xd9c3d58 | [ctx+1792] &= ~0x10000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0xde1 | GL_TEXTURE_2D | 3553 | 0xd9c3b0c | [ctx+1792] &= ~0x20000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x2a01 | GL_POLYGON_OFFSET_POINT | 10753 | 0xd9c3f48 | [ctx+1796] &= ~0x200; [0x1018] w= 2; [ctx+11756] |= 4; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x2a02 | GL_POLYGON_OFFSET_LINE | 10754 | 0xd9c39b4 | [ctx+1796] &= ~0x400; [0x1018] w= 2; [ctx+11756] |= 4; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x3000 | GL_CLIP_PLANE0 | 12288 | 0xd9c3bbc | [ctx+1804] &= ~0x1; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x3001 | GL_CLIP_PLANE1 | 12289 | 0xd9c3bbc | [ctx+1804] &= ~0x2; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x3002 | GL_CLIP_PLANE2 | 12290 | 0xd9c3bbc | [ctx+1804] &= ~0x4; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x3003 | GL_CLIP_PLANE3 | 12291 | 0xd9c3bbc | [ctx+1804] &= ~0x8; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x3004 | GL_CLIP_PLANE4 | 12292 | 0xd9c3bbc | [ctx+1804] &= ~0x10; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x3005 | GL_CLIP_PLANE5 | 12293 | 0xd9c3bbc | [ctx+1804] &= ~0x20; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x4000 | GL_LIGHT0 | 16384 | 0xd9c3bec | [ctx+1800] &= ~0x1; [0x1018] w= 2; [ctx+11756] |= 0x20; return |
| 0x4001 | GL_LIGHT1 | 16385 | 0xd9c3bec | [ctx+1800] &= ~0x2; [0x1018] w= 2; [ctx+11756] |= 0x20; return |
| 0x4002 | GL_LIGHT2 | 16386 | 0xd9c3bec | [ctx+1800] &= ~0x4; [0x1018] w= 2; [ctx+11756] |= 0x20; return |
| 0x4003 | GL_LIGHT3 | 16387 | 0xd9c3bec | [ctx+1800] &= ~0x8; [0x1018] w= 2; [ctx+11756] |= 0x20; return |
| 0x4004 | GL_LIGHT4 | 16388 | 0xd9c3bec | [ctx+1800] &= ~0x10; [0x1018] w= 2; [ctx+11756] |= 0x20; return |
| 0x4005 | GL_LIGHT5 | 16389 | 0xd9c3bec | [ctx+1800] &= ~0x20; [0x1018] w= 2; [ctx+11756] |= 0x20; return |
| 0x4006 | GL_LIGHT6 | 16390 | 0xd9c3bec | [ctx+1800] &= ~0x40; [0x1018] w= 2; [ctx+11756] |= 0x20; return |
| 0x4007 | GL_LIGHT7 | 16391 | 0xd9c3bec | [ctx+1800] &= ~0x80; [0x1018] w= 2; [ctx+11756] |= 0x20; return |
| 0x8010 | GL_CONVOLUTION_1D | 32784 | 0xd9c3784 | [ctx+1792] &= ~0x2000000; [0x1018] w= 2; [ctx+11756] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x8011 | GL_CONVOLUTION_2D | 32785 | 0xd9c41dc | [ctx+1792] &= ~0x4000000; [0x1018] w= 2; [ctx+11756] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x8012 | GL_SEPARABLE_2D | 32786 | 0xd9c3ef8 | [ctx+1792] &= ~0x8000000; [0x1018] w= 2; [ctx+11756] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x8024 | GL_HISTOGRAM | 32804 | 0xd9c3cb4 | [ctx+1792] &= ~0x10000000; [0x1018] w= 2; [ctx+11756] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x802e | GL_MINMAX | 32814 | 0xd9c4188 | [ctx+1792] &= ~0x20000000; [0x1018] w= 2; [ctx+11756] |= 0x10; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x8037 | GL_POLYGON_OFFSET_FILL | 32823 | 0xd9c3ac8 | [ctx+1792] &= ~0x1000000; [0x1018] w= 2; [ctx+11756] |= 4; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x806f | GL_TEXTURE_3D | 32879 | 0xd9c4334 | [ctx+1792] &= ~0x40000000; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x8074 | GL_VERTEX_ARRAY | 32884 | 0xd9c4160 | [ctx+5356] &= ~0x20; [ctx+5344] &= ~0xff; return |
| 0x8075 | GL_NORMAL_ARRAY | 32885 | 0xd9c43f4 | [ctx+5356] &= ~0x1; [ctx+5344] &= ~0xf00; return |
| 0x8076 | GL_COLOR_ARRAY | 32886 | 0xd9c3ec0 | [ctx+5356] &= ~0x2; [ctx+5344] &= ~0xff000; return |
| 0x8077 | GL_INDEX_ARRAY | 32887 | 0xd9c4008 | [ctx+5356] &= ~0x8; [ctx+5344] &= 0xfffffff; return |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0xd9c42d0 | [ctx+5348] &= ~(1 <<mod32 ([ctx+28212] + -33735)); [ctx+5356] &= ~0x4; [ctx+5344] &= ~0x7f00000; return (when ([ctx+28212] + -33735) == 0) |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | 0xd9c42d0 | [ctx+5348] &= ~(1 <<mod32 ([ctx+28212] + -33735)); return (when ([ctx+28212] + -33735) != 0) |
| 0x8079 | GL_EDGE_FLAG_ARRAY | 32889 | 0xd9c4100 | [ctx+5356] &= ~0x10; [ctx+5344] &= ~0x8000000; return |
| 0x80bc | GL_TEXTURE_COLOR_TABLE_SGI | 32956 | 0xd9c3e34 | [ctx+1792] &= 0x7fffffff; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x80d0 | GL_COLOR_TABLE | 32976 | 0xd9c429c | [ctx+1796] &= ~0x1; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x80d1 | GL_POST_CONVOLUTION_COLOR_TABLE | 32977 | 0xd9c396c | [ctx+1796] &= ~0x2; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x80d2 | GL_POST_COLOR_MATRIX_COLOR_TABLE | 32978 | 0xd9c427c | [ctx+1796] &= ~0x4; [0x1018] w= 2; [ctx+11756] |= 1; return |
| 0x8439 | GL_TANGENT_ARRAY_SGIX | 33849 | 0xd9c441c | [ctx+5352] &= ~0x1; return |
| 0x843a | GL_BINORMAL_ARRAY_SGIX | 33850 | 0xd9c4094 | [ctx+5352] &= ~0x2; return |

78 capability values with a leaf of their own.

### __glim_IsEnabled (IP32CRM32)

Binary `root/usr/gfx/arch/IP32CRM32/libGLcore.so`, routine at 0xd9c4420, 2252 bytes.

Every value takes this path when [0x1018] == 1: call __glSetError(a0=0x502, a2=[0x1010]); return 0.

Values with the same outcome as the default, with no leaf of their own: 65455 of 65536 (0x0 to 0xb0f, 0xb11 to 0xb1f, 0xb21 to 0xb23, 0xb25 to 0xb40, 0xb43, 0xb45 to 0xb4f, 0xb51 to 0xb56, 0xb58 to 0xb5f, 0xb61 to 0xb70, 0xb72 to 0xb8f, 0xb91 to 0xba0, 0xba2 to 0xbbf, 0xbc1 to 0xbcf, 0xbd1 to 0xbe1, 0xbe3 to 0xbf0, 0xbf3 to 0xc10, 0xc12 to 0xc5f, 0xc64 to 0xd7f, 0xd81 to 0xd8f, 0xd99 to 0xdaf, 0xdb9 to 0xddf, 0xde2 to 0x2a00, 0x2a03 to 0x2fff, 0x3006 to 0x3fff, 0x4008 to 0x800f, 0x8013 to 0x8023, 0x8025 to 0x802d, 0x802f to 0x8036, 0x8038 to 0x806e, 0x8070 to 0x8073, 0x807a to 0x8093, 0x8095 to 0x80bb, 0x80bd to 0x80cf, 0x80d3 to 0x8138, 0x813a to 0x8438, 0x843b to 0x8567, 0x8569 to 0xffff). That outcome is: call __glSetError(a0=0x500, a2=[0x1010]); return 0.

| value | name | decimal | leaf | outcome |
|---|---|---|---|---|
| 0xb10 | GL_POINT_SMOOTH | 2832 | - | return 1 if ([ctx+1792] & 0x400) is nonzero, else 0 |
| 0xb20 | GL_LINE_SMOOTH | 2848 | - | return 1 if ([ctx+1792] & 0x200) is nonzero, else 0 |
| 0xb24 | GL_LINE_STIPPLE | 2852 | - | return 1 if ([ctx+1792] & 0x100) is nonzero, else 0 |
| 0xb41 | GL_POLYGON_SMOOTH | 2881 | - | return 1 if ([ctx+1792] & 0x800) is nonzero, else 0 |
| 0xb42 | GL_POLYGON_STIPPLE | 2882 | - | return 1 if ([ctx+1792] & 0x2000) is nonzero, else 0 |
| 0xb44 | GL_CULL_FACE | 2884 | - | return 1 if ([ctx+1792] & 0x1000) is nonzero, else 0 |
| 0xb50 | GL_LIGHTING | 2896 | - | return 1 if ([ctx+1792] & 0x40) is nonzero, else 0 |
| 0xb57 | GL_COLOR_MATERIAL | 2903 | - | return 1 if ([ctx+1792] & 0x80) is nonzero, else 0 |
| 0xb60 | GL_FOG | 2912 | - | return 1 if ([ctx+1792] & 0x20) is nonzero, else 0 |
| 0xb71 | GL_DEPTH_TEST | 2929 | - | return 1 if ([ctx+1792] & 0x10) is nonzero, else 0 |
| 0xb90 | GL_STENCIL_TEST | 2960 | - | return 1 if ([ctx+1792] & 0x8000) is nonzero, else 0 |
| 0xba1 | GL_NORMALIZE | 2977 | - | return 1 if ([ctx+1792] & 0x400000) is nonzero, else 0 |
| 0xbc0 | GL_ALPHA_TEST | 3008 | - | return 1 if ([ctx+1792] & 1) is nonzero, else 0 |
| 0xbd0 | GL_DITHER | 3024 | - | return 1 if ([ctx+1792] & 8) is nonzero, else 0 |
| 0xbe2 | GL_BLEND | 3042 | - | return 1 if ([ctx+1792] & 2) is nonzero, else 0 |
| 0xbf1 | GL_INDEX_LOGIC_OP | 3057 | - | return 1 if ([ctx+1792] & 4) is nonzero, else 0 |
| 0xbf2 | GL_COLOR_LOGIC_OP | 3058 | - | return 1 if ([ctx+1796] & 0x800) is nonzero, else 0 |
| 0xc11 | GL_SCISSOR_TEST | 3089 | - | return 1 if ([ctx+1792] & 0x4000) is nonzero, else 0 |
| 0xc60 | GL_TEXTURE_GEN_S | 3168 | - | return 1 if ([ctx+1792] & 0x40000) is nonzero, else 0 |
| 0xc61 | GL_TEXTURE_GEN_T | 3169 | - | return 1 if ([ctx+1792] & 0x80000) is nonzero, else 0 |
| 0xc62 | GL_TEXTURE_GEN_R | 3170 | - | return 1 if ([ctx+1792] & 0x100000) is nonzero, else 0 |
| 0xc63 | GL_TEXTURE_GEN_Q | 3171 | - | return 1 if ([ctx+1792] & 0x200000) is nonzero, else 0 |
| 0xd80 | GL_AUTO_NORMAL | 3456 | - | return 1 if ([ctx+1792] & 0x800000) is nonzero, else 0 |
| 0xd90 | GL_MAP1_COLOR_4 | 3472 | - | return 1 if ([ctx+1808] & 1) is nonzero, else 0 |
| 0xd91 | GL_MAP1_INDEX | 3473 | - | return 1 if ([ctx+1808] & 2) is nonzero, else 0 |
| 0xd92 | GL_MAP1_NORMAL | 3474 | - | return 1 if ([ctx+1808] & 4) is nonzero, else 0 |
| 0xd93 | GL_MAP1_TEXTURE_COORD_1 | 3475 | - | return 1 if ([ctx+1808] & 8) is nonzero, else 0 |
| 0xd94 | GL_MAP1_TEXTURE_COORD_2 | 3476 | - | return 1 if ([ctx+1808] & 0x10) is nonzero, else 0 |
| 0xd95 | GL_MAP1_TEXTURE_COORD_3 | 3477 | - | return 1 if ([ctx+1808] & 0x20) is nonzero, else 0 |
| 0xd96 | GL_MAP1_TEXTURE_COORD_4 | 3478 | - | return 1 if ([ctx+1808] & 0x40) is nonzero, else 0 |
| 0xd97 | GL_MAP1_VERTEX_3 | 3479 | - | return 1 if ([ctx+1808] & 0x80) is nonzero, else 0 |
| 0xd98 | GL_MAP1_VERTEX_4 | 3480 | - | return 1 if ([ctx+1808] & 0x100) is nonzero, else 0 |
| 0xdb0 | GL_MAP2_COLOR_4 | 3504 | - | return 1 if ([ctx+1812] & 1) is nonzero, else 0 |
| 0xdb1 | GL_MAP2_INDEX | 3505 | - | return 1 if ([ctx+1812] & 2) is nonzero, else 0 |
| 0xdb2 | GL_MAP2_NORMAL | 3506 | - | return 1 if ([ctx+1812] & 4) is nonzero, else 0 |
| 0xdb3 | GL_MAP2_TEXTURE_COORD_1 | 3507 | - | return 1 if ([ctx+1812] & 8) is nonzero, else 0 |
| 0xdb4 | GL_MAP2_TEXTURE_COORD_2 | 3508 | - | return 1 if ([ctx+1812] & 0x10) is nonzero, else 0 |
| 0xdb5 | GL_MAP2_TEXTURE_COORD_3 | 3509 | - | return 1 if ([ctx+1812] & 0x20) is nonzero, else 0 |
| 0xdb6 | GL_MAP2_TEXTURE_COORD_4 | 3510 | - | return 1 if ([ctx+1812] & 0x40) is nonzero, else 0 |
| 0xdb7 | GL_MAP2_VERTEX_3 | 3511 | - | return 1 if ([ctx+1812] & 0x80) is nonzero, else 0 |
| 0xdb8 | GL_MAP2_VERTEX_4 | 3512 | - | return 1 if ([ctx+1812] & 0x100) is nonzero, else 0 |
| 0xde0 | GL_TEXTURE_1D | 3552 | - | return 1 if ([ctx+1792] & 0x10000) is nonzero, else 0 |
| 0xde1 | GL_TEXTURE_2D | 3553 | - | return 1 if ([ctx+1792] & 0x20000) is nonzero, else 0 |
| 0x2a01 | GL_POLYGON_OFFSET_POINT | 10753 | - | return 1 if ([ctx+1796] & 0x200) is nonzero, else 0 |
| 0x2a02 | GL_POLYGON_OFFSET_LINE | 10754 | - | return 1 if ([ctx+1796] & 0x400) is nonzero, else 0 |
| 0x3000 | GL_CLIP_PLANE0 | 12288 | - | return 1 if ([ctx+1804] & 1) is nonzero, else 0 |
| 0x3001 | GL_CLIP_PLANE1 | 12289 | - | return 1 if ([ctx+1804] & 2) is nonzero, else 0 |
| 0x3002 | GL_CLIP_PLANE2 | 12290 | - | return 1 if ([ctx+1804] & 4) is nonzero, else 0 |
| 0x3003 | GL_CLIP_PLANE3 | 12291 | - | return 1 if ([ctx+1804] & 8) is nonzero, else 0 |
| 0x3004 | GL_CLIP_PLANE4 | 12292 | - | return 1 if ([ctx+1804] & 0x10) is nonzero, else 0 |
| 0x3005 | GL_CLIP_PLANE5 | 12293 | - | return 1 if ([ctx+1804] & 0x20) is nonzero, else 0 |
| 0x4000 | GL_LIGHT0 | 16384 | - | return 1 if ([ctx+1800] & 1) is nonzero, else 0 |
| 0x4001 | GL_LIGHT1 | 16385 | - | return 1 if ([ctx+1800] & 2) is nonzero, else 0 |
| 0x4002 | GL_LIGHT2 | 16386 | - | return 1 if ([ctx+1800] & 4) is nonzero, else 0 |
| 0x4003 | GL_LIGHT3 | 16387 | - | return 1 if ([ctx+1800] & 8) is nonzero, else 0 |
| 0x4004 | GL_LIGHT4 | 16388 | - | return 1 if ([ctx+1800] & 0x10) is nonzero, else 0 |
| 0x4005 | GL_LIGHT5 | 16389 | - | return 1 if ([ctx+1800] & 0x20) is nonzero, else 0 |
| 0x4006 | GL_LIGHT6 | 16390 | - | return 1 if ([ctx+1800] & 0x40) is nonzero, else 0 |
| 0x4007 | GL_LIGHT7 | 16391 | - | return 1 if ([ctx+1800] & 0x80) is nonzero, else 0 |
| 0x8010 | GL_CONVOLUTION_1D | 32784 | - | return 1 if ([ctx+1792] & 0x2000000) is nonzero, else 0 |
| 0x8011 | GL_CONVOLUTION_2D | 32785 | - | return 1 if ([ctx+1792] & 0x4000000) is nonzero, else 0 |
| 0x8012 | GL_SEPARABLE_2D | 32786 | - | return 1 if ([ctx+1792] & 0x8000000) is nonzero, else 0 |
| 0x8024 | GL_HISTOGRAM | 32804 | - | return 1 if ([ctx+1792] & 0x10000000) is nonzero, else 0 |
| 0x802e | GL_MINMAX | 32814 | - | return 1 if ([ctx+1792] & 0x20000000) is nonzero, else 0 |
| 0x8037 | GL_POLYGON_OFFSET_FILL | 32823 | - | return 1 if ([ctx+1792] & 0x1000000) is nonzero, else 0 |
| 0x806f | GL_TEXTURE_3D | 32879 | - | return 1 if ([ctx+1792] & 0x40000000) is nonzero, else 0 |
| 0x8074 | GL_VERTEX_ARRAY | 32884 | - | return 1 if ([ctx+5344] & 0xff) is nonzero, else 0 |
| 0x8075 | GL_NORMAL_ARRAY | 32885 | - | return 1 if ([ctx+5344] & 0xf00) is nonzero, else 0 |
| 0x8076 | GL_COLOR_ARRAY | 32886 | - | return 1 if ([ctx+5344] & 0xff000) is nonzero, else 0 |
| 0x8077 | GL_INDEX_ARRAY | 32887 | - | return 1 if ([ctx+5344] & 0xf0000000) is nonzero, else 0 |
| 0x8078 | GL_TEXTURE_COORD_ARRAY | 32888 | - | return 1 if ([ctx+5344] & 0x7f00000) is nonzero, else 0 |
| 0x8079 | GL_EDGE_FLAG_ARRAY | 32889 | - | return 1 if ([ctx+5344] & 0x8000000) is nonzero, else 0 |
| 0x8094 | GL_INTERLACE_SGIX | 32916 | - | return 1 if ([ctx+1796] & 0x20) is nonzero, else 0 |
| 0x80bc | GL_TEXTURE_COLOR_TABLE_SGI | 32956 | - | return 1 if ([ctx+1792] & 0x80000000) is nonzero, else 0 |
| 0x80d0 | GL_COLOR_TABLE | 32976 | - | return 1 if ([ctx+1796] & 1) is nonzero, else 0 |
| 0x80d1 | GL_POST_CONVOLUTION_COLOR_TABLE | 32977 | - | return 1 if ([ctx+1796] & 2) is nonzero, else 0 |
| 0x80d2 | GL_POST_COLOR_MATRIX_COLOR_TABLE | 32978 | - | return 1 if ([ctx+1796] & 4) is nonzero, else 0 |
| 0x8139 | GL_PIXEL_TEX_GEN_SGIX | 33081 | - | return 1 if ([ctx+1796] & 0x4000) is nonzero, else 0 |
| 0x8439 | GL_TANGENT_ARRAY_SGIX | 33849 | - | return 1 if ([ctx+5352] & 1) is nonzero, else 0 |
| 0x843a | GL_BINORMAL_ARRAY_SGIX | 33850 | - | return 1 if ([ctx+5352] & 2) is nonzero, else 0 |
| 0x8568 | GL_INTERLACE_READ_INGR | 34152 | - | return 1 if ([ctx+1796] & 0x20000) is nonzero, else 0 |

81 capability values with a leaf of their own.

