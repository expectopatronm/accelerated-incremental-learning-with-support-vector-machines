set lang "C++"
set moduleName "kernel_matrix"
set moduleIsExternC "0"
set rawDecl ""
set globalVariable ""
set PortList ""
set PortName0 "length_x"
set BitWidth0 "64"
set ArrayOpt0 ""
set Const0 "0"
set Volatile0 "0"
set Pointer0 "1"
set Reference0 "0"
set Dims0 [list 0]
set Interface0 "wire"
set DataType0 "int"
set Port0 [list $PortName0 $Interface0 $DataType0 $Pointer0 $Dims0 $Const0 $Volatile0 $ArrayOpt0]
lappend PortList $Port0
set PortName1 "tile_size"
set BitWidth1 "64"
set ArrayOpt1 ""
set Const1 "0"
set Volatile1 "0"
set Pointer1 "1"
set Reference1 "0"
set Dims1 [list 0]
set Interface1 "wire"
set DataType1 "int"
set Port1 [list $PortName1 $Interface1 $DataType1 $Pointer1 $Dims1 $Const1 $Volatile1 $ArrayOpt1]
lappend PortList $Port1
set PortName2 "remaining_size"
set BitWidth2 "64"
set ArrayOpt2 ""
set Const2 "0"
set Volatile2 "0"
set Pointer2 "1"
set Reference2 "0"
set Dims2 [list 0]
set Interface2 "wire"
set DataType2 "int"
set Port2 [list $PortName2 $Interface2 $DataType2 $Pointer2 $Dims2 $Const2 $Volatile2 $ArrayOpt2]
lappend PortList $Port2
set PortName3 "kernel_in_stream"
set BitWidth3 "64"
set ArrayOpt3 ""
set Const3 "0"
set Volatile3 "0"
set Pointer3 "1"
set Reference3 "0"
set Dims3 [list 0]
set Interface3 "wire"
set structMem3 ""
set PortName30 "data"
set BitWidth30 "32"
set ArrayOpt30 ""
set Const30 "0"
set Volatile30 "0"
set Pointer30 "0"
set Reference30 "0"
set Dims30 [list 0]
set Interface30 "wire"
set DataType30 "[list ap_uint 32 ]"
set Port30 [list $PortName30 $Interface30 $DataType30 $Pointer30 $Dims30 $Const30 $Volatile30 $ArrayOpt30]
lappend structMem3 $Port30
set PortName31 "keep"
set BitWidth31 "8"
set ArrayOpt31 ""
set Const31 "0"
set Volatile31 "0"
set Pointer31 "0"
set Reference31 "0"
set Dims31 [list 0]
set Interface31 "wire"
set DataType31 "[list ap_uint 4 ]"
set Port31 [list $PortName31 $Interface31 $DataType31 $Pointer31 $Dims31 $Const31 $Volatile31 $ArrayOpt31]
lappend structMem3 $Port31
set PortName32 "strb"
set BitWidth32 "8"
set ArrayOpt32 ""
set Const32 "0"
set Volatile32 "0"
set Pointer32 "0"
set Reference32 "0"
set Dims32 [list 0]
set Interface32 "wire"
set DataType32 "[list ap_uint 4 ]"
set Port32 [list $PortName32 $Interface32 $DataType32 $Pointer32 $Dims32 $Const32 $Volatile32 $ArrayOpt32]
lappend structMem3 $Port32
set PortName33 "user"
set BitWidth33 "8"
set ArrayOpt33 ""
set Const33 "0"
set Volatile33 "0"
set Pointer33 "0"
set Reference33 "0"
set Dims33 [list 0]
set Interface33 "wire"
set DataType33 "[list ap_uint 4 ]"
set Port33 [list $PortName33 $Interface33 $DataType33 $Pointer33 $Dims33 $Const33 $Volatile33 $ArrayOpt33]
lappend structMem3 $Port33
set PortName34 "last"
set BitWidth34 "8"
set ArrayOpt34 ""
set Const34 "0"
set Volatile34 "0"
set Pointer34 "0"
set Reference34 "0"
set Dims34 [list 0]
set Interface34 "wire"
set DataType34 "[list ap_uint 1 ]"
set Port34 [list $PortName34 $Interface34 $DataType34 $Pointer34 $Dims34 $Const34 $Volatile34 $ArrayOpt34]
lappend structMem3 $Port34
set PortName35 "id"
set BitWidth35 "8"
set ArrayOpt35 ""
set Const35 "0"
set Volatile35 "0"
set Pointer35 "0"
set Reference35 "0"
set Dims35 [list 0]
set Interface35 "wire"
set DataType35 "[list ap_uint 5 ]"
set Port35 [list $PortName35 $Interface35 $DataType35 $Pointer35 $Dims35 $Const35 $Volatile35 $ArrayOpt35]
lappend structMem3 $Port35
set PortName36 "dest"
set BitWidth36 "8"
set ArrayOpt36 ""
set Const36 "0"
set Volatile36 "0"
set Pointer36 "0"
set Reference36 "0"
set Dims36 [list 0]
set Interface36 "wire"
set DataType36 "[list ap_uint 5 ]"
set Port36 [list $PortName36 $Interface36 $DataType36 $Pointer36 $Dims36 $Const36 $Volatile36 $ArrayOpt36]
lappend structMem3 $Port36
set DataType3tp0 "int"
set DataType3tp1 "int"
set DataType3tp2 "int"
set DataType3tp3 "int"
set structParameter3 [list [list $DataType3tp0 D] [list $DataType3tp1 U] [list $DataType3tp2 TI] [list $DataType3tp3 TD] ]
set structArgument3 [list 32 4 5 5 ]
set NameSpace3 [list ]
set structIsPacked3 "0"
set DataType3 [list "ap_axiu<32, 4, 5, 5>" "struct ap_axiu" $structMem3 0 0 $structParameter3 $structArgument3 $NameSpace3 $structIsPacked3]
set Port3 [list $PortName3 $Interface3 $DataType3 $Pointer3 $Dims3 $Const3 $Volatile3 $ArrayOpt3]
lappend PortList $Port3
set PortName4 "kernel_index_stream"
set BitWidth4 "64"
set ArrayOpt4 ""
set Const4 "0"
set Volatile4 "0"
set Pointer4 "1"
set Reference4 "0"
set Dims4 [list 0]
set Interface4 "wire"
set structMem4 ""
set PortName40 "data"
set BitWidth40 "32"
set ArrayOpt40 ""
set Const40 "0"
set Volatile40 "0"
set Pointer40 "0"
set Reference40 "0"
set Dims40 [list 0]
set Interface40 "wire"
set DataType40 "[list ap_uint 32 ]"
set Port40 [list $PortName40 $Interface40 $DataType40 $Pointer40 $Dims40 $Const40 $Volatile40 $ArrayOpt40]
lappend structMem4 $Port40
set PortName41 "keep"
set BitWidth41 "8"
set ArrayOpt41 ""
set Const41 "0"
set Volatile41 "0"
set Pointer41 "0"
set Reference41 "0"
set Dims41 [list 0]
set Interface41 "wire"
set DataType41 "[list ap_uint 4 ]"
set Port41 [list $PortName41 $Interface41 $DataType41 $Pointer41 $Dims41 $Const41 $Volatile41 $ArrayOpt41]
lappend structMem4 $Port41
set PortName42 "strb"
set BitWidth42 "8"
set ArrayOpt42 ""
set Const42 "0"
set Volatile42 "0"
set Pointer42 "0"
set Reference42 "0"
set Dims42 [list 0]
set Interface42 "wire"
set DataType42 "[list ap_uint 4 ]"
set Port42 [list $PortName42 $Interface42 $DataType42 $Pointer42 $Dims42 $Const42 $Volatile42 $ArrayOpt42]
lappend structMem4 $Port42
set PortName43 "user"
set BitWidth43 "8"
set ArrayOpt43 ""
set Const43 "0"
set Volatile43 "0"
set Pointer43 "0"
set Reference43 "0"
set Dims43 [list 0]
set Interface43 "wire"
set DataType43 "[list ap_uint 4 ]"
set Port43 [list $PortName43 $Interface43 $DataType43 $Pointer43 $Dims43 $Const43 $Volatile43 $ArrayOpt43]
lappend structMem4 $Port43
set PortName44 "last"
set BitWidth44 "8"
set ArrayOpt44 ""
set Const44 "0"
set Volatile44 "0"
set Pointer44 "0"
set Reference44 "0"
set Dims44 [list 0]
set Interface44 "wire"
set DataType44 "[list ap_uint 1 ]"
set Port44 [list $PortName44 $Interface44 $DataType44 $Pointer44 $Dims44 $Const44 $Volatile44 $ArrayOpt44]
lappend structMem4 $Port44
set PortName45 "id"
set BitWidth45 "8"
set ArrayOpt45 ""
set Const45 "0"
set Volatile45 "0"
set Pointer45 "0"
set Reference45 "0"
set Dims45 [list 0]
set Interface45 "wire"
set DataType45 "[list ap_uint 5 ]"
set Port45 [list $PortName45 $Interface45 $DataType45 $Pointer45 $Dims45 $Const45 $Volatile45 $ArrayOpt45]
lappend structMem4 $Port45
set PortName46 "dest"
set BitWidth46 "8"
set ArrayOpt46 ""
set Const46 "0"
set Volatile46 "0"
set Pointer46 "0"
set Reference46 "0"
set Dims46 [list 0]
set Interface46 "wire"
set DataType46 "[list ap_uint 5 ]"
set Port46 [list $PortName46 $Interface46 $DataType46 $Pointer46 $Dims46 $Const46 $Volatile46 $ArrayOpt46]
lappend structMem4 $Port46
set DataType4tp0 "int"
set DataType4tp1 "int"
set DataType4tp2 "int"
set DataType4tp3 "int"
set structParameter4 [list [list $DataType4tp0 D] [list $DataType4tp1 U] [list $DataType4tp2 TI] [list $DataType4tp3 TD] ]
set structArgument4 [list 32 4 5 5 ]
set NameSpace4 [list ]
set structIsPacked4 "0"
set DataType4 [list "ap_axiu<32, 4, 5, 5>" "struct ap_axiu" $structMem4 0 0 $structParameter4 $structArgument4 $NameSpace4 $structIsPacked4]
set Port4 [list $PortName4 $Interface4 $DataType4 $Pointer4 $Dims4 $Const4 $Volatile4 $ArrayOpt4]
lappend PortList $Port4
set PortName5 "kernel_out_stream"
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
