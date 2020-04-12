set lang "C++"
set moduleName "accelerator_function"
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
set PortName1 "length_x_kernel"
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
set PortName2 "tile_size_kernel"
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
set PortName3 "remaining_size_kernel"
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
set PortName4 "tile_count_predict"
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
set PortName5 "remainder_predict"
set BitWidth5 "64"
set ArrayOpt5 ""
set Const5 "0"
set Volatile5 "0"
set Pointer5 "1"
set Reference5 "0"
set Dims5 [list 0]
set Interface5 "wire"
set DataType5 "unsigned int"
set Port5 [list $PortName5 $Interface5 $DataType5 $Pointer5 $Dims5 $Const5 $Volatile5 $ArrayOpt5]
lappend PortList $Port5
set PortName6 "dual_coeff_length"
set BitWidth6 "64"
set ArrayOpt6 ""
set Const6 "0"
set Volatile6 "0"
set Pointer6 "1"
set Reference6 "0"
set Dims6 [list 0]
set Interface6 "wire"
set DataType6 "unsigned int"
set Port6 [list $PortName6 $Interface6 $DataType6 $Pointer6 $Dims6 $Const6 $Volatile6 $ArrayOpt6]
lappend PortList $Port6
set PortName7 "kernel_in_stream"
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
set PortName8 "kernel_index_stream"
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
set PortName9 "kernel_out_stream"
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
set PortName10 "in_stream_predict"
set BitWidth10 "64"
set ArrayOpt10 ""
set Const10 "0"
set Volatile10 "0"
set Pointer10 "1"
set Reference10 "0"
set Dims10 [list 0]
set Interface10 "wire"
set structMem10 ""
set PortName100 "data"
set BitWidth100 "32"
set ArrayOpt100 ""
set Const100 "0"
set Volatile100 "0"
set Pointer100 "0"
set Reference100 "0"
set Dims100 [list 0]
set Interface100 "wire"
set DataType100 "[list ap_uint 32 ]"
set Port100 [list $PortName100 $Interface100 $DataType100 $Pointer100 $Dims100 $Const100 $Volatile100 $ArrayOpt100]
lappend structMem10 $Port100
set PortName101 "keep"
set BitWidth101 "8"
set ArrayOpt101 ""
set Const101 "0"
set Volatile101 "0"
set Pointer101 "0"
set Reference101 "0"
set Dims101 [list 0]
set Interface101 "wire"
set DataType101 "[list ap_uint 4 ]"
set Port101 [list $PortName101 $Interface101 $DataType101 $Pointer101 $Dims101 $Const101 $Volatile101 $ArrayOpt101]
lappend structMem10 $Port101
set PortName102 "strb"
set BitWidth102 "8"
set ArrayOpt102 ""
set Const102 "0"
set Volatile102 "0"
set Pointer102 "0"
set Reference102 "0"
set Dims102 [list 0]
set Interface102 "wire"
set DataType102 "[list ap_uint 4 ]"
set Port102 [list $PortName102 $Interface102 $DataType102 $Pointer102 $Dims102 $Const102 $Volatile102 $ArrayOpt102]
lappend structMem10 $Port102
set PortName103 "user"
set BitWidth103 "8"
set ArrayOpt103 ""
set Const103 "0"
set Volatile103 "0"
set Pointer103 "0"
set Reference103 "0"
set Dims103 [list 0]
set Interface103 "wire"
set DataType103 "[list ap_uint 4 ]"
set Port103 [list $PortName103 $Interface103 $DataType103 $Pointer103 $Dims103 $Const103 $Volatile103 $ArrayOpt103]
lappend structMem10 $Port103
set PortName104 "last"
set BitWidth104 "8"
set ArrayOpt104 ""
set Const104 "0"
set Volatile104 "0"
set Pointer104 "0"
set Reference104 "0"
set Dims104 [list 0]
set Interface104 "wire"
set DataType104 "[list ap_uint 1 ]"
set Port104 [list $PortName104 $Interface104 $DataType104 $Pointer104 $Dims104 $Const104 $Volatile104 $ArrayOpt104]
lappend structMem10 $Port104
set PortName105 "id"
set BitWidth105 "8"
set ArrayOpt105 ""
set Const105 "0"
set Volatile105 "0"
set Pointer105 "0"
set Reference105 "0"
set Dims105 [list 0]
set Interface105 "wire"
set DataType105 "[list ap_uint 5 ]"
set Port105 [list $PortName105 $Interface105 $DataType105 $Pointer105 $Dims105 $Const105 $Volatile105 $ArrayOpt105]
lappend structMem10 $Port105
set PortName106 "dest"
set BitWidth106 "8"
set ArrayOpt106 ""
set Const106 "0"
set Volatile106 "0"
set Pointer106 "0"
set Reference106 "0"
set Dims106 [list 0]
set Interface106 "wire"
set DataType106 "[list ap_uint 5 ]"
set Port106 [list $PortName106 $Interface106 $DataType106 $Pointer106 $Dims106 $Const106 $Volatile106 $ArrayOpt106]
lappend structMem10 $Port106
set DataType10tp0 "int"
set DataType10tp1 "int"
set DataType10tp2 "int"
set DataType10tp3 "int"
set structParameter10 [list [list $DataType10tp0 D] [list $DataType10tp1 U] [list $DataType10tp2 TI] [list $DataType10tp3 TD] ]
set structArgument10 [list 32 4 5 5 ]
set NameSpace10 [list ]
set structIsPacked10 "0"
set DataType10 [list "ap_axiu<32, 4, 5, 5>" "struct ap_axiu" $structMem10 0 0 $structParameter10 $structArgument10 $NameSpace10 $structIsPacked10]
set Port10 [list $PortName10 $Interface10 $DataType10 $Pointer10 $Dims10 $Const10 $Volatile10 $ArrayOpt10]
lappend PortList $Port10
set PortName11 "supp_vec_stream"
set BitWidth11 "64"
set ArrayOpt11 ""
set Const11 "0"
set Volatile11 "0"
set Pointer11 "1"
set Reference11 "0"
set Dims11 [list 0]
set Interface11 "wire"
set structMem11 ""
set PortName110 "data"
set BitWidth110 "32"
set ArrayOpt110 ""
set Const110 "0"
set Volatile110 "0"
set Pointer110 "0"
set Reference110 "0"
set Dims110 [list 0]
set Interface110 "wire"
set DataType110 "[list ap_uint 32 ]"
set Port110 [list $PortName110 $Interface110 $DataType110 $Pointer110 $Dims110 $Const110 $Volatile110 $ArrayOpt110]
lappend structMem11 $Port110
set PortName111 "keep"
set BitWidth111 "8"
set ArrayOpt111 ""
set Const111 "0"
set Volatile111 "0"
set Pointer111 "0"
set Reference111 "0"
set Dims111 [list 0]
set Interface111 "wire"
set DataType111 "[list ap_uint 4 ]"
set Port111 [list $PortName111 $Interface111 $DataType111 $Pointer111 $Dims111 $Const111 $Volatile111 $ArrayOpt111]
lappend structMem11 $Port111
set PortName112 "strb"
set BitWidth112 "8"
set ArrayOpt112 ""
set Const112 "0"
set Volatile112 "0"
set Pointer112 "0"
set Reference112 "0"
set Dims112 [list 0]
set Interface112 "wire"
set DataType112 "[list ap_uint 4 ]"
set Port112 [list $PortName112 $Interface112 $DataType112 $Pointer112 $Dims112 $Const112 $Volatile112 $ArrayOpt112]
lappend structMem11 $Port112
set PortName113 "user"
set BitWidth113 "8"
set ArrayOpt113 ""
set Const113 "0"
set Volatile113 "0"
set Pointer113 "0"
set Reference113 "0"
set Dims113 [list 0]
set Interface113 "wire"
set DataType113 "[list ap_uint 4 ]"
set Port113 [list $PortName113 $Interface113 $DataType113 $Pointer113 $Dims113 $Const113 $Volatile113 $ArrayOpt113]
lappend structMem11 $Port113
set PortName114 "last"
set BitWidth114 "8"
set ArrayOpt114 ""
set Const114 "0"
set Volatile114 "0"
set Pointer114 "0"
set Reference114 "0"
set Dims114 [list 0]
set Interface114 "wire"
set DataType114 "[list ap_uint 1 ]"
set Port114 [list $PortName114 $Interface114 $DataType114 $Pointer114 $Dims114 $Const114 $Volatile114 $ArrayOpt114]
lappend structMem11 $Port114
set PortName115 "id"
set BitWidth115 "8"
set ArrayOpt115 ""
set Const115 "0"
set Volatile115 "0"
set Pointer115 "0"
set Reference115 "0"
set Dims115 [list 0]
set Interface115 "wire"
set DataType115 "[list ap_uint 5 ]"
set Port115 [list $PortName115 $Interface115 $DataType115 $Pointer115 $Dims115 $Const115 $Volatile115 $ArrayOpt115]
lappend structMem11 $Port115
set PortName116 "dest"
set BitWidth116 "8"
set ArrayOpt116 ""
set Const116 "0"
set Volatile116 "0"
set Pointer116 "0"
set Reference116 "0"
set Dims116 [list 0]
set Interface116 "wire"
set DataType116 "[list ap_uint 5 ]"
set Port116 [list $PortName116 $Interface116 $DataType116 $Pointer116 $Dims116 $Const116 $Volatile116 $ArrayOpt116]
lappend structMem11 $Port116
set DataType11tp0 "int"
set DataType11tp1 "int"
set DataType11tp2 "int"
set DataType11tp3 "int"
set structParameter11 [list [list $DataType11tp0 D] [list $DataType11tp1 U] [list $DataType11tp2 TI] [list $DataType11tp3 TD] ]
set structArgument11 [list 32 4 5 5 ]
set NameSpace11 [list ]
set structIsPacked11 "0"
set DataType11 [list "ap_axiu<32, 4, 5, 5>" "struct ap_axiu" $structMem11 0 0 $structParameter11 $structArgument11 $NameSpace11 $structIsPacked11]
set Port11 [list $PortName11 $Interface11 $DataType11 $Pointer11 $Dims11 $Const11 $Volatile11 $ArrayOpt11]
lappend PortList $Port11
set PortName12 "dual_coef_stream"
set BitWidth12 "64"
set ArrayOpt12 ""
set Const12 "0"
set Volatile12 "0"
set Pointer12 "1"
set Reference12 "0"
set Dims12 [list 0]
set Interface12 "wire"
set structMem12 ""
set PortName120 "data"
set BitWidth120 "32"
set ArrayOpt120 ""
set Const120 "0"
set Volatile120 "0"
set Pointer120 "0"
set Reference120 "0"
set Dims120 [list 0]
set Interface120 "wire"
set DataType120 "[list ap_uint 32 ]"
set Port120 [list $PortName120 $Interface120 $DataType120 $Pointer120 $Dims120 $Const120 $Volatile120 $ArrayOpt120]
lappend structMem12 $Port120
set PortName121 "keep"
set BitWidth121 "8"
set ArrayOpt121 ""
set Const121 "0"
set Volatile121 "0"
set Pointer121 "0"
set Reference121 "0"
set Dims121 [list 0]
set Interface121 "wire"
set DataType121 "[list ap_uint 4 ]"
set Port121 [list $PortName121 $Interface121 $DataType121 $Pointer121 $Dims121 $Const121 $Volatile121 $ArrayOpt121]
lappend structMem12 $Port121
set PortName122 "strb"
set BitWidth122 "8"
set ArrayOpt122 ""
set Const122 "0"
set Volatile122 "0"
set Pointer122 "0"
set Reference122 "0"
set Dims122 [list 0]
set Interface122 "wire"
set DataType122 "[list ap_uint 4 ]"
set Port122 [list $PortName122 $Interface122 $DataType122 $Pointer122 $Dims122 $Const122 $Volatile122 $ArrayOpt122]
lappend structMem12 $Port122
set PortName123 "user"
set BitWidth123 "8"
set ArrayOpt123 ""
set Const123 "0"
set Volatile123 "0"
set Pointer123 "0"
set Reference123 "0"
set Dims123 [list 0]
set Interface123 "wire"
set DataType123 "[list ap_uint 4 ]"
set Port123 [list $PortName123 $Interface123 $DataType123 $Pointer123 $Dims123 $Const123 $Volatile123 $ArrayOpt123]
lappend structMem12 $Port123
set PortName124 "last"
set BitWidth124 "8"
set ArrayOpt124 ""
set Const124 "0"
set Volatile124 "0"
set Pointer124 "0"
set Reference124 "0"
set Dims124 [list 0]
set Interface124 "wire"
set DataType124 "[list ap_uint 1 ]"
set Port124 [list $PortName124 $Interface124 $DataType124 $Pointer124 $Dims124 $Const124 $Volatile124 $ArrayOpt124]
lappend structMem12 $Port124
set PortName125 "id"
set BitWidth125 "8"
set ArrayOpt125 ""
set Const125 "0"
set Volatile125 "0"
set Pointer125 "0"
set Reference125 "0"
set Dims125 [list 0]
set Interface125 "wire"
set DataType125 "[list ap_uint 5 ]"
set Port125 [list $PortName125 $Interface125 $DataType125 $Pointer125 $Dims125 $Const125 $Volatile125 $ArrayOpt125]
lappend structMem12 $Port125
set PortName126 "dest"
set BitWidth126 "8"
set ArrayOpt126 ""
set Const126 "0"
set Volatile126 "0"
set Pointer126 "0"
set Reference126 "0"
set Dims126 [list 0]
set Interface126 "wire"
set DataType126 "[list ap_uint 5 ]"
set Port126 [list $PortName126 $Interface126 $DataType126 $Pointer126 $Dims126 $Const126 $Volatile126 $ArrayOpt126]
lappend structMem12 $Port126
set DataType12tp0 "int"
set DataType12tp1 "int"
set DataType12tp2 "int"
set DataType12tp3 "int"
set structParameter12 [list [list $DataType12tp0 D] [list $DataType12tp1 U] [list $DataType12tp2 TI] [list $DataType12tp3 TD] ]
set structArgument12 [list 32 4 5 5 ]
set NameSpace12 [list ]
set structIsPacked12 "0"
set DataType12 [list "ap_axiu<32, 4, 5, 5>" "struct ap_axiu" $structMem12 0 0 $structParameter12 $structArgument12 $NameSpace12 $structIsPacked12]
set Port12 [list $PortName12 $Interface12 $DataType12 $Pointer12 $Dims12 $Const12 $Volatile12 $ArrayOpt12]
lappend PortList $Port12
set PortName13 "out_stream_predict"
set BitWidth13 "64"
set ArrayOpt13 ""
set Const13 "0"
set Volatile13 "0"
set Pointer13 "1"
set Reference13 "0"
set Dims13 [list 0]
set Interface13 "wire"
set structMem13 ""
set PortName130 "data"
set BitWidth130 "32"
set ArrayOpt130 ""
set Const130 "0"
set Volatile130 "0"
set Pointer130 "0"
set Reference130 "0"
set Dims130 [list 0]
set Interface130 "wire"
set DataType130 "[list ap_uint 32 ]"
set Port130 [list $PortName130 $Interface130 $DataType130 $Pointer130 $Dims130 $Const130 $Volatile130 $ArrayOpt130]
lappend structMem13 $Port130
set PortName131 "keep"
set BitWidth131 "8"
set ArrayOpt131 ""
set Const131 "0"
set Volatile131 "0"
set Pointer131 "0"
set Reference131 "0"
set Dims131 [list 0]
set Interface131 "wire"
set DataType131 "[list ap_uint 4 ]"
set Port131 [list $PortName131 $Interface131 $DataType131 $Pointer131 $Dims131 $Const131 $Volatile131 $ArrayOpt131]
lappend structMem13 $Port131
set PortName132 "strb"
set BitWidth132 "8"
set ArrayOpt132 ""
set Const132 "0"
set Volatile132 "0"
set Pointer132 "0"
set Reference132 "0"
set Dims132 [list 0]
set Interface132 "wire"
set DataType132 "[list ap_uint 4 ]"
set Port132 [list $PortName132 $Interface132 $DataType132 $Pointer132 $Dims132 $Const132 $Volatile132 $ArrayOpt132]
lappend structMem13 $Port132
set PortName133 "user"
set BitWidth133 "8"
set ArrayOpt133 ""
set Const133 "0"
set Volatile133 "0"
set Pointer133 "0"
set Reference133 "0"
set Dims133 [list 0]
set Interface133 "wire"
set DataType133 "[list ap_uint 4 ]"
set Port133 [list $PortName133 $Interface133 $DataType133 $Pointer133 $Dims133 $Const133 $Volatile133 $ArrayOpt133]
lappend structMem13 $Port133
set PortName134 "last"
set BitWidth134 "8"
set ArrayOpt134 ""
set Const134 "0"
set Volatile134 "0"
set Pointer134 "0"
set Reference134 "0"
set Dims134 [list 0]
set Interface134 "wire"
set DataType134 "[list ap_uint 1 ]"
set Port134 [list $PortName134 $Interface134 $DataType134 $Pointer134 $Dims134 $Const134 $Volatile134 $ArrayOpt134]
lappend structMem13 $Port134
set PortName135 "id"
set BitWidth135 "8"
set ArrayOpt135 ""
set Const135 "0"
set Volatile135 "0"
set Pointer135 "0"
set Reference135 "0"
set Dims135 [list 0]
set Interface135 "wire"
set DataType135 "[list ap_uint 5 ]"
set Port135 [list $PortName135 $Interface135 $DataType135 $Pointer135 $Dims135 $Const135 $Volatile135 $ArrayOpt135]
lappend structMem13 $Port135
set PortName136 "dest"
set BitWidth136 "8"
set ArrayOpt136 ""
set Const136 "0"
set Volatile136 "0"
set Pointer136 "0"
set Reference136 "0"
set Dims136 [list 0]
set Interface136 "wire"
set DataType136 "[list ap_uint 5 ]"
set Port136 [list $PortName136 $Interface136 $DataType136 $Pointer136 $Dims136 $Const136 $Volatile136 $ArrayOpt136]
lappend structMem13 $Port136
set DataType13tp0 "int"
set DataType13tp1 "int"
set DataType13tp2 "int"
set DataType13tp3 "int"
set structParameter13 [list [list $DataType13tp0 D] [list $DataType13tp1 U] [list $DataType13tp2 TI] [list $DataType13tp3 TD] ]
set structArgument13 [list 32 4 5 5 ]
set NameSpace13 [list ]
set structIsPacked13 "0"
set DataType13 [list "ap_axiu<32, 4, 5, 5>" "struct ap_axiu" $structMem13 0 0 $structParameter13 $structArgument13 $NameSpace13 $structIsPacked13]
set Port13 [list $PortName13 $Interface13 $DataType13 $Pointer13 $Dims13 $Const13 $Volatile13 $ArrayOpt13]
lappend PortList $Port13
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
