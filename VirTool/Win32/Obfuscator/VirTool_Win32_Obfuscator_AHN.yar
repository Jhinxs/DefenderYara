
rule VirTool_Win32_Obfuscator_AHN{
	meta:
		description = "VirTool:Win32/Obfuscator.AHN,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {83 38 ff 74 13 8b 30 83 c0 04 8b 38 83 c0 04 8b 08 83 c0 04 f3 a4 eb e8 68 ?? ?? ?? ?? c3 90 09 10 00 e8 00 00 00 00 58 2d ?? ?? ?? ?? 05 } //1
		$a_03_1 = {66 33 c0 66 81 38 4d 5a 74 07 2d 00 00 01 00 eb f2 89 85 ?? ?? ?? ?? 8b 85 ?? ?? ?? ?? 66 8b 48 3c 66 89 8d } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}