
rule VirTool_Win32_CeeInject_gen_IP{
	meta:
		description = "VirTool:Win32/CeeInject.gen!IP,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {8b 40 28 03 85 ?? ?? ff ff 8b b5 ?? ?? ff ff 89 86 b0 00 00 00 } //1
		$a_03_1 = {8b 80 a4 00 00 00 6a 00 6a 04 ff b5 ?? ff ff ff 83 c0 08 } //1
		$a_01_2 = {c7 00 07 00 01 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}