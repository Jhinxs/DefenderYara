
rule VirTool_Win32_CeeInject_ACA_bit{
	meta:
		description = "VirTool:Win32/CeeInject.ACA!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {83 fa 14 75 04 33 d2 eb 01 42 40 3b c6 72 e5 90 09 0c 00 8a 8a ?? ?? ?? ?? 30 88 } //1
		$a_03_1 = {40 3b c1 72 ea 90 09 11 00 ba ?? ?? ?? ?? 30 90 90 ?? ?? ?? ?? 8b 0d } //1
		$a_01_2 = {30 1c 30 40 3b c7 72 f8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}