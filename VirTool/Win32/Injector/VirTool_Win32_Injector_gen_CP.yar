
rule VirTool_Win32_Injector_gen_CP{
	meta:
		description = "VirTool:Win32/Injector.gen!CP,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {6a 00 68 bc 02 00 00 6a 08 6a 12 e8 ?? ?? ?? ?? a3 ?? ?? ?? ?? e8 ?? ?? ?? ?? ff 35 90 1b 01 e8 } //2
		$a_03_1 = {6a 00 6a 1c ff 75 c4 e8 ?? ?? ?? ?? 6a 05 ff 75 c4 e8 } //1
		$a_01_2 = {50 72 6f 73 74 61 72 74 5f 43 6c 61 73 73 00 } //1
		$a_01_3 = {54 65 63 68 6e 69 63 6f 6c 6f 72 20 42 75 74 74 6f 6e 73 00 } //1
		$a_03_4 = {8d 45 fc eb 90 14 eb 90 14 (eb|e9) } //1
		$a_03_5 = {68 00 80 00 00 eb 90 14 68 72 14 00 00 eb } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=6
 
}