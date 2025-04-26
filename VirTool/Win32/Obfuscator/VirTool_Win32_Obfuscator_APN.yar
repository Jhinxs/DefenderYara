
rule VirTool_Win32_Obfuscator_APN{
	meta:
		description = "VirTool:Win32/Obfuscator.APN,SIGNATURE_TYPE_PEHSTR_EXT,64 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {7e 09 b9 dd ff ff ff 2b cf d3 fe 88 03 8b 45 14 33 ff 43 48 89 45 14 75 b9 } //1
		$a_01_1 = {88 04 0a 8b cb 23 cf 8b d6 d3 ff 8b cb 8b c3 d3 fa 0b c6 2b d8 8b 45 0c 8b ca 8b d6 d3 ff 8a 4d 17 88 08 } //1
		$a_03_2 = {d3 fa 8b ca d3 f8 a3 ?? ?? ?? ?? e8 ?? ?? ?? ff e8 ?? ?? ?? ff e8 ?? ?? ?? ff e8 ?? ?? ?? ff e8 ?? ?? ?? ff e8 ?? ?? ?? 00 e8 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=2
 
}