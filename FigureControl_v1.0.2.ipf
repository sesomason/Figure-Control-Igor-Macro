#pragma TextEncoding = "UTF-8"
#pragma rtGlobals=3		// Use modern global access method and strict wave access.


Window FigureCont() : Panel
	Dowindow FigureCont
	if(V_flag==1)
		Dowindow/F FigureCont
		Abort
	endif
	PauseUpdate; Silent 1		// building window...
	FigCon_SetUPFigureControl()
	
	NewPanel /W=(615,79,823,449)
	ModifyPanel cbRGB=(16385,49025,65535)
	SetDrawLayer UserBack
	SetDrawEnv fstyle= 1,textrgb= (32769,65535,32768)
	DrawText 17,322,"Axis Range"
	SetDrawEnv fsize= 10
	DrawText 72,173,"left"
	SetDrawEnv fsize= 10
	DrawText 132,173,"btm"
	SetDrawEnv fsize= 10
	DrawText 73,193,"left"
	SetDrawEnv fsize= 10
	DrawText 132,193,"btm"
	SetDrawEnv fsize= 9,textrgb= (65535,54611,49151)
	DrawText 112,145,"s.off"
	SetDrawEnv fsize= 9,textrgb= (65535,60076,49151)
	DrawText 175,145,"s.off"
	SetDrawEnv textrgb= (65535,60076,49151)
	DrawText 33,173,"mirror"
	SetDrawEnv fname= "Arial",fsize= 10
	DrawText 79,209,"auto#"
	SetDrawEnv fname= "Arial",fsize= 10
	DrawText 111,208,"incl."
	SetDrawEnv fname= "Arial",fsize= 10
	DrawText 177,207,"incl."
	SetDrawEnv fname= "Arial",fsize= 10
	DrawText 145,208,"auto#"
	DrawLine 8,287,205,287
	Button FigCon_TopWin_button,pos={17.00,5.00},size={41.00,16.00},proc=FigCon_Button_Topwindow,title="TopW"
	Button FigCon_TopWin_button,font="Arial",fSize=10
	Button FigCon_Done_button,pos={157.00,4.00},size={35.00,16.00},proc=FigCon_Button_Done,title="done"
	Button FigCon_Done_button,font="Arial",fSize=10,fColor=(65535,32768,32768)
	TitleBox FigCon_TopWinn_title,pos={66.00,3.00},size={80.00,19.00}
	TitleBox FigCon_TopWinn_title,labelBack=(65535,65535,65535),font="Arial"
	TitleBox FigCon_TopWinn_title,variable= root:FigCon:TopWindowName,fixedSize=1
	SetVariable setvar01,pos={107.00,327.00},size={80.00,15.00},bodyWidth=60,title="low"
	SetVariable setvar01,font="Helvetica",fSize=11,fColor=(32769,65535,32768)
	SetVariable setvar01,limits={-inf,inf,0.05},value= root:FigCon:GRange1_l
	SetVariable setvar02,pos={18.00,326.00},size={85.00,15.00},bodyWidth=60,title="high"
	SetVariable setvar02,font="Helvetica",fSize=11,fColor=(32769,65535,32768)
	SetVariable setvar02,limits={-inf,inf,0.05},value= root:FigCon:GRange2_l
	SetVariable setvar03,pos={25.00,343.00},size={79.00,15.00},bodyWidth=60,title="left"
	SetVariable setvar03,font="Helvetica",fSize=11,fColor=(32769,65535,32768)
	SetVariable setvar03,limits={-inf,inf,0.05},value= root:FigCon:GRange1_b
	SetVariable setvar04,pos={102.00,344.00},size={85.00,15.00},bodyWidth=60,title="right"
	SetVariable setvar04,font="Helvetica",fSize=11,fColor=(32769,65535,32768)
	SetVariable setvar04,limits={-inf,inf,0.05},value= root:FigCon:GRange2_b
	Button FigCon_Load_button,pos={10.00,26.00},size={52.00,30.00},proc=FigCon_Button_LoadFormat,title="Choese\r Format"
	Button FigCon_Load_button,font="Arial",fSize=10,fColor=(49151,49152,65535)
	Button FigCon_Save_button,pos={65.00,26.00},size={52.00,30.00},proc=FigCon_Button_SaveFormat,title="Save\rFormat"
	Button FigCon_Save_button,font="Arial",fSize=10,fColor=(49151,49152,65535)
	CheckBox FigCon_XYswap_check,pos={14.00,87.00},size={54.00,16.00},proc=FigCon_Check_SwapXY,title="XY Swap"
	CheckBox FigCon_XYswap_check,font="Arial",variable= root:FigCon:GSwap
	Button FigCon_SetMargin_button,pos={15.00,106.00},size={49.00,24.00},proc=FigCon_Button_SetMargin,title="margin"
	Button FigCon_SetMargin_button,font="Arial",fSize=11,fColor=(65535,65534,49151)
	ValDisplay FigCon_MaginLeft_valdisp,pos={72.00,103.00},size={44.00,15.00},bodyWidth=25,title="left"
	ValDisplay FigCon_MaginLeft_valdisp,font="Arial",fSize=11
	ValDisplay FigCon_MaginLeft_valdisp,valueBackColor=(65535,43688,32768)
	ValDisplay FigCon_MaginLeft_valdisp,limits={0,0,0},barmisc={0,1000}
	ValDisplay FigCon_MaginLeft_valdisp,value= #"root:FigCon:GMarg_l"
	ValDisplay FigCon_MaginRight_valdisp,pos={124.00,102.00},size={50.00,15.00},bodyWidth=25,title="right"
	ValDisplay FigCon_MaginRight_valdisp,font="Arial",fSize=11
	ValDisplay FigCon_MaginRight_valdisp,valueBackColor=(65535,43688,32768)
	ValDisplay FigCon_MaginRight_valdisp,limits={0,0,0},barmisc={0,1000}
	ValDisplay FigCon_MaginRight_valdisp,value= #"root:FigCon:GMarg_r"
	ValDisplay FigCon_MaginTop_valdisp,pos={72.00,120.00},size={44.00,15.00},bodyWidth=25,title="top"
	ValDisplay FigCon_MaginTop_valdisp,font="Arial",fSize=11
	ValDisplay FigCon_MaginTop_valdisp,valueBackColor=(65535,43688,32768)
	ValDisplay FigCon_MaginTop_valdisp,limits={0,0,0},barmisc={0,1000}
	ValDisplay FigCon_MaginTop_valdisp,value= #"root:FigCon:GMarg_t"
	ValDisplay FigCon_MaginBottom_valdisp,pos={127.00,120.00},size={47.00,15.00},bodyWidth=25,title="btm"
	ValDisplay FigCon_MaginBottom_valdisp,font="Arial",fSize=11
	ValDisplay FigCon_MaginBottom_valdisp,valueBackColor=(65535,43688,32768)
	ValDisplay FigCon_MaginBottom_valdisp,limits={0,0,0},barmisc={0,1000}
	ValDisplay FigCon_MaginBottom_valdisp,value= #"root:FigCon:GMarg_b"
	TitleBox FigCon_MirrorLeft_title,pos={91.00,159.00},size={40.00,16.00}
	TitleBox FigCon_MirrorLeft_title,labelBack=(65535,65535,65535),fSize=9,frame=5
	TitleBox FigCon_MirrorLeft_title,variable= root:FigCon:GMirrorStr_l,anchor= LC,fixedSize=1
	TitleBox FigCon_MirrorBottom_title,pos={154.00,159.00},size={40.00,16.00}
	TitleBox FigCon_MirrorBottom_title,labelBack=(65535,65535,65535),fSize=9,frame=5
	TitleBox FigCon_MirrorBottom_title,variable= root:FigCon:GMirrorStr_b,anchor= LC,fixedSize=1
	Button FigCon_SetAxis_button,pos={15.00,137.00},size={49.00,24.00},proc=FigCon_Button_SetAxis,title="axis"
	Button FigCon_SetAxis_button,font="Arial",fSize=11,fColor=(65535,54611,49151)
	Button FigCon_SetTicks_button,pos={15.00,176.00},size={49.00,24.00},proc=FigCon_Button_SetTicks,title="ticks"
	Button FigCon_SetTicks_button,fSize=11,fColor=(49151,49152,65535)
	TitleBox FigCon_TickstypeL_title,pos={91.00,178.00},size={40.00,16.00}
	TitleBox FigCon_TickstypeL_title,labelBack=(65535,65535,65535),fSize=9,frame=5
	TitleBox FigCon_TickstypeL_title,variable= root:FigCon:GTickStr_l,anchor= LC,fixedSize=1
	TitleBox FigCon_TickstypeB_title,pos={155.00,178.00},size={40.00,16.00}
	TitleBox FigCon_TickstypeB_title,labelBack=(65535,65535,65535),fSize=9,frame=5
	TitleBox FigCon_TickstypeB_title,variable= root:FigCon:GTickStr_b,anchor= LC,fixedSize=1
	ValDisplay FigCon_AxisTickLeft_valdisp,pos={72.00,142.00},size={37.00,14.00},bodyWidth=20,title="\\Z10left"
	ValDisplay FigCon_AxisTickLeft_valdisp,font="Helvetica",fSize=11
	ValDisplay FigCon_AxisTickLeft_valdisp,limits={0,0,0},barmisc={0,1000}
	ValDisplay FigCon_AxisTickLeft_valdisp,value= #"root:FigCon:GAxisthick_l"
	ValDisplay FigCon_AxisTickBottom_valdisp,pos={132.00,142.00},size={41.00,14.00},bodyWidth=20,title="\\Z10btm"
	ValDisplay FigCon_AxisTickBottom_valdisp,font="Helvetica",fSize=11
	ValDisplay FigCon_AxisTickBottom_valdisp,limits={0,0,0},barmisc={0,1000}
	ValDisplay FigCon_AxisTickBottom_valdisp,value= #"root:FigCon:GAxisthick_b"
	CheckBox check2,pos={114.00,142.00},size={15.00,15.00},disable=2,title=""
	CheckBox check2,variable= root:FigCon:GAxisStandoff_l,mode=1
	CheckBox check3,pos={177.00,142.00},size={15.00,15.00},disable=2,title=""
	CheckBox check3,variable= root:FigCon:GAxisStandoff_b,mode=1
	TitleBox FigCon_MirrorLeft_title1,pos={117.00,65.00},size={35.00,16.00}
	TitleBox FigCon_MirrorLeft_title1,font="Arial",fSize=9,frame=5
	TitleBox FigCon_MirrorLeft_title1,variable= root:FigCon:GSizeStr_w,anchor= LC,fixedSize=1
	ValDisplay FigCon_Gwidth_valdisp,pos={67.00,65.00},size={47.00,15.00},bodyWidth=35,title="w"
	ValDisplay FigCon_Gwidth_valdisp,font="Arial",fSize=11
	ValDisplay FigCon_Gwidth_valdisp,valueBackColor=(65535,43688,32768)
	ValDisplay FigCon_Gwidth_valdisp,limits={0,0,0},barmisc={0,1000}
	ValDisplay FigCon_Gwidth_valdisp,value= #"root:FigCon:GWidth"
	ValDisplay FigCon_Gheight_valdisp,pos={69.00,84.00},size={45.00,15.00},bodyWidth=35,title="h"
	ValDisplay FigCon_Gheight_valdisp,font="Arial",fSize=11
	ValDisplay FigCon_Gheight_valdisp,valueBackColor=(65535,43688,32768)
	ValDisplay FigCon_Gheight_valdisp,limits={0,0,0},barmisc={0,1000}
	ValDisplay FigCon_Gheight_valdisp,value= #"root:FigCon:GHeight"
	TitleBox FigCon_MirrorLeft_title2,pos={117.00,84.00},size={35.00,16.00}
	TitleBox FigCon_MirrorLeft_title2,font="Arial",fSize=9,frame=5
	TitleBox FigCon_MirrorLeft_title2,variable= root:FigCon:GSizeStr_h,anchor= LC,fixedSize=1
	ValDisplay FigCon_GaspectW_valdisp,pos={154.00,65.00},size={35.00,15.00},bodyWidth=35
	ValDisplay FigCon_GaspectW_valdisp,font="Arial",fSize=11
	ValDisplay FigCon_GaspectW_valdisp,limits={0,0,0},barmisc={0,1000}
	ValDisplay FigCon_GaspectW_valdisp,value= #"root:FigCon:Gaspect_w"
	ValDisplay FigCon_GaspectH_valdisp,pos={154.00,84.00},size={35.00,15.00},bodyWidth=35
	ValDisplay FigCon_GaspectH_valdisp,font="Arial",fSize=11
	ValDisplay FigCon_GaspectH_valdisp,limits={0,0,0},barmisc={0,1000}
	ValDisplay FigCon_GaspectH_valdisp,value= #"root:FigCon:Gaspect_h"
	Button FigCon_SetSize_button,pos={15.00,63.00},size={49.00,24.00},proc=FigCon_Button_SetSize,title="size"
	Button FigCon_SetSize_button,font="Arial",fSize=11,fColor=(65535,65532,16385)
	SetVariable FigCon_ManTickIncL_setval,pos={108.00,207.00},size={24.00,16.00},bodyWidth=24,proc=FigCon_Setval_ManualtickControll,title=" "
	SetVariable FigCon_ManTickIncL_setval,font="Arial",fSize=10
	SetVariable FigCon_ManTickIncL_setval,limits={0,inf,0},value= root:FigCon:GmantickIncrement_l
	SetVariable FigCon_ManTickIncB_setval,pos={175.00,206.00},size={24.00,16.00},bodyWidth=24,proc=FigCon_Setval_ManualtickControll,title=" "
	SetVariable FigCon_ManTickIncB_setval,font="Arial",fSize=10
	SetVariable FigCon_ManTickIncB_setval,limits={0,inf,0},value= root:FigCon:GmantickIncrement_b
	TitleBox FigCon_TextFileName_title,pos={123.00,26.00},size={80.00,14.00}
	TitleBox FigCon_TextFileName_title,labelBack=(65535,65535,65535),font="Arial"
	TitleBox FigCon_TextFileName_title,fSize=9,frame=0
	TitleBox FigCon_TextFileName_title,variable= root:FigCon:externalfilename,fixedSize=1
	PopupMenu Figcon_TextFile_popup,pos={121.00,41.00},size={80.00,23.00},bodyWidth=80,proc=Figcon_popup_TextFileSaveLoad,title="File..."
	PopupMenu Figcon_TextFile_popup,font="Arial",fSize=7
	PopupMenu Figcon_TextFile_popup,mode=0,value= #"\"SaveList;SaveListAs;LoadList;\""
	PopupMenu Figcon_TicksMode_popup,pos={15.00,204.00},size={50.00,23.00},bodyWidth=50,proc=Figcon_popup_SetTicksMpde
	PopupMenu Figcon_TicksMode_popup,font="Arial",fSize=7
	PopupMenu Figcon_TicksMode_popup,mode=1,popvalue="auto",value= #"\"auto;manual;\""
	SetVariable FigCon_TicksNumB_setval,pos={135.00,206.00},size={41.00,16.00},bodyWidth=18,proc=FigCon_Setval_ManualtickControll,title=" btm"
	SetVariable FigCon_TicksNumB_setval,font="Arial",fSize=10
	SetVariable FigCon_TicksNumB_setval,limits={0,inf,0},value= root:FigCon:GNtick_b
	SetVariable FigCon_TicksNumL_setval,pos={69.00,207.00},size={38.00,16.00},bodyWidth=18,proc=FigCon_Setval_ManualtickControll,title=" left"
	SetVariable FigCon_TicksNumL_setval,font="Arial",fSize=10
	SetVariable FigCon_TicksNumL_setval,limits={0,inf,0},value= root:FigCon:GNtick_l
EndMacro


Function FigCon_SetUPFigureControl()

	if (DataFolderRefStatus(dfr) ==0)
		NewDataFolder/O root:FigCon
	endif
	DFREF dfr = root:FigCon
	
	String/G dfr:TopWindowName
	
	Variable/G dfr:GWidth, dfr:ActWidth
	Variable/G dfr:GHeight, dfr:ActHeight
	Variable/G dfr:Gsizemode_w,dfr:Gsizemode_h
	Variable/G dfr:Gaspect_w=1,dfr:Gaspect_h=1

	Variable/G dfr:GMarg_l,dfr:GMarg_b,dfr:GMarg_t,dfr:GMarg_r
	
	Variable/G dfr:GAxisthick_l,dfr:GAxisthick_b
	Variable/G dfr:GAxisStandoff_l,dfr:GAxisStandoff_b
	Variable/G dfr:GMirror_l,dfr:GMirror_b
	
	Variable/G dfr:GRange1_l,dfr:GRange2_l
	Variable/G dfr:GRange1_b,dfr:GRange2_b
	Variable/G dfr:GSwap=0
	
	Variable/G dfr:Gticksmode
	Variable/G dfr:GTick_l,dfr:GTick_b
	Variable/G dfr:GNtick_l,dfr:GNtick_b
	Variable/G dfr:GNticksub_l,dfr:GNticksub_b		
	Variable/G dfr:GmantickStart_l,dfr:GmantickStart_b
	Variable/G dfr:GmantickIncrement_l,dfr:GmantickIncrement_b
	Variable/G dfr:GmantickLength_l,dfr:GmantickLength_b
	Variable/G dfr:GmantickThickness_l,dfr:GmantickThickness_b
	Variable/G dfr:GmantickPosition_l,dfr:GmantickPosition_b
	Variable/G dfr:GmantickDicimal_l,dfr:GmantickDicimal_b
	Variable/G dfr:GtlOffset_l,dfr:GtlOffset_b
	
	Make/N=100/T/O dfr:nameofformat
	String/G dfr:formatfilename
	
	String/G dfr:externalfilename
	String/G dfr:externalfilepath
	
	// strings of popup menu for size mode
	Make/N=4/O/T dfr:sizestrings = {"auto","abs","unit","aspect","plan"}
	String/G dfr:GSizeStr_h,dfr:GSizeStr_w
	SetFormula  root:FigCon:GSizeStr_h  "root:FigCon:sizestrings[root:FigCon:Gsizemode_h]"
	SetFormula  root:FigCon:GSizeStr_w  "root:FigCon:sizestrings[root:FigCon:Gsizemode_w]"
	
	// strings of popup menu for mirror mode
	Make/N=4/O/T dfr:mirrorstrings = {"off","on","no tick","label"}
	String/G dfr:GMirrorStr_l,dfr:GMirrorStr_b
	SetFormula  root:FigCon:GMirrorStr_l  "root:FigCon:mirrorstrings[root:FigCon:GMirror_l]"
	SetFormula  root:FigCon:GMirrorStr_b  "root:FigCon:mirrorstrings[root:FigCon:GMirror_b]"
	
	// strings of popup menu for ticks mode
	Make/N=4/O/T dfr:ticksstrings = {"out","mid","in","non"}
	String/G dfr:GTickStr_l,dfr:GTickStr_b
	SetFormula  root:FigCon:GTickStr_l  "root:FigCon:ticksstrings[root:FigCon:GTick_l]"
	SetFormula  root:FigCon:GTickStr_b  "root:FigCon:ticksstrings[root:FigCon:GTick_b]"

	String/G dfr:Gfont
	String/G dfr:axisfontlist="normal;Arial;Helvetica;Helvetica Neue;Times;Times New Roman;"
	
	Variable/G dfr:GLabelMode_l,dfr:GLabelMode_b
	String/G dfr:axislabelname="Binding Energy (eV);"
	SVAR axislabelname = dfr:axislabelname
	axislabelname+= "Binding energy (eV);B.E. (eV);Kinetic Energy (eV);Kinetic energy (eV);"
	axislabelname+= "K.E. (eV);Energy (eV);Momentum (A-1);Momentum;"
	axislabelname+= "Wave Vector;Wave vecotor;Wave Vector (A-1);Wave vecotor (A-1);"
	axislabelname+= "Angle (deg);Angle;Intensity (arb. unit);Intensity (a.u.);"
	axislabelname+= "k_x;k_y (A-1);k_y;k_y (A-1);k_z;k_z (A-1);k;k (A-1)"
	String/G dfr:GlabelName_l,dfr:GlabelName_b
	Variable/G dfr:GlabelFontSize_l,dfr:GlabelFontSize_b


End




Function FigCon_Button_Topwindow(ctrlName) : ButtonControl
	String ctrlName
	
	DFREF dfr = root:FigCon
	SVAR topwinname =  dfr:TopWindowName
	
	topwinname = WinName(0,1)
	FigCon_ReadFromGraph()

End

Function FigCon_Button_Done(ctrlName) : ButtonControl
	String ctrlName
	
	Dowindow/K  FigureCont
	
End

Function FigCon_ReadFromGraph()
	DFREF dfr = root:FigCon

	SVAR topwinname = dfr:TopWindowName
	
	NVAR grawidth = dfr:GWidth 
	NVAR graheight = dfr:GHeight
	NVAR xyswap=dfr:GSwap
	NVAR margin_l = dfr:GMarg_l, margin_b = dfr:GMarg_b,margin_t = dfr:GMarg_t,margin_r = dfr:GMarg_r

	NVAR mirror_l = dfr:GMirror_l, mirror_b = dfr:GMirror_b
	NVAR range1_l = dfr:GRange1_l,range2_l = dfr:GRange2_l
	NVAR range1_b = dfr:GRange1_b,range2_b = dfr:GRange2_b
	
	NVAR tick_l = dfr:GTick_l,tick_b = dfr:GTick_b
	NVAR ntick_l = dfr:GNtick_l,ntick_b = dfr:GNTick_b
	NVAR tickstart_l = dfr:GmantickStart_l
	NVAR tickstart_b = dfr:GmantickStart_b
	NVAR tickinc_l = dfr:GmantickIncrement_l
	NVAR tickinc_b = dfr:GmantickIncrement_b
	NVAR ticklength_l = dfr:GmantickLength_l
	NVAR ticklength_b = dfr:GmantickLength_b
	NVAR tickthickness_l = dfr:GmantickThickness_l
	NVAR tickthickness_b = dfr:GmantickThickness_b
	NVAR ticksmode = dfr:Gticksmode
	NVAR tickdicimal_l = dfr:GmantickDicimal_l
	NVAR tickdicimal_b = dfr:GmantickDicimal_b
	NVAR tlOffset_l =dfr:GtlOffset_l
	NVAR tlOffset_b =dfr:GtlOffset_b
	SVAR font = dfr:Gfont
	SVAR axisfontlist=dfr:axisfontlist
	NVAR fsize_l=dfr:GFontSize_l,fsize_b=dfr:GFontSize_b
	NVAR labelmode_l=dfr:GLabelMode_l,labelmode_b=dfr:GLabelMode_b

	NVAR xyswap=dfr:GSwap
	NVAR axisflag=dfr:PastLink

	
	string graphinfo = WinRecreation(topwinname,0)
	
	xyswap = FigCon_GetModIfyGraphKey("swapXY",graphinfo)
 
	switch(xyswap)	// numeric switch
		case 0:	// execute if case matches expression
			margin_l = FigCon_GetModIfyGraphKey("margin(left)",graphinfo)
			margin_b = FigCon_GetModIfyGraphKey("margin(bottom)",graphinfo)
			margin_t = FigCon_GetModIfyGraphKey("margin(top)",graphinfo)
			margin_r = FigCon_GetModIfyGraphKey("margin(right)",graphinfo)
			break		// exit from switch
		case 1:	// execute if case matches expression
			margin_l = FigCon_GetModIfyGraphKey("margin(bottom)",graphinfo)
			margin_b = FigCon_GetModIfyGraphKey("margin(left)",graphinfo)
			margin_t = FigCon_GetModIfyGraphKey("margin(right)",graphinfo)
			margin_r = FigCon_GetModIfyGraphKey("margin(top)",graphinfo)
			break		// exit from switch
			break
	endswitch

	getaxis/Q/W=$topwinname left
	range1_l = v_min; range2_l = v_max
	getaxis/Q/W=$topwinname bottom
	range1_b = v_min; range2_b = v_max
	
	FigCon_ReadGraphSize()

	string axisinfo_l = axisinfo(topwinname,"left")
	string axisinfo_b = axisinfo(topwinname,"bottom")
	
	tick_l = numberbyKey("tick(x)",axisinfo_l,"=")
	tick_b = numberbyKey("tick(x)",axisinfo_b,"=")
	ntick_l = numberbyKey("nticks(x)",axisinfo_l,"=")
	ntick_b = numberbyKey("nticks(x)",axisinfo_b,"=")
	mirror_l = numberbyKey("mirror(x)",axisinfo_l,"=")
	mirror_b = numberbyKey("mirror(x)",axisinfo_b,"=")
	tlOffset_l = numberbyKey("tlOffset(x)",axisinfo_l,"=")
	tlOffset_b = numberbyKey("tlOffset(x)",axisinfo_b,"=")


	variable modeflag
	modeflag = numberbyKey("manTick(x)",axisinfo_l,"=")
	if (modeflag==0)  // manTick(x)=0であればauto
		ticksmode =1	
		PopupMenu Figcon_TicksMode_popup win=FigureCont, mode=1
	else
		ticksmode =2 // mode manual
		tickstart_l = FigCon_GetNumberInBracket2("manTick(x)",axisinfo_l,0)
		tickstart_b = FigCon_GetNumberInBracket2("manTick(x)",axisinfo_b,0)
		tickinc_l = FigCon_GetNumberInBracket2("manTick(x)",axisinfo_l,1)
		tickinc_b = FigCon_GetNumberInBracket2("manTick(x)",axisinfo_b,1)
		tickdicimal_l = FigCon_GetNumberInBracket2("manTick(x)",axisinfo_l,3)
		tickdicimal_b = FigCon_GetNumberInBracket2("manTick(x)",axisinfo_b,3)
		PopupMenu Figcon_TicksMode_popup win=FigureCont, mode=2
	endif
	
	font = StringByKey("FONT",axisinfo_l,":",";")
	variable indexfont = WhichListItem(font,axisfontlist)+1
	PopupMenu Figcon_Font_popup win=FigureCont, mode=indexfont
	fsize_l=numberbyKey("fsize(x)",axisinfo_l,"=")
	fsize_b=numberbyKey("fsize(x)",axisinfo_b,"=")
	
	labelmode_l=numberbyKey("noLabel(x)",axisinfo_l,"=")
	labelmode_b=numberbyKey("noLabel(x)",axisinfo_b,"=")
	DoWindow LabelSetting
	if (V_flag==1)
		PopupMenu Figcon_LabelModeL_popup,mode=(labelmode_l+1),win=LabelSetting
		PopupMenu Figcon_LabelModeB_popup,mode=(labelmode_b+1),win=LabelSetting
	endif

End

Function FigCon_UpdateGraph()
	DFREF dfr = root:FigCon

	SVAR topwinname = dfr:TopWindowName
	
	NVAR grawidth = dfr:GWidth 
	NVAR graheight = dfr:GHeight
	NVAR margin_l = dfr:GMarg_l, margin_b = dfr:GMarg_b,margin_t = dfr:GMarg_t,margin_r = dfr:GMarg_r

	NVAR range1_l = dfr:GRange1_l,range2_l = dfr:GRange2_l
	NVAR range1_b = dfr:GRange1_b,range2_b = dfr:GRange2_b
	
	NVAR mirror_l = dfr:GMirror_l, mirror_b = dfr:GMirror_b
	NVAR axisthick_l = dfr:GAxisthick_l, axisthick_b = dfr:GAxisthick_b
	NVAR standoff_l = dfr:GAxisStandoff_l, standoff_b = dfr:GAxisStandoff_b

	NVAR ticksmode = dfr:Gticksmode
	NVAR tick_l = dfr:GTick_l,tick_b = dfr:GTick_b
	NVAR ntick_l = dfr:GNtick_l,ntick_b = dfr:GNTick_b
	NVAR tickstart_l = dfr:GmantickStart_l
	NVAR tickstart_b = dfr:GmantickStart_b
	NVAR tickinc_l = dfr:GmantickIncrement_l
	NVAR tickinc_b = dfr:GmantickIncrement_b
	NVAR ticklength_l = dfr:GmantickLength_l
	NVAR ticklength_b = dfr:GmantickLength_b
	NVAR tickthickness_l = dfr:GmantickThickness_l
	NVAR tickthickness_b = dfr:GmantickThickness_b
	NVAR tickdicimal_l = dfr:GmantickDicimal_l
	NVAR tickdicimal_b = dfr:GmantickDicimal_b
	NVAR tlOffset_l =dfr:GtlOffset_l
	NVAR tlOffset_b =dfr:GtlOffset_b

	SVAR font = dfr:Gfont
	NVAR fsize_l=dfr:GFontSize_l,fsize_b=dfr:GFontSize_b
	
	NVAR labelmode_l=dfr:GLabelMode_l,labelmode_b=dfr:GLabelMode_b
	SVAR LabelName_l = dfr:GlabelName_l,LabelName_b = dfr:GlabelName_b

	NVAR xyswap=dfr:GSwap
	NVAR axisflag=dfr:PastLink
	
	//string graphinfo = WinRecreation(topwinname,0)
	//ModifyGraph swapXY=xyswap
	
	if (strlen(topwinname)==0)
		abort "No window graph is specified."
	 return -1
	endif
	 
	Dowindow/F $topwinname
	
	FigCon_UpdateGraphsize()
	
	ModifyGraph margin(left)=margin_l
	ModifyGraph margin(bottom)=margin_b
	ModifyGraph margin(top)=margin_t
	ModifyGraph margin(right)=margin_r

	ModifyGraph mirror(left)=mirror_l
	ModifyGraph mirror(bottom)=mirror_b
	ModifyGraph standoff(left)=standoff_l
	ModifyGraph standoff(bottom)=standoff_b
	ModifyGraph axThick(left)=axisthick_l
	ModifyGraph axThick(bottom)=axisthick_b

	if (ticksmode==1)
		ModifyGraph manTick(left)=0
		ModifyGraph manTick(bottom)=0
		ModifyGraph nticks(left)=ntick_l
		ModifyGraph nticks(bottom)=ntick_b
	elseif (ticksmode==2)
		ModifyGraph manTick(left)={tickstart_l,tickinc_l,0,tickdicimal_l}
		ModifyGraph manTick(bottom)={tickstart_b,tickinc_b,0,tickdicimal_b}
	endif
	
	ModifyGraph tick(left)=tick_l
	ModifyGraph tick(bottom)=tick_b
	ModifyGraph btLen(left)=ticklength_l
	ModifyGraph btLen(bottom)=ticklength_b
	ModifyGraph btThick(left)=tickthickness_l
	ModifyGraph btThick(bottom)=tickthickness_b
	ModifyGraph tlOffset(left)=tlOffset_l
	ModifyGraph tlOffset(bottom)=tlOffset_b

	
	string fontname = "\""+font+"\""

	Execute "ModifyGraph font="+fontname
	ModifyGraph fSize(left)=fsize_l,fSize(bottom)=fsize_b
	
	ModifyGraph noLabel(left)=labelmode_l
	ModifyGraph noLabel(bottom)=labelmode_b
	label left, LabelName_l
	label bottom, LabelName_b
	
	SetAxis left range1_l,range2_l
	SetAxis bottom range1_b,range2_b
	

End


Function FigCon_GetModIfyGraphKey(keyword,listwords)
string keyword,listwords

	string RegKeyword=keyword
	variable sn1
	
	//Convert "(" in the keyword string to "\(" for use in grep searches
	// To search for strings such as "nticks(left)"
	sn1 = strsearch(RegKeyword,"(",0)
	if (sn1!=-1)
	RegKeyword=ReplaceString("(",RegKeyword,"\(")
	RegKeyword=ReplaceString(")",RegKeyword,"\)")
	endif
	
	variable val 
	string line1
	line1 = greplist(listwords,RegKeyword,0,"\r") // Get line including Regkeyword
	line1 = line1[13,inf] // Delete the first "ModifyGraph".
	val = numberbykey(keyword,line1,"=",",") // Get value val in string "keyword = val"
	if (numtype(val)==2)
	val=0
	endif
	
return val
end

Function/S FigCon_GetSizeInfo(keyword,listwords)
string keyword,listwords

	variable val 
	string line1, keystrings
	line1 = greplist(listwords,keyword,0,"\r") // Get line including keyword
	
	string firstCh = StringbyKey(keyword,line1[13,inf],"=",",") // get strings just after "keyword="
	
	variable pos1,pos2,pos3
	if (cmpstr(firstCh[0],"{")==0)  // case of such as width={perUnit,5,left}
		pos1 = strsearch(line1,keyword,0)
		pos2 = strsearch(line1,"{",pos1)
		pos3 = strsearch(line1,"}",pos1)
		keystrings = line1[pos2,pos3]
	elseif (cmpstr(firstCh[0],"{",2)==1) // case of number such as width=250
		keystrings = firstCh
	endif
	
return keystrings
end


Function FigCon_setvar_GraphUpdate(ctrlName,varNum,varStr,varName) : SetVariableControl
	String ctrlName
	Variable varNum
	String varStr
	String varName
	
	FigCon_UpdateGraph()

End



Function FigCon_Button_SetMargin(ctrlName) : ButtonControl
	String ctrlName
	
	DFREF dfr = root:FigCon
	NVAR margin_l = dfr:GMarg_l, margin_b = dfr:GMarg_b,margin_t = dfr:GMarg_t,margin_r = dfr:GMarg_r
	
	variable ml,mr,mt,mb
	ml = margin_l;mr = margin_r ;mt = margin_t; mb = margin_b
	variable automanualchoice
	string message1 = "Choose manual/all setting. defalut is manual. In maniual 0 = automargin, -1 = none."
	Prompt automanualchoice, message1, popup, "manual;all is automargin;all is none"
	Prompt ml, "Set left margin to Graph: "
	Prompt mr, "Set right margin to Graph: "
	Prompt mt, "Set top margin to Graph: "
	Prompt mb, "Set bottom margin to Graph: "
	DoPrompt "Enter margins to Graph of top window", automanualchoice,ml,mr,mt,mb
	
	if(V_flag)	
	 return 0 // user cancell
	endif
	
	switch(automanualchoice)	
	
		case 1:	// manual setting of margins	
			// margin cannot be positive (except for -1)
			if (((ml<-1)&&(ml!=-1))||((mr<-1)&&(mr!=-1))||((mt<-1)&&(mt!=-1))||((mb<-1)&&(mb!=-1)))
				Abort "margin must be positive value (except for setting of none[-1])"
			return 0
			endif
		
			margin_l = ml
			margin_r = mr
			margin_t = mt
			margin_b = mb
	
			break		
		case 2:	// auto setting of margins	to 0 (automargin)
			margin_l=0
			margin_r=0
			margin_t=0
			margin_b=0
			break
		case 3:	// auto setting of margins	to -1 (no margin)
			margin_l=-1
			margin_r=-1
			margin_t=-1
			margin_b=-1
			break
	endswitch

	////// Refelect to Graph
	FigCon_UpdateGraph()
	
End


Function FigCon_Button_SetAxis(ctrlName) : ButtonControl
	String ctrlName
	
	DFREF dfr = root:FigCon
	
	NVAR axisthick_l = dfr:GAxisthick_l, axisthick_b = dfr:GAxisthick_b
	NVAR standoff_l = dfr:GAxisStandoff_l, standoff_b = dfr:GAxisStandoff_b
	NVAR mirror_l = dfr:GMirror_l, mirror_b = dfr:GMirror_b

	
	variable tl,tb,sl,sb,ml,mb
	tl = axisthick_l; tb = axisthick_b
	sl = standoff_l+1; sb = standoff_b+1
	ml = mirror_l+1; mb = mirror_b+1
	variable automanualchoice
	string message1 = "Choose manual setting or drfalut(thickness=1pt, mirror no ticks, standoff=on) "
	Prompt automanualchoice, message1, popup, "manual;defalut"
	Prompt ml, "Set left aixs mirror mode: ", popup, "off;on;no tick;label"
	Prompt mb, "Set bottom aixs mirror mode: ", popup, "off;on;no tick;label"
	Prompt tl, "Set left aixs thickness: "
	Prompt tb, "Set bottom aixs thickness: "
	Prompt sl, "Set left aixs srandoff: ", popup, "on;off"
	Prompt sb, "Set bottom aixs srandoff: ", popup, "on;off"
	
	DoPrompt "Enter axis setting to Graph of top window", automanualchoice,tl, tb, ml, mb, sl, sb
		
	if(V_flag)	
	 return 0 // user cancell
	endif
	
	ml = ml-1; mb=mb-1; sl = sl -1; sb = sb -1 // shift -1 to let begining number to be 0


	
	switch(automanualchoice)	
	
		case 1:	// manual setting of axis
			
			// thickness must be positive, mirror mode is whitin 0 to 3
			if ((tl<0)||(tb<0)||(ml<0)||(ml>3)||(mb<0)||(mb>3))
				Abort "thickness must be positive, mirror mode is whitin 0 to 3"
			return 0
			endif
			axisthick_l = tl; axisthick_b = tb
			standoff_l = sl; standoff_b = sb
			mirror_l = ml; mirror_b = mb
	
			break		
		case 2:	// default setting of axis
			axisthick_l = 1; axisthick_b = 1
			standoff_l = 1; standoff_b = 1
			mirror_l = 2; mirror_b = 2
	
			break
	
	endswitch

	////// Refelect to Graph
	FigCon_UpdateGraph()
	
End




Function FigCon_Button_SetSize(ctrlName) : ButtonControl
	String ctrlName

	Dowindow  SizeSetting
	if (V_flag==0)
			FigCon_Panel_SizeSetting() 
	elseif (V_flag==1)
		Dowindow/F  SizeSetting
	endif
	
	FigCon_SizeSettingRefresh()
	
End

Function FigCon_Panel_SizeSetting() 
	PauseUpdate; Silent 1		// building window...
	
	DFREF dfr = root:FigCon
	SVAR smsw = dfr:GSizeStr_w,smsh = dfr:GSizeStr_h
	NVAR smw = dfr:Gsizemode_w,smh = dfr:Gsizemode_h


	//Panel Displaying
	NewPanel /W=(622,206,820,322)/N=SizeSetting
	ModifyPanel cbRGB=(16385,49025,65535)
	SetDrawLayer UserBack
	
	//popup of size mode for width
	string quote = "\""
	string smlist = quote+"auto;abs;unit;aspect;plan;"+quote 
	variable modew = smw +1, modeh =smh +1
	PopupMenu SizeSetting_ModeWidth_popup,pos={93.00,35.00},size={50.00,23.00},bodyWidth=50
	PopupMenu SizeSetting_ModeWidth_popup,mode=modew,value= #smlist
	PopupMenu SizeSetting_ModeWidth_popup proc=FigCon_popup_SetSizeMode
	
	//popup of size mode for height
	PopupMenu SizeSetting_ModeHeight_popup,pos={93.00,57.00},size={50.00,23.00},bodyWidth=50
	PopupMenu SizeSetting_ModeHeight_popup,mode=modeh,value= #smlist
	PopupMenu SizeSetting_ModeHeight_popup proc=FigCon_popup_SetSizeMode
	
	//popup of control mode in this panel
	PopupMenu SizeSetting_Auto_popup,pos={7.00,8.00},size={128.00,23.00},bodyWidth=100,title="mode"
	PopupMenu SizeSetting_Auto_popup,mode=1,popvalue="manual",value= #"\"manual;defalut(auto);default(abs)\""
	PopupMenu SizeSetting_Auto_popup proc=FigCon_popup_SetSizeAuto

	
	//other controls
	SetVariable SizeSetting_Gwidth_setvar,pos={11.00,35.00},size={74.00,19.00},bodyWidth=60,title="w"
	SetVariable SizeSetting_Gwidth_setvar,fSize=13
	SetVariable SizeSetting_Gwidth_setvar,limits={0,inf,0},value= root:FigCon:GWidth
	SetVariable SizeSetting_Gwidth_setvar proc=FigCon_SetVar_SizeSetting
	
	SetVariable SizeSetting_Gheight_setvar,pos={13.00,57.00},size={72.00,19.00},bodyWidth=60,title="h"
	SetVariable SizeSetting_Gheight_setvar,fSize=13
	SetVariable SizeSetting_Gheight_setvar,limits={0,inf,0},value= root:FigCon:GHeight
	SetVariable SizeSetting_Gheight_setvar proc=FigCon_SetVar_SizeSetting

	SetVariable SizeSetting_aspectWidth_setvar,pos={152.00,34.00},size={40.00,19.00},bodyWidth=40,title=" "
	SetVariable SizeSetting_aspectWidth_setvar,fSize=13
	SetVariable SizeSetting_aspectWidth_setvar,limits={0,inf,0},value= root:FigCon:Gaspect_w
	
	SetVariable SizeSetting_aspectHeight_setvar,pos={152.00,56.00},size={40.00,19.00},bodyWidth=40,title=" "
	SetVariable SizeSetting_aspectHeight_setvar,fSize=13
	SetVariable SizeSetting_aspectHeight_setvar,limits={0,inf,0},value= root:FigCon:Gaspect_h
	
	CheckBox SizeSetting_swapXY_check,pos={19.00,80.00},size={53.00,16.00},title="XY Swap"
	CheckBox SizeSetting_swapXY_check,variable= root:FigCon:GSwap
	CheckBox SizeSetting_swapXY_check proc=FigCon_Check_SwapXY

	
	Button FigCon_SizeSettingDone_button,pos={117.00,86.00},size={67.00,24.00},proc=FigCon_Button_SizeSettingDone,title="done"
	Button FigCon_SizeSettingDone_button,fSize=10,fColor=(65535,32768,32768)
		
	
End

Function FigCon_SizeSettingRefresh()

	DFREF dfr = root:FigCon
	NVAR smw = dfr:Gsizemode_w,smh = dfr:Gsizemode_h
	
	PopupMenu SizeSetting_ModeWidth_popup,win=SizeSetting,mode=(smw+1)
	PopupMenu SizeSetting_ModeHeight_popup,win=SizeSetting,mode=(smh+1)
	
	if ((smw<3)&&(smh<3))
		SetVariable SizeSetting_Gwidth_setvar win=SizeSetting,disable=0
		SetVariable SizeSetting_Gheight_setvar win=SizeSetting,disable=0
		SetVariable SizeSetting_aspectHeight_setvar win=SizeSetting,disable=2
		SetVariable SizeSetting_aspectWidth_setvar win=SizeSetting,disable=2
	elseif ((smw>=3)&&(smh<3))
		SetVariable SizeSetting_Gwidth_setvar win=SizeSetting,disable=2
		SetVariable SizeSetting_Gheight_setvar win=SizeSetting,disable=0
		SetVariable SizeSetting_aspectHeight_setvar win=SizeSetting,disable=2
		SetVariable SizeSetting_aspectWidth_setvar win=SizeSetting,disable=0
	elseif ((smw<3)&&(smh>=3))
		SetVariable SizeSetting_Gwidth_setvar win=SizeSetting,disable=0
		SetVariable SizeSetting_Gheight_setvar win=SizeSetting,disable=2
		SetVariable SizeSetting_aspectHeight_setvar win=SizeSetting,disable=0
		SetVariable SizeSetting_aspectWidth_setvar win=SizeSetting,disable=2
	elseif ((smw>=3)&&(smh>=3))
		SetVariable SizeSetting_Gwidth_setvar win=SizeSetting,disable=2
		SetVariable SizeSetting_Gheight_setvar win=SizeSetting,disable=2
		SetVariable SizeSetting_aspectHeight_setvar win=SizeSetting,disable=2
		SetVariable SizeSetting_aspectWidth_setvar win=SizeSetting,disable=2
	endif

End		


Function FigCon_popup_SetSizeMode(ctrlName,popNum,popStr) : PopupMenuControl
	String ctrlName
	Variable popNum
	String popStr
	
	DFREF dfr = root:FigCon
	NVAR  grawidth = dfr:GWidth, graheight = dfr:GHeight
	NVAR  mode_w = dfr:Gsizemode_w, mode_h = dfr:Gsizemode_h
	NVAR aspect_w = dfr:Gaspect_w, aspect_h = dfr:Gaspect_h
	NVAR actwidth = dfr:ActWidth
	NVAR actheight = dfr:ActHeight
	SVAR topwinname = dfr:TopWindowName

	Getwindow/Z $topwinname,psize
	actwidth= V_right-V_left
	actheight = V_bottom-V_top
	
	variable range_w, range_h
	getaxis/Q/W=$topwinname left
	range_h = abs(v_max-v_min)
	getaxis/Q/W=$topwinname bottom
	range_w = abs(v_max-v_min)
		
	string ctrlnamelist = "SizeSetting_ModeWidth_popup;SizeSetting_ModeHeight_popup;"
	variable listindex = whichListItem(ctrlName,ctrlnamelist)

	switch(listindex)	
		case 0:	// width control mode		
			mode_w = popNum - 1
			switch(mode_w)	
				case 0: //auto
					ModifyGraph width=0
					grawidth = 0
					break
				case 1:	// absolute
					grawidth=actwidth
					break		
				case 2:	// perUnit
					grawidth=actwidth/range_w
					print range_w,actwidth
					break
			endswitch
			break		
		case 1:	// height control mode		
			mode_h = popNum - 1
			switch(mode_h)	
				case 0: //auto
					ModifyGraph height=0
					graheight = 0
					break
				case 1:	// absolute
					graheight = actheight
					break		
				case 2:	// perUnit
					graheight = actheight/range_h
					print range_h,actheight
					break
			endswitch	
			break
	endswitch
	
	
	FigCon_SizeSettingRefresh()
	
End


Function FigCon_UpdateGraphSize()

	DFREF dfr = root:FigCon
	SVAR topwinname = dfr:TopWindowName
	
	NVAR grawidth = dfr:GWidth 
	NVAR graheight = dfr:GHeight
	NVAR actwidth = dfr:ActWidth
	NVAR actheight = dfr:ActHeight
	NVAR mode_w = dfr:Gsizemode_w, mode_h = dfr:Gsizemode_h
	NVAR aspect_w = dfr:Gaspect_w, aspect_h = dfr:Gaspect_h

	// Update graph width
	switch(mode_w)	
		case 0: //auto
			grawidth = 0
			ModifyGraph width = 0
		case 1:	// absolute
			ModifyGraph width=grawidth
			break		
		case 2:	// perUnit
			ModifyGraph width={perUnit,grawidth,bottom}
			break
		case 3:	// Aspect
			ModifyGraph width={Aspect,aspect_w}
			break
		case 4:	// Plan
			ModifyGraph width={Plan,aspect_w,bottom,left}
			break
	endswitch
	
	// Update graph height
	switch(mode_h)	
		case 0: //auto
			graheight = 0
			ModifyGraph height = 0
		case 1:	// absolute
			ModifyGraph height=graheight
			break		
		case 2:	// perUnit
			ModifyGraph height={perUnit,graheight,left}
			break
		case 3:	// Aspect
			ModifyGraph height={Aspect,aspect_h}
			break
		case 4:	// Plan
			ModifyGraph height={Plan,aspect_h,left,bottom}
			break
	endswitch



End

Function FigCon_ReadGraphSize()

	DFREF dfr = root:FigCon
	SVAR topwinname = dfr:TopWindowName
	
	NVAR grawidth = dfr:GWidth 
	NVAR graheight = dfr:GHeight
	NVAR aw=dfr:ActWidth
	NVAR ah=dfr:ActHeight
	NVAR w_mode = dfr:Gsizemode_w, h_mode = dfr:Gsizemode_h
	NVAR w_aspect = dfr:Gaspect_w, h_aspect = dfr:Gaspect_h

	
	string graphinfo = WinRecreation(topwinname,0)
	
	Getwindow/Z $topwinname,psize
	aw = V_right-V_left
	ah = V_bottom-V_top


	string sw,sh
	sw = FigCon_GetSizeInfo("width",graphinfo)
	sh = FigCon_GetSizeInfo("height",graphinfo)
	string modelist="perUnit;Aspect;Plan;",modestr
	variable modenum
	
	
	if(cmpstr(sw,"",2)==0) // case of auto
		w_mode = 0
		grawidth = 0
	elseif(cmpstr(sw[0],"{",2)==1) // case of absolute
		w_mode = 1
		grawidth = str2num(sw)
	elseif(cmpstr(sw[0],"{",2)==0) // case of unit,aspect,plan
		modestr = stringfromList(0,sw,",")
		modestr = modestr[1,inf]
		modenum = whichlistItem(modestr,modelist) //Select from "perUnit;Aspect;Plan;"
		switch(modenum)	
			string p1
			case 0:	// case of perUnit
				w_mode = 2
				p1 = stringfromList(1,sw,",")
				grawidth = str2num(p1)
				break		
			case 1:	// case of Aspect
				w_mode = 3
				p1 = stringfromList(1,sw,",")
				w_aspect = str2num(p1)
				break
			case 2:	// case of Plan
				w_mode = 4
				p1 = stringfromList(1,sw,",")
				w_aspect = str2num(p1)
				break
		endswitch
	endif
//	print "width",sw,modestr,modenum,str2num(p1)
	
	if(cmpstr(sh,"",2)==0) // case of auto
		h_mode = 0
		graheight = 0
	elseif(cmpstr(sh[0],"{",2)==1) // case of absoluto
		h_mode = 1
		graheight = str2num(sh)
	elseif(cmpstr(sh[0],"{",2)==0) // case of unit,aspect,plan
		modestr = stringfromList(0,sh,",")
		modestr = modestr[1,inf]
		modenum = whichlistItem(modestr,modelist) //Select from "perUnit;Aspect;Plan;"
		switch(modenum)	
			string p2
			case 0:	// case of perUnit
				h_mode = 2
				p2 = stringfromList(1,sh,",")
				graheight = str2num(p2)
				break		
			case 1:	// case of Aspect
				h_mode = 3
				p2 = stringfromList(1,sh,",")
				h_aspect = str2num(p2)
				break
			case 2:	// case of Plan
				h_mode = 4
				p2 = stringfromList(1,sh,",")
				h_aspect = str2num(p2)
				break
		endswitch
	endif
	//	print "height",sh,modestr,modenum,str2num(p2)

	Dowindow SizeSetting
	if(V_flag==1)
	FigCon_SizeSettingRefresh()
	endif

End

Function FigCon_Button_SizeSettingDone(ctrlName) : ButtonControl
	String ctrlName
	
	Dowindow/K  SizeSetting
	
End

Function FigCon_Button_LabelSettingDone(ctrlName) : ButtonControl
	String ctrlName
	
	Dowindow/K  LabelSetting
	
End


Function FigCon_SetVar_SizeSetting(ctrlName,varNum,varStr,varName) : SetVariableControl
	String ctrlName
	Variable varNum
	String varStr
	String varName
	
	FigCon_UpdateGraphSize()
	
	FigCon_SizeSettingRefresh()
	

End


Function FigCon_popup_SetSizeAuto(ctrlName,popNum,popStr) : PopupMenuControl
	String ctrlName
	Variable popNum
	String popStr
	
	DFREF dfr = root:FigCon
	SVAR topwinname = dfr:TopWindowName
	NVAR grawidth = dfr:GWidth 
	NVAR graheight = dfr:GHeight
	NVAR actwidth = dfr:ActWidth
	NVAR actheight = dfr:ActHeight
	NVAR mode_w = dfr:Gsizemode_w, mode_h = dfr:Gsizemode_h
	NVAR aspect_w = dfr:Gaspect_w, aspect_h = dfr:Gaspect_h
	
	Dowindow/F $topwinname
//	Getwindow/Z $topwinname,psize
//	actheight = V_right-V_left
//	actheight = V_bottom-V_top
	
	switch(popNum)	
		case 1: //manual
			break
		case 2:	// auto
			ModifyGraph height=0, width = 0
			grawidth = 0; graheight=0
			mode_w = 0; mode_h = 0
			break		
		case 3:	// perUnit
			ModifyGraph height=actheight, width = actwidth
			grawidth = actwidth; graheight = actheight
			mode_w = 1; mode_h = 1
			break
		
	endswitch
	
	FigCon_SizeSettingRefresh()

End



	NVAR xyswap=dfr:GSwap
	NVAR margin_l = dfr:GMarg_l, margin_b = dfr:GMarg_b,margin_t = dfr:GMarg_t,margin_r = dfr:GMarg_r

	
Function FigCon_Check_SwapXY(ctrlName,checked) : CheckBoxControl
	String ctrlName
	Variable checked
	
	DFREF dfr = root:FigCon
	NVAR xyswap=dfr:GSwap
	NVAR margin_l = dfr:GMarg_l, margin_b = dfr:GMarg_b,margin_t = dfr:GMarg_t,margin_r = dfr:GMarg_r
	
	SVAR topwinname = dfr:TopWindowName
		
	Dowindow/F $topwinname
	
	
	ModifyGraph swapXY=xyswap
	ModifyGraph margin(left) = margin_b, margin(bottom) = margin_l
	ModifyGraph margin(top) = margin_r, margin(right) = margin_t
	
	FigCon_ReadFromGraph()
	
End

Function FigCon_Setval_ManualtickControll(ctrlName,varNum,varStr,varName) : SetVariableControl
	String ctrlName
	Variable varNum
	String varStr
	String varName
	FigCon_UpdateGraph()
	
End


Function/S FigCon_StringConvertForGrep(original)
String original
// convert keyword to regular expression to use grep commmans
// e.g., when you want to get line including "margin(left)"
// 		you will use greplist(lists, "margin(left)",0,"\r") but it does not work
//			you have to change keyword to "margin\(left\)"

	string convertword = original
	variable sn1
	sn1 = strsearch(original,"(",0)
	if (sn1!=-1)
		convertword=ReplaceString("(",original,"\(")
		convertword=ReplaceString(")",convertword,"\)")
	endif
	
return convertword
end


Function FigCon_GetNumberInBracket(keyword,listwords,indexth)  // WinRecreation用
string keyword,listwords
variable indexth
// get indexth nubmer in such as "manTick(left)={0,5,0,1}"
// if indexth = 2, it returns 5. 

	variable val 
	string line1, keystrings, convertkey
	convertkey = FigCon_StringConvertForGrep(keyword)
	line1 = greplist(listwords,convertkey,0,"\r") // Get line including keyword
	string firstCh = StringbyKey(keyword,line1[13,inf],"=",",") // get strings just after "keyword="
	
	variable pos1,pos2,pos3
	pos1 = strsearch(line1,keyword,0)
	pos2 = strsearch(line1,"{",pos1)
	pos3 = strsearch(line1,"}",pos1)
	keystrings = line1[pos2+1,pos3-1]  // get strings like 0,5,0,1
	
	String numchar = stringFromList(indexth,keystrings,",")
	val = str2num(numchar)
	return val

end

Function FigCon_GetNumberInBracket2(keyword,listwords,indexth)  // axisinfo用
string keyword,listwords
variable indexth

	string line1 = StringbyKey(keyword,listwords,"=")
	variable pos1 = strsearch(line1,"}",0)
	string keystrings = line1[1,pos1-1]
	
	String numchar = stringFromList(indexth,keystrings,",")
	variable val = str2num(numchar)
	
	return val

end




Function FigCon_Button_SaveFormat(ctrlName) : ButtonControl
	String ctrlName
	
	String formatlist
	
	formatlist = FigCon_GetFormatNameList()
	variable formatindex
	String newformatname

	Prompt formatindex, "New Format or overwrite", popup, formatlist
	Prompt newformatname, "Enter New Format Name"
	
	DoPrompt "Save Format of topwindow as", formatindex,newformatname
	
	variable saveindex=0
	
	if (formatindex==1) // Choose New format name
		saveindex = ItemsInList(formatlist)-1
		if(!cmpstr(newformatname,"",2))
			abort "No name for new format name"
			return -1
		endif
		
		string checkname1 = StringFromList(1,formatlist)
		if(!cmpstr(checkname1,"",2))
			saveindex = saveindex-1
		endif
		
		FigCon_SaveFormat(newformatname,saveindex)
		print "Foremat is save as new name of", newformatname, saveindex

	elseif(formatindex>1) // Overwrite to existing format
		saveindex = formatindex-2
		string oevrwitename = StringFromList(formatindex-1,formatlist)
		variable yesno
		Prompt yesno, "Are you sure you want to overwrite the format of"+oevrwitename+"?", popup, "yes;no"
		
		DoPrompt "Overwrite check", yesno

		if(yesno==1)
			FigCon_SaveFormat(oevrwitename,saveindex)
			print "Foremat is overwiten to name of", oevrwitename
		elseif(yesno==2)
			print "overwrite to"+oevrwitename+"is cancelled."
		endif	
			
	endif

End


Function/S FigCon_GetFormatNameList()
	DFREF dfr = root:FigCon
	wave/T 	nameofformat = dfr:nameofformat
	string formatnamelist = "NewFormat;"
	
	variable index = 0
	string ValList, FormatName
	
	Do
		ValList = nameofformat[index]
		FormatName = StringByKey("NAME", ValList,":")
		formatnamelist = formatnamelist + FormatName + ";"
		index = index +1	
	while(cmpstr(nameofformat[index],"",2))
	
	return formatnamelist
End


//グローバル変数の数値タイプのものだけテキストWaveのnameofformatに格納
Function FigCon_SaveFormat(savename,listindex)
string savename
variable listindex

	DFREF dfr = root:FigCon
	wave/T 	nameofformat = dfr:nameofformat

   Variable index = 0
	String VariableName

	//savestringにFigCon内のグローバル変数の値を"GHeight=300"などの文字情報として格納
	// "Gxxxx=..;Gxxxx;="というリスト形式にformat
	// 一番最初のNAME:=....は、グローバル変数でなく、保存したいformatの名前とする
	savename = "NAME:"+savename 
	string savestring=savename+";"
	
	do
	   VariableName = GetIndexedObjNameDFR(dfr, 2, index) //FigConフォルダ内のindex番目のグローバル数値変数の名前
       if (strlen(VariableName) == 0) //do-whileループの抜け出し条件
			break
		endif
		NVAR val0 = dfr:$VariableName //index番目のグローバル数値変数の中身
		if(cmpstr(VariableName[0],"G",2)==0) // 条件:VariableNameがGで始まる変数名ならtrue
			if(cmpstr(VariableName[0,3],"GRan",2)==1) ///条件:VariableNameがGRanで始まる変数名でなければtrue
       		savestring += VariableName + "="+num2str(val0)+";"
       	endif
      endif
       index += 1
   while(1)
   
   nameofformat[listindex] = savestring //formatの全情報をいれたsavestringを、nameofformatのlistindex番目に格納

End



Function FigCon_Button_LoadFormat(ctrlName) : ButtonControl
	String ctrlName
	
	String Adaptformatlist
	
	Adaptformatlist = RemoveListItem(0,FigCon_GetFormatNameList())
	
	if(!cmpstr(StringFromList(0, Adaptformatlist),"",2))
		Abort "No format is saved."
	endif
	
	variable formatindex
	Prompt formatindex, "Select format to adapt to topwindow", popup, Adaptformatlist
	DoPrompt "Load Format", formatindex
	
	string formatname =  StringFromList(formatindex-1,Adaptformatlist)
	FigCon_LoadFormat(formatindex-1) 
	FigCon_UpdateGraph()
	print "Foremat of "+formatname+" is adapted."
	
End


//グローバル変数の数値タイプのものだけ読み込む
Function FigCon_LoadFormat(listindex) 
variable listindex

	DFREF dfr = root:FigCon
	wave/T 	nameofformat = dfr:nameofformat
   Variable index = 0
	String VariableName, Fullpathname
	String CommandStrings
	Variable Setvalue

	string savestring = nameofformat[listindex]  //Loadしたいformat情報をsavestringに読み込む
	
	// savestring = "NAME:....;Gxxxx=....;Gxxxx=....;Gxxxx=....;"　という文字情報リスト

	do
	
	   CommandStrings = StringFromList(index,savestring,";")
		VariableName = CommandStrings[0,(strsearch(CommandStrings,"=",0)-1)]
		Setvalue = NumberByKey(VariableName,savestring,"=",";")
		Fullpathname = "root:FigCon:"+VariableName
		if(exists(Fullpathname)==2)
			NVAR val0 = dfr:$VariableName
			val0 = Setvalue
      endif
      
       index += 1
   while(index<ItemsInList(savestring,";"))

End



Function Figcon_popup_TextFileSaveLoad(ctrlName,popNum,popStr) : PopupMenuControl
	String ctrlName
	Variable popNum  //1: Save,2:Save As, 3:Load
	String popStr
	
	DFREF dfr = root:FigCon
	SVAR filename = dfr:externalfilename
	SVAR filepath = dfr:externalfilepath
	
	variable refnum
	string fn, endstr
	
	switch(popNum)	
		case 1:	// Save (New or overwrite)
			if(strlen(filename)==0 && strlen(filename)==0) //Save New	
				prompt fn, "Enter file name as new text file"
				Doprompt "New File Save",fn
				filename = fn 
				Open refnum as fn
				endstr = ParseFilePath(0, S_filename, ":", 1, 0)
				filepath = Removeending(s_filename,endstr)
				FigCon_SaveTextFile(refnum)
				close refnum
				
			else									// Save to current text file 
				fn = filename
				newpath path1, filepath
				Open/P=path1 refnum as fn
				FigCon_SaveTextFile(refnum)
				close refnum
				killpath path1
			endif
			break
		case 2:  // Save as...
			prompt fn, "Enter file name as text file"
			Doprompt "New File Save as..",fn
			filename = fn 
			Open refnum as fn
			endstr = ParseFilePath(0, S_filename, ":", 1, 0)
			filepath = Removeending(s_filename,endstr)
			FigCon_SaveTextFile(refnum)
			close refnum
			break
		case 3:  //Load
			Open/R refnum
			endstr = ParseFilePath(0, S_filename, ":", 1, 0)
			filename = Removeending(endstr,".txt")
			filepath = Removeending(s_filename,endstr)
			FigCon_LoadTextFile(refnum)
			close refnum
	
	endswitch

End


Function FigCon_SaveTextFile(refnum)
variable refnum
	
	DFREF dfr = root:FigCon
	WAve/T nameofformat=dfr:nameofformat
	
	variable index
	string formatinfo
	Do
		formatinfo = nameofformat[index]
		if (strlen(formatinfo) == 0) //do-whileループの抜け出し条件
			break
		endif
		
		fprintf refNum,formatinfo+"\r" ,index
		index=index+1
	while(1)
	
end


Function FigCon_LoadTextFile(refnum)
variable refnum
	
	DFREF dfr = root:FigCon
	WAve/T nameofformat=dfr:nameofformat
	
	nameofformat = ""
	variable index, len
	string formatinfo, buffer
	Do
 		FReadLine refNum, buffer
      len = strlen(buffer)
      if (len == 0) //do-whileループの抜け出し条件
      		break
      	endif
		if (CmpStr(buffer[len-1],"\r") == 0)   
			formatinfo = RemoveEnding(buffer,"\r")
      endif

		nameofformat[index] = formatinfo

		index=index+1
	while(1)
	
end


Function Figcon_popup_SetTicksMpde(ctrlName,popNum,popStr) : PopupMenuControl
	String ctrlName
	Variable popNum  //1:auto, 2:manual
	String popStr
	
	DFREF dfr = root:FigCon
	SVAR topwinname = dfr:TopWindowName
	NVAR tick_l = dfr:GTick_l,tick_b = dfr:GTick_b
	NVAR ntick_l = dfr:GNtick_l,ntick_b = dfr:GNTick_b
	NVAR tickstart_l = dfr:GmantickStart_l
	NVAR tickstart_b = dfr:GmantickStart_b
	NVAR tickinc_l = dfr:GmantickIncrement_l
	NVAR tickinc_b = dfr:GmantickIncrement_b

	
	NVAR ticksmode = dfr:Gticksmode
	
	if (strlen(topwinname)==0)
		abort "No window graph is specified."
	 return -1
	endif
	
	ticksmode = popNum
	
	switch(popNum)	
		case 1:	// auto ticks
			ModifyGraph/W=$topwinname manTick(left)=0
			ModifyGraph/W=$topwinname manTick(bottom)=0
			ModifyGraph/W=$topwinname nticks(left)=ntick_l
			ModifyGraph/W=$topwinname nticks(bottom)=ntick_b

			break
		case 2:	// manual ticks
			ModifyGraph manTick(left)={tickstart_l,tickinc_l,0,1}
			ModifyGraph manTick(bottom)={tickstart_b,tickinc_b,0,1}
		
	endswitch

End




Function FigCon_Panel_TicksSetting() 
	PauseUpdate; Silent 1		// building window...
	
	DFREF dfr = root:FigCon
	NVAR ticksmode = dfr:Gticksmode

	
	NewPanel /W=(868,182,1145,398)/N=TicksSetting
	ModifyPanel cbRGB=(16385,49025,65535)
	SetDrawLayer UserBack
	SetDrawEnv fsize= 13,fstyle= 1,textrgb= (1,65535,33232)
	DrawText 13,115,"Base value"
	SetDrawEnv fstyle= 1,textrgb= (0,65535,65535)
	DrawText 12,78,"Positon Mode"
	SetDrawEnv textrgb= (32768,65535,65535)
	DrawText 30,95,"0:outside, 1:middle, 2:inside, 3:none"
	SetDrawEnv fsize= 13,fstyle= 1,textrgb= (32792,65535,1)
	DrawText 12,134,"Ticks length"
	SetDrawEnv fsize= 13,fstyle= 1,textrgb= (32792,65535,1)
	DrawText 11,152,"Ticks thickness"
	SetDrawEnv fstyle= 1,textrgb= (1,16019,65535)
	DrawText 82,31,"ticks#"
	SetDrawEnv fstyle= 1,textrgb= (1,16019,65535)
	DrawText 11,57,"Manual ticks inc"
	SetDrawEnv fsize= 13,fstyle= 1,textrgb= (65535,65535,0)
	DrawText 11,170,"Ticks Dicimal"
	SetDrawEnv fsize= 13,fstyle= 1,textrgb= (65535,49157,16385)
	DrawText 11,188,"Ticks Away"
	SetVariable FigCon_ManTickBaseL_setval,pos={92.00,100.00},size={80.00,17.00},bodyWidth=60,proc=FigCon_Setval_ManualtickControll,title="left"
	SetVariable FigCon_ManTickBaseL_setval,font="Arial",fSize=12
	SetVariable FigCon_ManTickBaseL_setval,limits={-inf,inf,0.1},value= root:FigCon:GmantickStart_l
	SetVariable FigCon_ManTickBaseB_setval,pos={181.00,99.00},size={84.00,17.00},bodyWidth=60,proc=FigCon_Setval_ManualtickControll,title="btm"
	SetVariable FigCon_ManTickBaseB_setval,font="Arial",fSize=12
	SetVariable FigCon_ManTickBaseB_setval,limits={-inf,inf,0.1},value= root:FigCon:GmantickStart_b
	SetVariable FigCon_ManTickLengthL_setval,pos={113.00,119.00},size={60.00,17.00},bodyWidth=40,proc=FigCon_Setval_ManualtickControll,title="left"
	SetVariable FigCon_ManTickLengthL_setval,font="Arial",fSize=12
	SetVariable FigCon_ManTickLengthL_setval,limits={0,inf,0.2},value= root:FigCon:GmantickLength_l
	SetVariable FigCon_ManTickLengthB_setval,pos={201.00,119.00},size={64.00,17.00},bodyWidth=40,proc=FigCon_Setval_ManualtickControll,title="btm"
	SetVariable FigCon_ManTickLengthB_setval,font="Arial",fSize=12
	SetVariable FigCon_ManTickLengthB_setval,limits={0,inf,0.2},value= root:FigCon:GmantickLength_b
	SetVariable FigCon_ManTickThkL_setval,pos={113.00,137.00},size={60.00,17.00},bodyWidth=40,proc=FigCon_Setval_ManualtickControll,title="left"
	SetVariable FigCon_ManTickThkL_setval,font="Arial",fSize=12
	SetVariable FigCon_ManTickThkL_setval,limits={0,inf,0.1},value= root:FigCon:GmantickThickness_l
	SetVariable FigCon_ManTickThkB_setval,pos={201.00,137.00},size={64.00,17.00},bodyWidth=40,proc=FigCon_Setval_ManualtickControll,title="btm"
	SetVariable FigCon_ManTickThkB_setval,font="Arial",fSize=12
	SetVariable FigCon_ManTickThkB_setval,limits={0,inf,0.1},value= root:FigCon:GmantickThickness_b
	SetVariable FigCon_Manualticks_positionL,pos={113.00,64.00},size={60.00,17.00},bodyWidth=40,proc=FigCon_Setval_ManualtickControll,title="left"
	SetVariable FigCon_Manualticks_positionL,help={"0:外側, 1:中央, 2:内側, 3:なし"}
	SetVariable FigCon_Manualticks_positionL,font="Arial",fSize=12
	SetVariable FigCon_Manualticks_positionL,limits={0,3,1},value= root:FigCon:GTick_l,noedit= 1
	SetVariable FigCon_Manualticks_positionB,pos={201.00,64.00},size={64.00,17.00},bodyWidth=40,proc=FigCon_Setval_ManualtickControll,title="btm"
	SetVariable FigCon_Manualticks_positionB,help={"0:外側, 1:中央, 2:内側, 3:なし"}
	SetVariable FigCon_Manualticks_positionB,font="Arial",fSize=12
	SetVariable FigCon_Manualticks_positionB,limits={0,3,1},value= root:FigCon:GTick_b,noedit= 1
	PopupMenu Figcon_TicksMode_popup,pos={4.00,14.00},size={74.00,23.00},bodyWidth=74,proc=Figcon_popup_SetTicksMpde
	PopupMenu Figcon_TicksMode_popup,font="Arial",fSize=7
	PopupMenu Figcon_TicksMode_popup,mode=2,popvalue="manual",value= #"\"auto;manual;\""
	SetVariable FigCon_TicksLeft__setval,pos={118.00,15.00},size={63.00,17.00},bodyWidth=40,proc=FigCon_Setval_ManualtickControll,title=" left"
	SetVariable FigCon_TicksLeft__setval,font="Arial",fSize=12
	SetVariable FigCon_TicksLeft__setval,limits={0,inf,1},value= root:FigCon:GNtick_l
	SetVariable FigCon_Manualticks_incL_setval,pos={109.00,39.00},size={67.00,19.00},bodyWidth=40,proc=FigCon_Setval_ManualtickControll,title=" left"
	SetVariable FigCon_Manualticks_incL_setval,font="Arial",fSize=14
	SetVariable FigCon_Manualticks_incL_setval,limits={0,inf,0},value= root:FigCon:GmantickIncrement_l
	SetVariable FigCon_TicksBottom__setval,pos={196.00,14.00},size={67.00,17.00},bodyWidth=40,proc=FigCon_Setval_ManualtickControll,title=" btm"
	SetVariable FigCon_TicksBottom__setval,font="Arial",fSize=12
	SetVariable FigCon_TicksBottom__setval,limits={0,inf,1},value= root:FigCon:GNtick_b
	SetVariable FigCon_Manualticks_incB_setval,pos={194.00,38.00},size={69.00,18.00},bodyWidth=40,proc=FigCon_Setval_ManualtickControll,title=" btm"
	SetVariable FigCon_Manualticks_incB_setval,font="Arial",fSize=13
	SetVariable FigCon_Manualticks_incB_setval,limits={0,inf,0},value= root:FigCon:GmantickIncrement_b
	SetVariable FigCon_ManTickDicL_setval,pos={113.00,155.00},size={60.00,17.00},bodyWidth=40,proc=FigCon_Setval_ManualtickControll,title="left"
	SetVariable FigCon_ManTickDicL_setval,font="Arial",fSize=12
	SetVariable FigCon_ManTickDicL_setval,limits={0,5,1},value= root:FigCon:GmantickDicimal_l
	SetVariable FigCon_ManTickDicB_setval,pos={201.00,155.00},size={64.00,17.00},bodyWidth=40,proc=FigCon_Setval_ManualtickControll,title="btm"
	SetVariable FigCon_ManTickDicB_setval,font="Arial",fSize=12
	SetVariable FigCon_ManTickDicB_setval,limits={0,5,1},value= root:FigCon:GmantickDicimal_b
	SetVariable FigCon_ManTickOffL_setval,pos={113.00,173.00},size={60.00,17.00},bodyWidth=40,proc=FigCon_Setval_ManualtickControll,title="left"
	SetVariable FigCon_ManTickOffL_setval,font="Arial",fSize=12
	SetVariable FigCon_ManTickOffL_setval,limits={-5,5,0.5},value= root:FigCon:GtlOffset_l
	SetVariable FigCon_ManTickOffB_setval,pos={201.00,173.00},size={64.00,17.00},bodyWidth=40,proc=FigCon_Setval_ManualtickControll,title="btm"
	SetVariable FigCon_ManTickOffB_setval,font="Arial",fSize=12
	SetVariable FigCon_ManTickOffB_setval,limits={-5,5,0.5},value= root:FigCon:GtlOffset_b
	Button FigCon_SizeSettingDone_button,pos={191.00,192.00},size={67.00,20.00},proc=FigCon_Button_TicksSettingDone,title="done"
	Button FigCon_SizeSettingDone_button,fSize=10,fColor=(65535,32768,32768)
	
	PopupMenu Figcon_TicksMode_popup,mode=ticksmode
	
	End

Function FigCon_Button_SetTicks(ctrlName) : ButtonControl
	String ctrlName
	
	Dowindow  TicksSetting
	if (V_flag==0)
			FigCon_Panel_TicksSetting() 
	elseif (V_flag==1)
		Dowindow/F  TicksSetting
	endif
	
End

Function FigCon_Button_SetLabel(ctrlName) : ButtonControl
	String ctrlName
	
	Dowindow  LabelSetting
	if (V_flag==0)
			FigCon_Panel_LabelSetting() 
	elseif (V_flag==1)
		Dowindow/F  LabelSetting
	endif
	
End


Function FigCon_Button_TicksSettingDone(ctrlName) : ButtonControl
	String ctrlName
	
	Dowindow/K  TicksSetting
	
End


Function FigCon_popup_SetAxisFont(ctrlName,popNum,popStr) : PopupMenuControl
	String ctrlName
	Variable popNum
	String popStr
	
	DFREF dfr = root:FigCon
	SVAR font = dfr:Gfont
	
	switch(popNum)	
		case 1: //system font
			font="default"
			break
		default:
			font=popStr
			break				
	endswitch
	
	FigCon_UpdateGraph()

End


Function Figcon_popup_SetLabelMode(ctrlName,popNum,popStr) : PopupMenuControl
	String ctrlName
	Variable popNum  //1:ON, 2:axisonly, 3:OFF
	String popStr
	
	DFREF dfr = root:FigCon
	SVAR topwinname = dfr:TopWindowName
	NVAR labelmode_l=dfr:GLabelMode_l,labelmode_b=dfr:GLabelMode_b
		
	if (strlen(topwinname)==0)
		abort "No window graph is specified."
	 return -1
	endif
	
	string ctrlnamelist = "Figcon_LabelModeL_popup;Figcon_LabelModeB_popup;"
	variable listindex = whichListItem(ctrlName,ctrlnamelist)
		
	switch(listindex)	
		case 0:	// left axis label
			labelmode_l = popNum - 1
			
			break
		case 1:	// bottom axis label
			labelmode_b = popNum - 1
			break
	endswitch

	FigCon_UpdateGraph()
	
End


Function Figcon_popup_SetLabelName(ctrlName,popNum,popStr) : PopupMenuControl
	String ctrlName
	Variable popNum  
	String popStr
	
	DFREF dfr = root:FigCon
	SVAR topwinname = dfr:TopWindowName
	SVAR LabelName_l = dfr:GlabelName_l,LabelName_b = dfr:GlabelName_b
	SVAR axislabel_list = dfr:axislabelname
	NVAR fsize_l=dfr:GlabelFontSize_l,fsize_b=dfr:GlabelFontSize_b

	String labelname
	
	switch(popnum)	
		case 8:
			labelname = "Momentum (Å\S-1\M)"
			break
		case 12:
			labelname = "Wave Vector (Å\S-1\M)"
			break
		case 13:
			labelname = "Wave vector (Å\S-1\M)"
			break
		case 18:
			labelname = "\f02k\B\f00x"
			break
		case 19:
			labelname = "\\f02k\\B\\f00x\\M (Å\\S-1\\M)"
			break
		case 20:
			labelname = "\f02k\B\f00y"
			break
		case 21:
			labelname = "\\f02k\\B\\f00y\\M (Å\\S-1\\M)"
			break
		case 22:
			labelname = "\f02k\B\f00z"
			break
		case 23:
			labelname = "\\f02k\\B\\f00z\\M (Å\\S-1\\M)"
			break
		case 24:
			labelname = "\f02k"
			break
		case 25:
			labelname = "\\f02k \\f00(Å\\S-1\\M)"
			break
		default:		
			labelname = StringFromList((popnum-1),axislabel_list)
			print popnum,labelname
			break
	endswitch
	
	if (strlen(topwinname)==0)
		abort "No window graph is specified."
	 return -1
	endif
	
	string ctrlnamelist = "Figcon_LabeAxisL_popup;Figcon_LabeAxisB_popup;"
	variable axisindex = whichListItem(ctrlName,ctrlnamelist)
	variable fontsize
	switch(axisindex)	
		case 0:	// left axis label
			fontsize = fsize_l
			LabelName_l = FigCon_ChangeLabelFontSize(labelname,fontsize)
			break
		case 1:	// bottom axis label
			fontsize = fsize_b
			LabelName_b = FigCon_ChangeLabelFontSize(labelname,fontsize)
			break
	endswitch

	FigCon_UpdateGraph()
	
End



Function FigCon_setvar_SetLabelName(ctrlName,varNum,varStr,varName) : SetVariableControl
	String ctrlName
	Variable varNum
	String varStr
	String varName
	
	
	DFREF dfr = root:FigCon
	SVAR topwinname = dfr:TopWindowName

	
	if (strlen(topwinname)==0)
		abort "No window graph is specified."
	 return -1
	endif
	
	FigCon_UpdateGraph()

End


Function FigCon_setvar_SetLabeFontSize(ctrlName,varNum,varStr,varName) : SetVariableControl
	String ctrlName
	Variable varNum
	String varStr
	String varName
	
	DFREF dfr = root:FigCon
	SVAR topwinname = dfr:TopWindowName
	SVAR LabelName_l = dfr:GlabelName_l,LabelName_b = dfr:GlabelName_b
	NVAR fsize_l=dfr:GlabelFontSize_l,fsize_b=dfr:GlabelFontSize_b

	String labelname
	
	if (strlen(topwinname)==0)
		abort "No window graph is specified."
	 return -1
	endif
	
	string ctrlnamelist = "Figcon_LabelFontSizeL_setvar;Figcon_LabelFontSizeB_setvar;"
	variable axisindex = whichListItem(ctrlName,ctrlnamelist)
		
	switch(axisindex)	
		case 0:	// left axis label
			labelname = LabelName_l
			LabelName_l = FigCon_ChangeLabelFontSize(labelname,varNum)
			break
		case 1:	// bottom axis label
			labelname = LabelName_b
			LabelName_b = FigCon_ChangeLabelFontSize(labelname,varNum)
			break
	endswitch

	
	FigCon_UpdateGraph()

End

Function/S FigCon_ChangeLabelFontSize(labelstring,labelfontsize)
String labelstring
Variable labelfontsize

	String ChString
	Variable prefontsize,index
	
	if(cmpstr(labelstring[1],"Z")==0)
		index = 2
		Do
			if(numtype(str2num(labelstring[index]))==2)
				break
			endif
			index = index +1
		while(1)
		String schar = labelstring[2,index-1]
		prefontsize = str2num(schar)
		ChString = labelstring[index,inf]		
	else
		ChString = labelstring
	endif
	
	if (labelfontsize!=0)
		if (labelfontsize>9)
			ChString = "\Z" + num2str(labelfontsize) + ChString
		elseif(labelfontsize<10)
			ChString = "\Z0" + num2str(labelfontsize) + ChString
		endif
	endif
	
	return ChString
end


Function FigCon_Panel_LabelSetting() 
	PauseUpdate; Silent 1		// building window...
	
	DFREF dfr = root:FigCon
	NVAR labelmode_l=dfr:GLabelMode_l,labelmode_b=dfr:GLabelMode_b


	//Panel Displaying
	NewPanel /W=(290,242,568,389)/N=LabelSetting
	ModifyPanel cbRGB=(16385,49025,65535)
	SetDrawLayer UserBack
	PopupMenu Figcon_LabelModeL_popup,pos={9.00,6.00},size={106.00,23.00},bodyWidth=74,proc=Figcon_popup_SetLabelMode,title="L label"
	PopupMenu Figcon_LabelModeL_popup,font="Arial",fSize=10
	PopupMenu Figcon_LabelModeL_popup,mode=(labelmode_l+1),value= #"\"ON;AxisOnly;OFF;\""
	PopupMenu Figcon_LabelModeB_popup,pos={125.00,6.00},size={111.00,23.00},bodyWidth=74,proc=Figcon_popup_SetLabelMode,title="B Label"
	PopupMenu Figcon_LabelModeB_popup,font="Arial",fSize=10
	PopupMenu Figcon_LabelModeB_popup,mode=(labelmode_b+1),value= #"\"ON;AxisOnly;OFF;\""
	PopupMenu Figcon_LabeAxisL_popup,pos={9.00,30.00},size={169.00,23.00},bodyWidth=140,proc=Figcon_popup_SetLabelName,title="L Axis"
	PopupMenu Figcon_LabeAxisL_popup,font="Arial",fSize=10
	PopupMenu Figcon_LabeAxisL_popup,mode=1,value= #":FigCon:axislabelname"
	SetVariable FigCon_LabelNameL_setvar,pos={8.00,53.00},size={257.00,19.00},bodyWidth=230,proc=FigCon_setvar_SetLabelName,title="Left"
	SetVariable FigCon_LabelNameL_setvar,font="Arial",fSize=14
	SetVariable FigCon_LabelNameL_setvar,limits={-inf,inf,0},value= root:FigCon:GlabelName_l
	PopupMenu Figcon_LabeAxisB_popup,pos={9.00,78.00},size={171.00,23.00},bodyWidth=140,proc=Figcon_popup_SetLabelName,title="B Axis"
	PopupMenu Figcon_LabeAxisB_popup,font="Arial",fSize=10
	PopupMenu Figcon_LabeAxisB_popup,mode=14,value= #":FigCon:axislabelname"
	SetVariable FigCon_LabelNameL_setvar1,pos={7.00,101.00},size={259.00,19.00},bodyWidth=230,proc=FigCon_setvar_SetLabelName,title="Btm"
	SetVariable FigCon_LabelNameL_setvar1,font="Arial",fSize=14
	SetVariable FigCon_LabelNameL_setvar1,limits={-inf,inf,0},value= root:FigCon:GlabelName_b
	SetVariable Figcon_LabelFontSizeL_setvar,pos={179.00,31.00},size={79.00,17.00},bodyWidth=50,proc=FigCon_setvar_SetLabeFontSize,title=" size"
	SetVariable Figcon_LabelFontSizeL_setvar,font="Arial",fSize=12
	SetVariable Figcon_LabelFontSizeL_setvar,limits={0,inf,1},value= root:FigCon:GlabelFontSize_l
	SetVariable Figcon_LabelFontSizeB_setvar,pos={179.00,78.00},size={79.00,17.00},bodyWidth=50,proc=FigCon_setvar_SetLabeFontSize,title=" size"
	SetVariable Figcon_LabelFontSizeB_setvar,font="Arial",fSize=12
	SetVariable Figcon_LabelFontSizeB_setvar,limits={0,inf,1},value= root:FigCon:GlabelFontSize_b
	Button FigCon_LabelSettingDone_button,pos={196.00,122.00},size={67.00,20.00},proc=FigCon_Button_LabelSettingDone,title="done"
	Button FigCon_LabelSettingDone_button,fSize=10,fColor=(65535,32768,32768)
	
End