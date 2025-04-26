
rule VirTool_Win32_Obfuscator_ZG_upk{
	meta:
		description = "VirTool:Win32/Obfuscator.ZG!upk,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {33 c0 40 8b 55 f8 03 d0 8b ca 49 8a 09 3a 8d ?? ff ff ff 75 ed 8a 0a 3a 8d ?? ff ff ff 75 e3 42 89 95 ?? ff ff ff 03 45 f8 40 05 ?? 00 00 00 89 45 90 09 0e 00 c6 85 ?? ff ff ff 54 c6 85 ?? ff ff ff 5e } //1
		$a_03_1 = {8b 30 4e 85 f6 7c 1d 46 33 c0 8b 55 ?? 0f b6 14 02 8b 8d ?? ff ff ff 33 51 04 8b 4d ?? 88 14 01 40 4e 75 e6 8b 45 ?? 89 85 ?? ff ff ff 8b 85 ?? ff ff ff 66 81 38 4d 5a 0f 85 ?? ?? 00 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}