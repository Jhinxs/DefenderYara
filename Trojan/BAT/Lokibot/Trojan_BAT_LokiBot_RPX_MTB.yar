
rule Trojan_BAT_LokiBot_RPX_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {00 06 08 0e 04 08 91 07 08 07 8e 69 5d 91 61 d2 9c 00 08 17 58 0c 08 04 8e 69 fe 04 0d 09 2d e0 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_LokiBot_RPX_MTB_2{
	meta:
		description = "Trojan:BAT/LokiBot.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {00 07 11 04 07 8e 69 5d 07 11 04 07 8e 69 5d 91 08 11 04 1f 16 5d ?? ?? 00 00 0a 61 ?? ?? 00 00 0a 07 11 04 17 58 07 8e 69 5d 91 ?? ?? 00 00 0a 59 20 00 01 00 00 58 20 00 01 00 00 5d d2 9c 00 11 04 15 58 13 04 11 04 16 fe 04 16 fe 01 13 05 11 05 2d ac } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_BAT_LokiBot_RPX_MTB_3{
	meta:
		description = "Trojan:BAT/LokiBot.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {00 08 09 16 20 00 10 00 00 6f 55 00 00 0a 13 05 11 05 16 fe 02 13 06 11 06 2c 0e 00 11 04 09 16 11 05 6f 56 00 00 0a 00 00 00 11 05 16 fe 02 13 07 11 07 2d cb } //1
		$a_01_1 = {66 72 6d 42 6c 61 63 6b 4a 61 63 6b 53 69 6d } //1 frmBlackJackSim
		$a_01_2 = {43 6f 6d 70 69 6c 61 74 69 6f 6e 52 65 6c 61 78 61 74 69 6f 6e 73 } //1 CompilationRelaxations
		$a_01_3 = {43 61 74 65 67 6f 72 79 4d 65 6d 62 65 72 73 68 69 70 } //1 CategoryMembership
		$a_01_4 = {44 65 66 65 72 72 65 64 44 69 73 70 6f 73 61 62 6c 65 } //1 DeferredDisposable
		$a_01_5 = {53 63 68 65 64 75 6c 65 64 43 6f 6e 63 75 72 72 65 6e 74 } //1 ScheduledConcurrent
		$a_01_6 = {42 00 38 00 44 00 32 00 35 00 54 00 } //1 B8D25T
		$a_01_7 = {50 00 61 00 74 00 68 00 5f 00 46 00 69 00 6e 00 64 00 65 00 72 00 } //1 Path_Finder
		$a_01_8 = {50 00 61 00 72 00 65 00 74 00 68 00 65 00 72 00 66 00 6c 00 65 00 6e 00 2e 00 54 00 75 00 63 00 73 00 6f 00 6e 00 } //1 Paretherflen.Tucson
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}