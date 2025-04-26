
rule TrojanSpy_AndroidOS_Banker_AO_MTB{
	meta:
		description = "TrojanSpy:AndroidOS/Banker.AO!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2f 54 72 61 6e 73 69 63 74 69 6f 6e } //1 /Transiction
		$a_03_1 = {63 6f 6d 2f [0-08] 2f 73 6d 73 74 65 73 74 } //1
		$a_01_2 = {68 69 64 65 4c 61 75 6e 63 68 65 72 49 63 6f 6e } //1 hideLauncherIcon
		$a_01_3 = {65 78 65 63 75 74 65 44 65 6c 61 79 65 64 } //1 executeDelayed
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}