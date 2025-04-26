
rule VirTool_Win32_Obfuscator_AHV{
	meta:
		description = "VirTool:Win32/Obfuscator.AHV,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {eb 10 3c 23 75 08 80 7c 0a 01 00 74 01 46 42 8a 04 0a } //1
		$a_03_1 = {8b 47 08 80 38 4d 59 59 0f 85 ?? ?? ?? ?? 80 78 01 5a 0f 85 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}