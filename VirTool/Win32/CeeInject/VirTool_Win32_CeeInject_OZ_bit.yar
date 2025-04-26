
rule VirTool_Win32_CeeInject_OZ_bit{
	meta:
		description = "VirTool:Win32/CeeInject.OZ!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b f1 c1 ee ?? 03 35 ?? ?? ?? ?? 8b f9 c1 e7 ?? 03 3d ?? ?? ?? ?? 33 f7 8d 3c 0a 33 f7 2b c6 8b f0 c1 ee ?? 03 35 ?? ?? ?? ?? 8b f8 c1 e7 ?? 03 3d ?? ?? ?? ?? 33 f7 8d 3c 02 33 f7 2b ce 81 c2 ?? ?? ?? ?? ff 4d ?? 75 b7 } //1
		$a_03_1 = {8b c3 2b cb 8a 14 01 88 10 47 40 3b 7d ?? 72 f4 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}