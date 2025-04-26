
rule VirTool_Win32_Obfuscator_FY{
	meta:
		description = "VirTool:Win32/Obfuscator.FY,SIGNATURE_TYPE_PEHSTR_EXT,04 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {cd 2a 39 c8 74 fa } //1
		$a_01_1 = {b8 aa fc 0d 7c e8 } //1
		$a_03_2 = {6a 00 ff d0 01 85 ?? ?? ?? ?? 61 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=2
 
}