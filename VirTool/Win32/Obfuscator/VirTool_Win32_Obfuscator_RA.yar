
rule VirTool_Win32_Obfuscator_RA{
	meta:
		description = "VirTool:Win32/Obfuscator.RA,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {33 d2 be 20 00 00 00 f7 f6 90 0a 3a 00 8b ?? ?? ?? ff ff 83 ?? 01 89 ?? ?? ?? ff ff 81 bd ?? ?? ?? ?? ?? ?? 00 00 73 ?? 8b } //1
		$a_03_1 = {6a 40 68 00 30 00 00 68 ?? ?? 00 00 6a 00 ff 15 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}