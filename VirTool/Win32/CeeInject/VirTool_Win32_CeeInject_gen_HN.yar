
rule VirTool_Win32_CeeInject_gen_HN{
	meta:
		description = "VirTool:Win32/CeeInject.gen!HN,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {8b 56 28 03 56 34 8b 0d ?? ?? ?? ?? 8d 44 24 ?? 50 51 } //1
		$a_03_1 = {07 00 01 00 90 09 04 00 c7 44 24 } //1
		$a_03_2 = {8b 46 50 8b 4e 34 8b 15 ?? ?? ?? ?? 6a 00 68 00 30 00 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}