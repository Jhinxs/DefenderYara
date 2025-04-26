
rule Misleading_MacOS_BlueBlood_E_xp{
	meta:
		description = "Misleading:MacOS/BlueBlood.E!xp,SIGNATURE_TYPE_MACHOHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {42 72 6f 77 73 65 72 49 6e 6a 65 63 74 6f 72 45 78 74 } //2 BrowserInjectorExt
		$a_00_1 = {46 6c 65 78 69 53 50 59 } //1 FlexiSPY
		$a_00_2 = {4d 65 73 73 61 67 65 50 6f 72 74 49 50 43 53 65 6e 64 65 72 2e 68 } //1 MessagePortIPCSender.h
		$a_02_3 = {62 6c 62 6c 75 2d 90 20 20 2f 42 75 69 6c 64 2f 50 72 6f 64 75 63 74 73 } //1
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1) >=3
 
}