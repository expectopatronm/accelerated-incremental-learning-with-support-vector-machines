set lang "C++"
set moduleName "hardware_accelerator"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "function_flag"
set BitWidth0 "64"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "1"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "unsigned int"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "length_x"
set BitWidth1 "64"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "1"
set Reference1 "0"
set Dims1 [list 0]
set Interface1 "wire"
set DataType1 "unsigned int"
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "tile_count"
set BitWidth2 "64"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "1"
set Reference2 "0"
set Dims2 [list 0]
set Interface2 "wire"
set DataType2 "unsigned int"
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "dual_coeff_length"
set BitWidth3 "64"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "1"
set Reference3 "0"
set Dims3 [list 0]
set Interface3 "wire"
set DataType3 "unsigned int"
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set PortName4 "remainder"
set BitWidth4 "64"
set ArrayOpt4 ""
set Const4 "0"
set Volatile4 "0"
set Pointer4 "1"
set Reference4 "0"
set Dims4 [list 0]
set Interface4 "wire"
set DataType4 "unsigned int"
set Port4 [list $PortName4 $Interface4 $DataType4 $Pointer4 $Dims4 $Const4 $Volatile4 $ArrayOpt4]
lappend PortList $Port4
set PortName5 "in_stream"
set BitWidth5 "64"
set ArrayOpt5 ""
set Const5 "0"
set Volatile5 "0"
set Pointer5 "1"
set Reference5 "0"
set Dims5 [list 0]
set Interface5 "wire"
set structMem5 ""
set PortName50 "data"
set BitWidth50 "32"
set ArrayOpt50 ""
set Const50 "0"
set Volatile50 "0"
set Pointer50 "0"
set Reference50 "0"
set Dims50 [list 0]
set Interface50 "wire"
set DataType50 "[list ap_uint 32 ]"
set Port50 [list $PortName50 $Interface50 $DataType50 $Pointer50 $Dims50 $Const50 $Volatile50 $ArrayOpt50]
lappend structMem5 $Port50
set PortName51 "keep"
set BitWidth51 "8"
set ArrayOpt51 ""
set Const51 "0"
set Volatile51 "0"
set Pointer51 "0"
set Reference51 "0"
set Dims51 [list 0]
set Interface51 "wire"
set DataType51 "[list ap_uint 4 ]"
set Port51 [list $PortName51 $Interface51 $DataType51 $Pointer51 $Dims51 $Const51 $Volatile51 $ArrayOpt51]
lappend structMem5 $Port51
set PortName52 "strb"
set BitWidth52 "8"
set ArrayOpt52 ""
set Const52 "0"
set Volatile52 "0"
set Pointer52 "0"
set Reference52 "0"
set Dims52 [list 0]
set Interface52 "wire"
set DataType52 "[list ap_uint 4 ]"
set Port52 [list $PortName52 $Interface52 $DataType52 $Pointer52 $Dims52 $Const52 $Volatile52 $ArrayOpt52]
lappend structMem5 $Port52
set PortName53 "user"
set BitWidth53 "8"
set ArrayOpt53 ""
set Const53 "0"
set Volatile53 "0"
set Pointer53 "0"
set Reference53 "0"
set Dims53 [list 0]
set Interface53 "wire"
set DataType53 "[list ap_uint 4 ]"
set Port53 [list $PortName53 $Interface53 $DataType53 $Pointer53 $Dims53 $Const53 $Volatile53 $ArrayOpt53]
lappend structMem5 $Port53
set PortName54 "last"
set BitWidth54 "8"
set ArrayOpt54 ""
set Const54 "0"
set Volatile54 "0"
set Pointer54 "0"
set Reference54 "0"
set Dims54 [list 0]
set Interface54 "wire"
set DataType54 "[list ap_uint 1 ]"
set Port54 [list $PortName54 $Interface54 $DataType54 $Pointer54 $Dims54 $Const54 $Volatile54 $ArrayOpt54]
lappend structMem5 $Port54
set PortName55 "id"
set BitWidth55 "8"
set ArrayOpt55 ""
set Const55 "0"
set Volatile55 "0"
set Pointer55 "0"
set Reference55 "0"
set Dims55 [list 0]
set Interface55 "wire"
set DataType55 "[list ap_uint 5 ]"
set Port55 [list $PortName55 $Interface55 $DataType55 $Pointer55 $Dims55 $Const55 $Volatile55 $ArrayOpt55]
lappend structMem5 $Port55
set PortName56 "dest"
set BitWidth56 "8"
set ArrayOpt56 ""
set Const56 "0"
set Volatile56 "0"
set Pointer56 "0"
set Reference56 "0"
set Dims56 [list 0]
set Interface56 "wire"
set DataType56 "[list ap_uint 5 ]"
set Port56 [list $PortName56 $Interface56 $DataType56 $Pointer56 $Dims56 $Const56 $Volatile56 $ArrayOpt56]
lappend structMem5 $Port56
set DataType5tp0 "int"
set DataType5tp1 "int"
set DataType5tp2 "int"
set DataType5tp3 "int"
set structParameter5 [list [list $DataType5tp0 D] [list $DataType5tp1 U] [list $DataType5tp2 TI] [list $DataType5tp3 TD] ]
set structArgument5 [list 32 4 5 5 ]
set NameSpace5 [list ]
set structIsPacked5 "0"
set DataType5 [list "ap_axiu<32, 4, 5, 5>" "struct ap_axiu" $structMem5 0 0 $structParameter5 $structArgument5 $NameSpace5 $structIsPacked5]
set Port5 [list $PortName5 $Interface5 $DataType5 $Pointer5 $Dims5 $Const5 $Volatile5 $ArrayOpt5]
lappend PortList $Port5
set PortName6 "kernel_index_stream"
set BitWidth6 "64"
set ArrayOpt6 ""
set Const6 "0"
set Volatile6 "0"
set Pointer6 "1"
set Reference6 "0"
set Dims6 [list 0]
set Interface6 "wire"
set structMem6 ""
set PortName60 "data"
set BitWidth60 "32"
set ArrayOpt60 ""
set Const60 "0"
set Volatile60 "0"
set Pointer60 "0"
set Reference60 "0"
set Dims60 [list 0]
set Interface60 "wire"
set DataType60 "[list ap_uint 32 ]"
set Port60 [list $PortName60 $Interface60 $DataType60 $Pointer60 $Dims60 $Const60 $Volatile60 $ArrayOpt60]
lappend structMem6 $Port60
set PortName61 "keep"
set BitWidth61 "8"
set ArrayOpt61 ""
set Const61 "0"
set Volatile61 "0"
set Pointer61 "0"
set Reference61 "0"
set Dims61 [list 0]
set Interface61 "wire"
set DataType61 "[list ap_uint 4 ]"
set Port61 [list $PortName61 $Interface61 $DataType61 $Pointer61 $Dims61 $Const61 $Volatile61 $ArrayOpt61]
lappend structMem6 $Port61
set PortName62 "strb"
set BitWidth62 "8"
set ArrayOpt62 ""
set Const62 "0"
set Volatile62 "0"
set Pointer62 "0"
set Reference62 "0"
set Dims62 [list 0]
set Interface62 "wire"
set DataType62 "[list ap_uint 4 ]"
set Port62 [list $PortName62 $Interface62 $DataType62 $Pointer62 $Dims62 $Const62 $Volatile62 $ArrayOpt62]
lappend structMem6 $Port62
set PortName63 "user"
set BitWidth63 "8"
set ArrayOpt63 ""
set Const63 "0"
set Volatile63 "0"
set Pointer63 "0"
set Reference63 "0"
set Dims63 [list 0]
set Interface63 "wire"
set DataType63 "[list ap_uint 4 ]"
set Port63 [list $PortName63 $Interface63 $DataType63 $Pointer63 $Dims63 $Const63 $Volatile63 $ArrayOpt63]
lappend structMem6 $Port63
set PortName64 "last"
set BitWidth64 "8"
set ArrayOpt64 ""
set Const64 "0"
set Volatile64 "0"
set Pointer64 "0"
set Reference64 "0"
set Dims64 [list 0]
set Interface64 "wire"
set DataType64 "[list ap_uint 1 ]"
set Port64 [list $PortName64 $Interface64 $DataType64 $Pointer64 $Dims64 $Const64 $Volatile64 $ArrayOpt64]
lappend structMem6 $Port64
set PortName65 "id"
set BitWidth65 "8"
set ArrayOpt65 ""
set Const65 "0"
set Volatile65 "0"
set Pointer65 "0"
set Reference65 "0"
set Dims65 [list 0]
set Interface65 "wire"
set DataType65 "[list ap_uint 5 ]"
set Port65 [list $PortName65 $Interface65 $DataType65 $Pointer65 $Dims65 $Const65 $Volatile65 $ArrayOpt65]
lappend structMem6 $Port65
set PortName66 "dest"
set BitWidth66 "8"
set ArrayOpt66 ""
set Const66 "0"
set Volatile66 "0"
set Pointer66 "0"
set Reference66 "0"
set Dims66 [list 0]
set Interface66 "wire"
set DataType66 "[list ap_uint 5 ]"
set Port66 [list $PortName66 $Interface66 $DataType66 $Pointer66 $Dims66 $Const66 $Volatile66 $ArrayOpt66]
lappend structMem6 $Port66
set DataType6tp0 "int"
set DataType6tp1 "int"
set DataType6tp2 "int"
set DataType6tp3 "int"
set structParameter6 [list [list $DataType6tp0 D] [list $DataType6tp1 U] [list $DataType6tp2 TI] [list $DataType6tp3 TD] ]
set structArgument6 [list 32 4 5 5 ]
set NameSpace6 [list ]
set structIsPacked6 "0"
set DataType6 [list "ap_axiu<32, 4, 5, 5>" "struct ap_axiu" $structMem6 0 0 $structParameter6 $structArgument6 $NameSpace6 $structIsPacked6]
set Port6 [list $PortName6 $Interface6 $DataType6 $Pointer6 $Dims6 $Const6 $Volatile6 $ArrayOpt6]
lappend PortList $Port6
set PortName7 "supp_vec_stream"
set BitWidth7 "64"
set ArrayOpt7 ""
set Const7 "0"
set Volatile7 "0"
set Pointer7 "1"
set Reference7 "0"
set Dims7 [list 0]
set Interface7 "wire"
set structMem7 ""
set PortName70 "data"
set BitWidth70 "32"
set ArrayOpt70 ""
set Const70 "0"
set Volatile70 "0"
set Pointer70 "0"
set Reference70 "0"
set Dims70 [list 0]
set Interface70 "wire"
set DataType70 "[list ap_uint 32 ]"
set Port70 [list $PortName70 $Interface70 $DataType70 $Pointer70 $Dims70 $Const70 $Volatile70 $ArrayOpt70]
lappend structMem7 $Port70
set PortName71 "keep"
set BitWidth71 "8"
set ArrayOpt71 ""
set Const71 "0"
set Volatile71 "0"
set Pointer71 "0"
set Reference71 "0"
set Dims71 [list 0]
set Interface71 "wire"
set DataType71 "[list ap_uint 4 ]"
set Port71 [list $PortName71 $Interface71 $DataType71 $Pointer71 $Dims71 $Const71 $Volatile71 $ArrayOpt71]
lappend structMem7 $Port71
set PortName72 "strb"
set BitWidth72 "8"
set ArrayOpt72 ""
set Const72 "0"
set Volatile72 "0"
set Pointer72 "0"
set Reference72 "0"
set Dims72 [list 0]
set Interface72 "wire"
set DataType72 "[list ap_uint 4 ]"
set Port72 [list $PortName72 $Interface72 $DataType72 $Pointer72 $Dims72 $Const72 $Volatile72 $ArrayOpt72]
lappend structMem7 $Port72
set PortName73 "user"
set BitWidth73 "8"
set ArrayOpt73 ""
set Const73 "0"
set Volatile73 "0"
set Pointer73 "0"
set Reference73 "0"
set Dims73 [list 0]
set Interface73 "wire"
set DataType73 "[list ap_uint 4 ]"
set Port73 [list $PortName73 $Interface73 $DataType73 $Pointer73 $Dims73 $Const73 $Volatile73 $ArrayOpt73]
lappend structMem7 $Port73
set PortName74 "last"
set BitWidth74 "8"
set ArrayOpt74 ""
set Const74 "0"
set Volatile74 "0"
set Pointer74 "0"
set Reference74 "0"
set Dims74 [list 0]
set Interface74 "wire"
set DataType74 "[list ap_uint 1 ]"
set Port74 [list $PortName74 $Interface74 $DataType74 $Pointer74 $Dims74 $Const74 $Volatile74 $ArrayOpt74]
lappend structMem7 $Port74
set PortName75 "id"
set BitWidth75 "8"
set ArrayOpt75 ""
set Const75 "0"
set Volatile75 "0"
set Pointer75 "0"
set Reference75 "0"
set Dims75 [list 0]
set Interface75 "wire"
set DataType75 "[list ap_uint 5 ]"
set Port75 [list $PortName75 $Interface75 $DataType75 $Pointer75 $Dims75 $Const75 $Volatile75 $ArrayOpt75]
lappend structMem7 $Port75
set PortName76 "dest"
set BitWidth76 "8"
set ArrayOpt76 ""
set Const76 "0"
set Volatile76 "0"
set Pointer76 "0"
set Reference76 "0"
set Dims76 [list 0]
set Interface76 "wire"
set DataType76 "[list ap_uint 5 ]"
set Port76 [list $PortName76 $Interface76 $DataType76 $Pointer76 $Dims76 $Const76 $Volatile76 $ArrayOpt76]
lappend structMem7 $Port76
set DataType7tp0 "int"
set DataType7tp1 "int"
set DataType7tp2 "int"
set DataType7tp3 "int"
set structParameter7 [list [list $DataType7tp0 D] [list $DataType7tp1 U] [list $DataType7tp2 TI] [list $DataType7tp3 TD] ]
set structArgument7 [list 32 4 5 5 ]
set NameSpace7 [list ]
set structIsPacked7 "0"
set DataType7 [list "ap_axiu<32, 4, 5, 5>" "struct ap_axiu" $structMem7 0 0 $structParameter7 $structArgument7 $NameSpace7 $structIsPacked7]
set Port7 [list $PortName7 $Interface7 $DataType7 $Pointer7 $Dims7 $Const7 $Volatile7 $ArrayOpt7]
lappend PortList $Port7
set PortName8 "dual_coef_stream"
set BitWidth8 "64"
set ArrayOpt8 ""
set Const8 "0"
set Volatile8 "0"
set Pointer8 "1"
set Reference8 "0"
set Dims8 [list 0]
set Interface8 "wire"
set structMem8 ""
set PortName80 "data"
set BitWidth80 "32"
set ArrayOpt80 ""
set Const80 "0"
set Volatile80 "0"
set Pointer80 "0"
set Reference80 "0"
set Dims80 [list 0]
set Interface80 "wire"
set DataType80 "[list ap_uint 32 ]"
set Port80 [list $PortName80 $Interface80 $DataType80 $Pointer80 $Dims80 $Const80 $Volatile80 $ArrayOpt80]
lappend structMem8 $Port80
set PortName81 "keep"
set BitWidth81 "8"
set ArrayOpt81 ""
set Const81 "0"
set Volatile81 "0"
set Pointer81 "0"
set Reference81 "0"
set Dims81 [list 0]
set Interface81 "wire"
set DataType81 "[list ap_uint 4 ]"
set Port81 [list $PortName81 $Interface81 $DataType81 $Pointer81 $Dims81 $Const81 $Volatile81 $ArrayOpt81]
lappend structMem8 $Port81
set PortName82 "strb"
set BitWidth82 "8"
set ArrayOpt82 ""
set Const82 "0"
set Volatile82 "0"
set Pointer82 "0"
set Reference82 "0"
set Dims82 [list 0]
set Interface82 "wire"
set DataType82 "[list ap_uint 4 ]"
set Port82 [list $PortName82 $Interface82 $DataType82 $Pointer82 $Dims82 $Const82 $Volatile82 $ArrayOpt82]
lappend structMem8 $Port82
set PortName83 "user"
set BitWidth83 "8"
set ArrayOpt83 ""
set Const83 "0"
set Volatile83 "0"
set Pointer83 "0"
set Reference83 "0"
set Dims83 [list 0]
set Interface83 "wire"
set DataType83 "[list ap_uint 4 ]"
set Port83 [list $PortName83 $Interface83 $DataType83 $Pointer83 $Dims83 $Const83 $Volatile83 $ArrayOpt83]
lappend structMem8 $Port83
set PortName84 "last"
set BitWidth84 "8"
set ArrayOpt84 ""
set Const84 "0"
set Volatile84 "0"
set Pointer84 "0"
set Reference84 "0"
set Dims84 [list 0]
set Interface84 "wire"
set DataType84 "[list ap_uint 1 ]"
set Port84 [list $PortName84 $Interface84 $DataType84 $Pointer84 $Dims84 $Const84 $Volatile84 $ArrayOpt84]
lappend structMem8 $Port84
set PortName85 "id"
set BitWidth85 "8"
set ArrayOpt85 ""
set Const85 "0"
set Volatile85 "0"
set Pointer85 "0"
set Reference85 "0"
set Dims85 [list 0]
set Interface85 "wire"
set DataType85 "[list ap_uint 5 ]"
set Port85 [list $PortName85 $Interface85 $DataType85 $Pointer85 $Dims85 $Const85 $Volatile85 $ArrayOpt85]
lappend structMem8 $Port85
set PortName86 "dest"
set BitWidth86 "8"
set ArrayOpt86 ""
set Const86 "0"
set Volatile86 "0"
set Pointer86 "0"
set Reference86 "0"
set Dims86 [list 0]
set Interface86 "wire"
set DataType86 "[list ap_uint 5 ]"
set Port86 [list $PortName86 $Interface86 $DataType86 $Pointer86 $Dims86 $Const86 $Volatile86 $ArrayOpt86]
lappend structMem8 $Port86
set DataType8tp0 "int"
set DataType8tp1 "int"
set DataType8tp2 "int"
set DataType8tp3 "int"
set structParameter8 [list [list $DataType8tp0 D] [list $DataType8tp1 U] [list $DataType8tp2 TI] [list $DataType8tp3 TD] ]
set structArgument8 [list 32 4 5 5 ]
set NameSpace8 [list ]
set structIsPacked8 "0"
set DataType8 [list "ap_axiu<32, 4, 5, 5>" "struct ap_axiu" $structMem8 0 0 $structParameter8 $structArgument8 $NameSpace8 $structIsPacked8]
set Port8 [list $PortName8 $Interface8 $DataType8 $Pointer8 $Dims8 $Const8 $Volatile8 $ArrayOpt8]
lappend PortList $Port8
set PortName9 "out_stream"
set BitWidth9 "64"
set ArrayOpt9 ""
set Const9 "0"
set Volatile9 "0"
set Pointer9 "1"
set Reference9 "0"
set Dims9 [list 0]
set Interface9 "wire"
set structMem9 ""
set PortName90 "data"
set BitWidth90 "32"
set ArrayOpt90 ""
set Const90 "0"
set Volatile90 "0"
set Pointer90 "0"
set Reference90 "0"
set Dims90 [list 0]
set Interface90 "wire"
set DataType90 "[list ap_uint 32 ]"
set Port90 [list $PortName90 $Interface90 $DataType90 $Pointer90 $Dims90 $Const90 $Volatile90 $ArrayOpt90]
lappend structMem9 $Port90
set PortName91 "keep"
set BitWidth91 "8"
set ArrayOpt91 ""
set Const91 "0"
set Volatile91 "0"
set Pointer91 "0"
set Reference91 "0"
set Dims91 [list 0]
set Interface91 "wire"
set DataType91 "[list ap_uint 4 ]"
set Port91 [list $PortName91 $Interface91 $DataType91 $Pointer91 $Dims91 $Const91 $Volatile91 $ArrayOpt91]
lappend structMem9 $Port91
set PortName92 "strb"
set BitWidth92 "8"
set ArrayOpt92 ""
set Const92 "0"
set Volatile92 "0"
set Pointer92 "0"
set Reference92 "0"
set Dims92 [list 0]
set Interface92 "wire"
set DataType92 "[list ap_uint 4 ]"
set Port92 [list $PortName92 $Interface92 $DataType92 $Pointer92 $Dims92 $Const92 $Volatile92 $ArrayOpt92]
lappend structMem9 $Port92
set PortName93 "user"
set BitWidth93 "8"
set ArrayOpt93 ""
set Const93 "0"
set Volatile93 "0"
set Pointer93 "0"
set Reference93 "0"
set Dims93 [list 0]
set Interface93 "wire"
set DataType93 "[list ap_uint 4 ]"
set Port93 [list $PortName93 $Interface93 $DataType93 $Pointer93 $Dims93 $Const93 $Volatile93 $ArrayOpt93]
lappend structMem9 $Port93
set PortName94 "last"
set BitWidth94 "8"
set ArrayOpt94 ""
set Const94 "0"
set Volatile94 "0"
set Pointer94 "0"
set Reference94 "0"
set Dims94 [list 0]
set Interface94 "wire"
set DataType94 "[list ap_uint 1 ]"
set Port94 [list $PortName94 $Interface94 $DataType94 $Pointer94 $Dims94 $Const94 $Volatile94 $ArrayOpt94]
lappend structMem9 $Port94
set PortName95 "id"
set BitWidth95 "8"
set ArrayOpt95 ""
set Const95 "0"
set Volatile95 "0"
set Pointer95 "0"
set Reference95 "0"
set Dims95 [list 0]
set Interface95 "wire"
set DataType95 "[list ap_uint 5 ]"
set Port95 [list $PortName95 $Interface95 $DataType95 $Pointer95 $Dims95 $Const95 $Volatile95 $ArrayOpt95]
lappend structMem9 $Port95
set PortName96 "dest"
set BitWidth96 "8"
set ArrayOpt96 ""
set Const96 "0"
set Volatile96 "0"
set Pointer96 "0"
set Reference96 "0"
set Dims96 [list 0]
set Interface96 "wire"
set DataType96 "[list ap_uint 5 ]"
set Port96 [list $PortName96 $Interface96 $DataType96 $Pointer96 $Dims96 $Const96 $Volatile96 $ArrayOpt96]
lappend structMem9 $Port96
set DataType9tp0 "int"
set DataType9tp1 "int"
set DataType9tp2 "int"
set DataType9tp3 "int"
set structParameter9 [list [list $DataType9tp0 D] [list $DataType9tp1 U] [list $DataType9tp2 TI] [list $DataType9tp3 TD] ]
set structArgument9 [list 32 4 5 5 ]
set NameSpace9 [list ]
set structIsPacked9 "0"
set DataType9 [list "ap_axiu<32, 4, 5, 5>" "struct ap_axiu" $structMem9 0 0 $structParameter9 $structArgument9 $NameSpace9 $structIsPacked9]
set Port9 [list $PortName9 $Interface9 $DataType9 $Pointer9 $Dims9 $Const9 $Volatile9 $ArrayOpt9]
lappend PortList $Port9
set globalAPint "" 
set returnAPInt "" 
set hasCPPAPInt 1 
set argAPInt "" 
set hasCPPAPFix 0 
set hasSCFix 0 
set hasCBool 0 
set hasCPPComplex 0 
set isTemplateTop 0
set hasHalf 0 
set dataPackList ""
set module [list $moduleName $PortList $rawDecl $argAPInt $returnAPInt $dataPackList]
