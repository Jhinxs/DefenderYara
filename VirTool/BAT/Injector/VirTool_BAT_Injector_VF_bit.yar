
rule VirTool_BAT_Injector_VF_bit{
	meta:
		description = "VirTool:BAT/Injector.VF!bit,SIGNATURE_TYPE_PEHSTR_EXT,16 00 15 00 04 00 00 "
		
	strings :
		$a_03_0 = {11 04 1f 1f 63 08 61 11 04 1f 1f 63 09 61 31 9e ?? ?? 2b 00 } //10
		$a_01_1 = {11 0f 1f 1f 63 11 0d 61 11 0f 1f 1f 63 11 0e 61 } //10
		$a_03_2 = {02 1f 3c d6 28 ?? 00 00 0a 28 ?? 00 00 0a [0-20] d6 1f 78 d6 } //1
		$a_03_3 = {13 05 11 05 7e ?? 00 00 04 19 94 33 18 ?? ?? 0f 00 28 ?? 00 00 0a 08 d6 28 ?? 00 00 0a 28 ?? 00 00 0a 9c 2b 23 11 05 7e ?? 00 00 04 1f 0f 94 33 17 } //1
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*10+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=21
 
}