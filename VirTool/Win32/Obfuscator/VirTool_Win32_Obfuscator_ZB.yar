
rule VirTool_Win32_Obfuscator_ZB{
	meta:
		description = "VirTool:Win32/Obfuscator.ZB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 03 00 00 "
		
	strings :
		$a_01_0 = {0f be 5d 00 33 5c 24 28 53 8b 6c 24 3c 58 88 45 00 c7 05 } //5
		$a_03_1 = {0e 00 00 01 8a 06 c7 05 ?? ?? ?? ?? 0f 00 00 01 8a 1f c7 05 ?? ?? ?? ?? 10 00 00 01 30 d8 c7 05 ?? ?? ?? ?? 11 00 00 01 88 06 c7 05 ?? ?? ?? ?? 12 00 00 01 } //1
		$a_01_2 = {c7 44 24 68 58 59 59 59 c7 05 } //1
	condition:
		((#a_01_0  & 1)*5+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}