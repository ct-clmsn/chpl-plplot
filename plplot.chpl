/*
   Chapel binding for PLplot

   11MAY2015 
*/
module plplot {

   extern type PLPointer;

   extern proc plinit();
   extern proc plsdev(devname:c_string);
   extern proc plend();

   extern var PL_BIN_DEFAULT, PL_BIN_CENTRED, PL_BIN_NOEXPAND, PL_BIN_NOEMPTY:int;

   extern var PL_HIST_DEFAULT, PL_HIST_NOSCALING, PL_HIST_NOEXPAND, PL_HIST_NOEMPTY:int;

   extern proc plsvpa(xmin:real, xmax:real, ymin:real, ymax:real);
   extern proc plsvpa(aspect:real);
   extern proc plenv(xmin:real, xmax:real, ymin:real, ymax:real, just:int, axis:int);

   extern proc plline(n:int, const x : [] real, const y: [] real);
   extern proc plline3(n:int, const x:[]real, const y:[]real, const z:[]real);

   extern proc plpoin(n:int, x : [] real, y: [] real);
   extern proc plbin(nbin:int, x : [] real, y : [] real, opt:int);
   extern proc plhist(n:int, x:[] real, datmin:real, datmax:real, nbin:int, opt:int); 
   extern proc plerrx(n:int, xmin:[] real, xmax:[] real, y:[] real);
   extern proc plerry(n:int, ymin:[] real, ymax:[] real, y:[] real);

   extern proc pl_setcontlabelformat(lexp:int, sigdig:int);
   extern proc pl_setcontlabelparam (offset:real, size:real, spacing:real, active:int); 
   extern proc pladv(input:int);
   extern proc plarc(x:real, y:real, a:real, b:real, angle1:real, angle2:real, rotate:real, fill:bool);
   extern proc plaxes(x0:real, y0:real, xopt:c_string, xtick:real, nxsub:int, yopt:c_string, ytick:real, nysub:int);
   extern proc plbop();
   extern proc plbox(xopt:c_string, xtick:real, nxsub:int, yopt:c_string, ytick:real, nysub:int);
   extern proc plbox3(xopt:c_string, xlabel:c_string, xtick:real, nxsub:int, yopt:c_string, ylabel:c_string, ytick:real, nysub:int, zopt:c_string, zlabel:c_string, ztick:real, nzsub:int);
   extern proc plbtime(year:[]int, month:[]int, day:[]int, hour:[]int, min:[]int, sec:[]real, ctime:real);
   extern proc plcalc_world(rx:real, ry:real, wx:[]real, wy:[]real, window:[]int);
   extern proc plclear();

   extern proc plcol0(icol0:int);
   extern proc plcol1(col1:int);
   extern proc plcolorbar(p_colorbar_width:[]real, p_colorbar_height:[]real, opt:int, position:int, x:real, y:real, x_length:real, y_length:real, bg_color:int, bb_color:int, bb_style:int, low_cap_color:real, high_cap_color:real, cont_color:int, cont_width:real, n_labels:int, label_opts:[]int, labels:c_string, n_axes:int, axis_opts:c_string, ticks:[]real, sub_ticks:[] int, n_values:[] int, values:[]real);

   extern proc plconfigtime(scale:real, offset1:real, offset2:real, ccontrol:int, ifbtime_offset:bool, year:int, month:int, day:int, hour:int, min:int, sec:real);
   //extern proc plcont(f: [] real, nx:int, ny:int, kx:int, lx:int, ky:int, ly:int, clevel:[]real, nlevel:int, pltr : func(x:real, y:real, tx:[] real, ty:real, pltr_data:PLPointer), pltr_data : PLPointer );

   extern proc plcpstrm (iplsr:int,flags:bool);
   extern proc plctime(year:int, month:int, day:int, hour:int, min:int, sec:int, ctime:[]int);
   extern proc pl_end();
   extern proc pl_end1();
   extern proc pl_env(xmin:real, xmax:real, ymin:real, ymax:real, just:int, axis:int);
   extern proc pl_env0(xmin:real, xmax:real, ymin:real, ymax:real, just:int, axis:int);
   extern proc pleop();
   extern proc plerrx();
   extern proc plerry();
   extern proc plfamadv();
   extern proc plfill(n:int, x:[] real, y:[]real);
   extern proc plfill3(n:int, x:[] real, y:[]real, z:[]real);
   extern proc plflush();

   /* 
     font specification

     1: Normal font (simplest and fastest)
     2: Roman font
     3: Italic font
     4: Script font 
   */
   extern proc plfont(ifont:int);
   extern proc plfontld(fnt:int); // 0 standard, 1 extended
   extern proc plgchr(p_def:[]real, p_ht:[]real);
   extern proc plgcmap1_range(min_color:[]real, max_color:[]real);
   extern proc plgcol0(icol0:int, r:[]int, g:[]int, b:[]int);
   extern proc plgcol0a(icol0:int, r:[]int, g:[]int, b:[]int, a:[]real);
   extern proc plgcolbg(r:[]int, g:[]int, b:[]int);
   extern proc plgcolbga(r:[]int, g:[]int, b:[]int, a:[]real);
   extern proc plgcompression(compression:[]int);
   extern proc plgdev(p_dev:c_string);
   extern proc plgdidev(p_mar:[]real, p_aspect:[]real, p_jx:[]real, p_jy:[]real);
   extern proc plgdiori(p_rot:[]real);
   extern proc plgdiplt(p_xmin:[]real, p_ymin:[]real, p_xmax:[]real, p_ymax:[]real);
   extern proc plgdrawmode();
   extern proc plgfam(p_fam:[]int, p_num:[]int, p_bmax:[]int);

   //extern type PLUNICODE; // 32 bit unsigned int
   //extern proc plgfci(p_fci:uint(32)); 
   extern proc plgfnam(fnam:c_string);
   extern proc plgfont(ref p_family:int, ref p_style:int, ref p_weight:int);
   extern proc plglevel(ref p_level:int); // 0 uninit, 1 init, 2 viewport def, 3 world coords def
   extern proc plgpage(ref p_xp:real, ref p_yp:real, ref p_xleng:int, ref p_yleng:int, ref p_xoff:int, ref p_yoff:int);
   extern proc plgra();

   extern var GRID_CSA, GRID_DTLI, GRID_NNI, GRID_NNIDW, GRID_NNLI, GRID_NNAIW:int;
   extern proc plgriddata(const x:[]real, const y:[]real, const z:[]real, npts:int, const xg:[]real, nptsx:int, const yg:[]real, nptsy:int, ref zg:[] real, typ:int, data:real);

   extern proc plgspa(xmin:[]real, xmax:[]real, ymin:[]real, ymax:[]real);
   extern proc plgstrm(ref p_strm:int); 
   extern proc plgver(p_ver:c_string); 
   extern proc plgvpd(p_xmin, p_xmax, p_ymin, p_ymax);
   extern proc plgvpw(p_xmin, p_xmax, p_ymin, p_ymax);
   extern proc pllsty(lin:int);
   extern proc plgxax(ref p_digmax, ref p_digits);
   extern proc plgyax(ref p_digmax, ref p_digits);
   extern proc plgzax(ref p_digmax, ref p_digits);
   
   extern proc plhist(n:int, ref data:real, datmin:real, datmax:real, nbin:int, opt:int);

   extern proc plhlsrgb(h:real, l:real, s:real, ref p_r:real, ref p_g:real, ref p_b:real);
   //extern proc plimagefr(idata:[]real, nx:int, ny:int, xmin:int, xmax:int, ymin:int, ymax:int, zmin:int, zmax:int, valuemin:real, valuemax:real, ref pltr: func(real, real, ref real,  ), pltr_data);

   extern proc pljoin(x1:real, y1:real, x2:real, y2:real);
   extern proc pllab(xlabel:c_string, ylabel:c_string, tlabel:c_string);

   extern var PL_LEGEND_BOUNDING_BOX, PL_LEGEND_TEXT_LEFT,  PL_LEGEND_TEXT_RIGHT, PL_LEGEND_ROW_MAJOR : int;
   extern proc pllegend(ref p_legend_width:real, ref p_legend_height:real, opt:int, position:int, x:real, y:real, plot_width:real, bg_color:int, bb_color:int, bb_style:int, nrow:int, ncolumn:int, nlegend:int, const opt_array:[]int, text_offset:real, text_scale:real, text_spacing:real, text_justification:real, const text_colors:[]int, const text:c_string, const box_colors:[]int, const box_patterns:[]int, const box_scales:[]real, const box_line_widths:[]real, const line_colors:[]int, const line_styles:[]int, const line_widths:[]real, const symbol_colors:[]int, const symbol_scales:[]real, const symbol_numbers:[]int, const symbols:[]c_string);

   extern proc pllightsource(x:real,y:real,z:real);

   //extern proc plmap(ref mapform : func(int, []real, []real), name:c_string, minx:real, maxx:real, miny:real, maxy:real);
   //extern proc plmapfill
   //extern proc plmapline
   //plmapstring
   //plmaptex
   //plmeridians

   extern var DRAW_LINEX, DRAW_LINEY, DRAW_LINEXY, MAG_COLOR, BASE_CONT, DRAW_SIDES: int;
   extern proc plmesh(ref x:[]real, ref y:[]real, ref z:[]real, nx:int, ny:int, opt:int);

   extern proc plmeshc(ref x:[]real, ref y:[]real, ref z:[]real, nx:int, ny:int, opt:int, ref clevel:[]real, nlevel:int);

   extern proc plmkstrm(p_strm:[]int);

   extern proc plmtex(ref side:c_string, disp:real, pos:real, just:real, ref text:c_string);
   extern proc plmtex3(ref side:c_string, disp:real, pos:real, just:real, ref text:c_string);

   extern proc plot3d(ref x:[]real, ref y:[]real, ref z:[]real, nx:int, ny:int, opt:int, side:bool);
   extern proc plot3dc(ref x:[]real, ref y:[]real, ref z:[]real, nx:int, ny:int, opt:int, ref clevel:[]real, nlevel:int);
   extern proc plot3dcl(ref x:[]real, ref y:[]real, ref z:[]real, nx:int, ny:int, opt:int, ref clevel:[]real, nlevel:int, indexxmin:int, indexxmax:int, ref indexymin:[]int, ref indexymax:[]int); 

   extern proc plparseopts(ref p_argc:int, const argv:[]c_string, mode:int);

   extern proc plpat(nlin:int, ref inc:[]int, ref del:[]int);

   extern proc plpath(n:int, x1:real, y1:real, x2:real, y2:real);

   extern proc plpoin(n:int, ref x:[]real, ref y:[]real, code:int);
   extern proc plpoin3(n:int, ref x:[]real, ref y:[]real, ref z:[]real, code:int);

   extern proc plpoly3(n:int, ref x:[]real, ref y:[]real, ref z:[]real, ref draw:[]bool, ifcc:bool);   

   extern proc plprec(setp:int, prec:int);

   extern proc plpsty(patt:int);
   extern proc plptex(x:real, y:real, dx:real, dy:real, just:real, const text:c_string);
   extern proc plptex3(x:real, y:real, z:real, dx:real, dy:real, dz:real, sx:real, sy:real, sz:real, just:real, const text:c_string);

   extern proc plrandd();
   extern proc plreplot();
   extern proc plrgbhls(r:real, g:real, b:real, ref p_h:real, ref p_l:real, ref p_s:real);

   extern proc plschr(def:real, scale:real);
   extern proc plscmap0(ref r:[]int, ref g:[]int, ref b:[]int, ncol0:int);
   extern proc plscmap0a(ref r:[]int, ref g:[]int, ref b:[]int, ref alpha:[]real, ncol0:int);
   extern proc plscmap0n(ncol0:int);
   extern proc plscmap1_range(min_color:real, max_color:real);
   extern proc plscamp1(ref r:[]int, ref g:[]int, ref b:[]int, ncol1:int);

   extern proc plscamp1a(ref r:[]int, ref g:[]int, ref b:[]int, ref alpha:[]real, ncol1:int);
   extern proc plscmap1l(itype:bool, npts:int, ref intensity:[]real, ref coord1:[]real, ref coord2:[]real, ref coord3:[], ref alt_hue_path:[]bool);
}
