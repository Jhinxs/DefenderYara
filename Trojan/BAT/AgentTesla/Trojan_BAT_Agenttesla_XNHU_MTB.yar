
rule Trojan_BAT_Agenttesla_XNHU_MTB{
	meta:
		description = "Trojan:BAT/Agenttesla.XNHU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 09 00 00 "
		
	strings :
		$a_01_0 = {24 30 37 32 34 33 36 35 66 2d 30 39 62 31 2d 34 31 65 30 2d 61 36 35 62 2d 63 33 39 30 37 30 63 31 31 63 66 34 } //10 $0724365f-09b1-41e0-a65b-c39070c11cf4
		$a_01_1 = {64 75 63 6b 63 68 6f 69 63 65 73 65 6c 65 63 74 6f 72 } //1 duckchoiceselector
		$a_01_2 = {64 75 63 6b 6e 61 6d 65 76 61 72 69 61 62 6c 65 73 } //1 ducknamevariables
		$a_01_3 = {47 65 6e 65 72 61 74 65 64 75 63 6b 63 6f 64 65 } //1 Generateduckcode
		$a_01_4 = {47 69 6d 6d 65 61 64 75 63 6b } //1 Gimmeaduck
		$a_01_5 = {69 6e 74 65 67 72 61 74 65 } //1 integrate
		$a_01_6 = {72 65 61 64 65 72 } //1 reader
		$a_01_7 = {72 65 67 65 6e 65 72 61 74 65 } //1 regenerate
		$a_01_8 = {75 6e 69 71 75 65 44 75 63 6b } //1 uniqueDuck
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=18
 
}