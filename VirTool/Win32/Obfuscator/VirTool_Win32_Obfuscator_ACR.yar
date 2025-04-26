
rule VirTool_Win32_Obfuscator_ACR{
	meta:
		description = "VirTool:Win32/Obfuscator.ACR,SIGNATURE_TYPE_PEHSTR_EXT,02 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 08 8b 3d [0-20] 81 c1 f0 d0 f7 ff [0-10] 89 08 83 c0 04 4a 75 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}