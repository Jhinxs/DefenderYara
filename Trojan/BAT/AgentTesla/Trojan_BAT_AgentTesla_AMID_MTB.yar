
rule Trojan_BAT_AgentTesla_AMID_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AMID!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0e 00 00 "
		
	strings :
		$a_81_0 = {66 73 64 64 64 64 73 66 73 66 66 66 73 66 73 66 73 64 64 66 64 66 } //1 fsddddsfsfffsfsfsddfdf
		$a_81_1 = {64 72 64 66 65 66 66 73 73 64 64 64 66 73 6c 6f 73 66 73 64 66 65 67 } //1 drdfeffssdddfslosfsdfeg
		$a_81_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_3 = {4f 75 74 70 75 74 44 65 62 75 67 53 74 72 69 6e 67 } //1 OutputDebugString
		$a_81_4 = {54 6f 53 74 72 69 6e 67 } //1 ToString
		$a_81_5 = {67 64 64 67 64 6c 73 66 66 73 64 66 73 64 73 66 64 6c 73 67 73 64 73 64 66 68 73 67 } //1 gddgdlsffsdfsdsfdlsgsdsdfhsg
		$a_81_6 = {53 68 6f 72 74 50 72 6f 63 64 66 66 66 68 65 73 73 20 53 74 61 72 74 65 64 } //1 ShortProcdfffhess Started
		$a_81_7 = {53 68 6f 72 74 50 64 64 64 64 64 64 64 6a 66 6a 66 64 64 64 64 64 64 64 64 64 64 64 64 72 6f 63 65 73 73 20 43 6f 6d 70 6c 65 74 65 64 } //1 ShortPdddddddjfjfddddddddddddrocess Completed
		$a_81_8 = {53 68 6f 72 74 50 72 6f 63 64 65 73 73 20 53 74 61 72 74 65 64 } //1 ShortProcdess Started
		$a_81_9 = {53 68 6f 72 74 50 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 66 64 64 64 72 6f 63 65 73 73 20 43 6f 6d 70 6c 65 74 65 64 } //1 ShortPddddddddddddddddfdddrocess Completed
		$a_81_10 = {53 68 6f 72 74 50 72 6f 73 63 64 65 73 73 20 53 74 61 72 74 65 64 } //1 ShortProscdess Started
		$a_81_11 = {53 68 6f 72 73 66 73 66 74 50 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 68 66 67 68 67 64 64 64 64 72 6f 63 65 73 73 20 43 6f 6d 70 6c 65 74 65 64 } //1 ShorsfsftPdddddddddddddddhfghgddddrocess Completed
		$a_81_12 = {53 68 6f 72 74 50 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 72 6f 63 65 73 73 20 43 6f 6d 70 6c 65 74 65 64 } //1 ShortPdddddddddddddddddddrocess Completed
		$a_81_13 = {53 68 6f 72 66 50 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 72 6f 63 65 73 73 20 43 6f 6d 70 6c 65 74 65 64 } //1 ShorfPdddddddddddddddddddrocess Completed
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1) >=14
 
}
rule Trojan_BAT_AgentTesla_AMID_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.AMID!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0f 00 00 "
		
	strings :
		$a_81_0 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_1 = {4f 75 74 70 75 74 44 65 62 75 67 53 74 72 69 6e 67 } //1 OutputDebugString
		$a_81_2 = {64 72 64 66 65 66 66 73 73 64 64 64 66 73 6c 6f 66 73 64 66 65 67 } //1 drdfeffssdddfslofsdfeg
		$a_81_3 = {64 64 64 66 64 66 66 64 73 73 64 66 68 66 67 } //1 dddfdffdssdfhfg
		$a_81_4 = {53 68 6f 72 74 50 72 6f 63 64 66 66 66 68 65 73 73 20 53 74 61 72 74 65 64 } //1 ShortProcdfffhess Started
		$a_81_5 = {53 68 6f 72 74 50 64 64 64 64 64 64 64 6a 66 6a 66 64 64 64 64 64 64 64 64 64 64 64 64 72 6f 63 65 73 73 20 43 6f 6d 70 6c 65 74 65 64 } //1 ShortPdddddddjfjfddddddddddddrocess Completed
		$a_81_6 = {53 68 6f 72 74 50 72 6f 63 64 65 73 73 20 53 74 61 72 74 65 64 } //1 ShortProcdess Started
		$a_81_7 = {53 68 6f 72 74 50 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 66 64 64 64 72 6f 63 65 73 73 20 43 6f 6d 70 6c 65 74 65 64 } //1 ShortPddddddddddddddddfdddrocess Completed
		$a_81_8 = {53 68 6f 72 74 50 72 6f 73 63 64 65 73 73 20 53 74 61 72 74 65 64 } //1 ShortProscdess Started
		$a_81_9 = {53 68 6f 72 73 66 73 66 74 50 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 68 66 67 68 67 64 64 64 64 72 6f 63 65 73 73 20 43 6f 6d 70 6c 65 74 65 64 } //1 ShorsfsftPdddddddddddddddhfghgddddrocess Completed
		$a_81_10 = {53 68 6f 72 74 50 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 72 6f 63 65 73 73 20 43 6f 6d 70 6c 65 74 65 64 } //1 ShortPdddddddddddddddddddrocess Completed
		$a_81_11 = {53 68 6f 72 66 50 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 72 6f 63 65 73 73 20 43 6f 6d 70 6c 65 74 65 64 } //1 ShorfPdddddddddddddddddddrocess Completed
		$a_81_12 = {53 68 6f 72 74 50 64 64 73 6b 6a 64 64 64 64 64 64 64 64 64 64 72 6f 63 65 73 73 20 43 6f 6d 70 66 73 66 6c 65 74 65 64 } //1 ShortPddskjddddddddddrocess Compfsfleted
		$a_81_13 = {53 68 6f 72 74 64 73 61 73 64 73 66 73 64 73 50 72 6f 63 64 65 73 73 20 53 74 61 72 74 65 64 } //1 ShortdsasdsfsdsProcdess Started
		$a_81_14 = {53 68 6f 72 74 50 64 64 73 61 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 72 6f 63 65 73 73 20 43 6f 6d 70 6c 65 74 65 64 } //1 ShortPddsaddddddddddddddddddrocess Completed
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1) >=15
 
}