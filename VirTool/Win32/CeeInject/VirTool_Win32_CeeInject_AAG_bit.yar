
rule VirTool_Win32_CeeInject_AAG_bit{
	meta:
		description = "VirTool:Win32/CeeInject.AAG!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {8b c1 c1 e0 04 03 c2 8b d1 03 4c 24 08 c1 ea 05 03 54 24 04 33 c2 33 c1 c3 } //1
		$a_03_1 = {8b cf 56 e8 ?? ?? ?? ?? 8b 54 24 ?? 2b d8 56 ff 74 24 ?? 8b cb e8 ?? ?? ?? ?? 2b f8 b9 01 00 00 00 8b 44 24 ?? 83 c4 10 2b c8 03 f1 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}