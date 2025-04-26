
rule VirTool_Win32_Ceeinject_NL_bit{
	meta:
		description = "VirTool:Win32/Ceeinject.NL!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b 45 f8 89 85 ?? ?? ?? ?? 8b 4d ec 03 8d ?? ?? ?? ?? 8b 55 f4 03 95 ?? ?? ?? ?? 8a 02 88 01 8b 4d f8 83 c1 01 89 4d f8 eb } //1
		$a_03_1 = {8b f6 ff 35 ?? ?? ?? ?? 8b f6 ff 35 ?? ?? ?? ?? 8b f6 33 d2 8d 05 ?? ?? ?? ?? 48 03 10 8b d2 8b d2 52 c3 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}