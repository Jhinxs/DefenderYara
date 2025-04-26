
rule VirTool_Win32_CeeInject_gen_JW{
	meta:
		description = "VirTool:Win32/CeeInject.gen!JW,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {8a 0a 32 8c 85 } //2
		$a_01_1 = {33 c9 66 8b 08 81 f9 4d 5a 00 00 74 } //1
		$a_01_2 = {8d 94 01 f8 00 00 00 } //1
		$a_01_3 = {8d 54 01 18 } //1
		$a_01_4 = {33 d2 66 8b 51 12 81 e2 00 20 00 00 85 d2 75 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}