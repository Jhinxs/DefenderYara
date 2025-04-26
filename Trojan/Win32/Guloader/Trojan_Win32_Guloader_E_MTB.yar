
rule Trojan_Win32_Guloader_E_MTB{
	meta:
		description = "Trojan:Win32/Guloader.E!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {67 00 61 00 72 00 61 00 6e 00 74 00 69 00 65 00 6e 00 } //1 garantien
		$a_01_1 = {41 00 43 00 48 00 4f 00 4f 00 } //1 ACHOO
		$a_01_2 = {54 00 65 00 6b 00 6e 00 6f 00 6c 00 6f 00 67 00 69 00 73 00 65 00 72 00 69 00 6e 00 67 00 65 00 72 00 73 00 32 00 } //1 Teknologiseringers2
		$a_01_3 = {43 00 4f 00 49 00 4e 00 56 00 45 00 4e 00 54 00 4f 00 52 00 53 00 } //1 COINVENTORS
		$a_01_4 = {49 00 64 00 65 00 6e 00 74 00 69 00 76 00 } //1 Identiv
		$a_81_5 = {46 59 52 52 45 54 59 56 45 4e 44 45 44 45 4c 45 53 } //1 FYRRETYVENDEDELES
		$a_81_6 = {55 72 65 74 65 72 6f 72 72 68 61 70 68 79 39 } //1 Ureterorrhaphy9
		$a_81_7 = {48 65 67 6e 73 74 72 61 61 64 65 6e 65 73 32 } //1 Hegnstraadenes2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1) >=8
 
}