
rule VirTool_Win32_VBInject_gen_HJ{
	meta:
		description = "VirTool:Win32/VBInject.gen!HJ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {8b 40 1c 03 41 10 } //1
		$a_01_1 = {8b 80 1c 01 00 00 83 c0 08 } //1
		$a_01_2 = {89 81 28 01 00 00 } //1
		$a_01_3 = {8b 4d 08 89 81 a8 02 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}