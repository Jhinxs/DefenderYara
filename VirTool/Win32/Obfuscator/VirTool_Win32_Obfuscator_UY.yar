
rule VirTool_Win32_Obfuscator_UY{
	meta:
		description = "VirTool:Win32/Obfuscator.UY,SIGNATURE_TYPE_PEHSTR_EXT,64 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {6a 10 6a 00 68 57 04 00 00 90 18 89 (8d ?? ?? ff ff ??|?? 90 18) ff d3 81 90 03 04 06 7d ?? bd ?? ?? ff ff 31 31 31 31 (|) 0f 84 74 } //1
		$a_03_1 = {c7 00 02 00 02 00 90 18 6a 00 50 52 89 4d f4 ff d6 81 bd ?? ?? ff ff 01 00 34 00 (|e9 90 16) (|)74 0f 84 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}