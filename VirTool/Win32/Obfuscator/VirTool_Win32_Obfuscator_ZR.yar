
rule VirTool_Win32_Obfuscator_ZR{
	meta:
		description = "VirTool:Win32/Obfuscator.ZR,SIGNATURE_TYPE_PEHSTR_EXT,05 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {8b c6 23 85 58 ff ff ff 89 85 5c ff ff ff 8b 85 54 ff ff ff 31 85 5c ff ff ff 8b 85 58 ff ff ff 33 85 5c ff ff ff 89 c6 8b c7 31 c6 8b 85 5c ff ff ff 23 c6 89 85 58 ff ff ff ff 85 54 ff ff ff 81 bd 54 ff ff ff ff ff 00 00 7e b4 ff c7 81 ff ff 0f 00 00 7e 9a e8 ?? ?? 00 00 6a 00 ba ?? ?? ?? ?? e8 } //1
		$a_03_1 = {8b 85 5c ff ff ff 23 85 58 ff ff ff 89 85 54 ff ff ff 31 b5 54 ff ff ff 8b 85 58 ff ff ff 33 85 54 ff ff ff 89 85 5c ff ff ff 31 bd 5c ff ff ff 8b 85 54 ff ff ff 23 85 5c ff ff ff 89 85 58 ff ff ff ff c6 81 fe ff ff 00 00 7e b4 ff c7 81 ff ff 0f 00 00 7e 9a e8 ?? ?? 00 00 6a 00 ba ?? ?? ?? ?? e8 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}