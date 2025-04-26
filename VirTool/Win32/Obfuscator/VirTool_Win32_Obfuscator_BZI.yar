
rule VirTool_Win32_Obfuscator_BZI{
	meta:
		description = "VirTool:Win32/Obfuscator.BZI,SIGNATURE_TYPE_PEHSTR_EXT,64 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {b8 4d 5a 00 00 c6 05 ?? ?? ?? ?? ?? 66 39 45 00 75 ea 53 8b 5d 3c 03 dd 81 3b 50 45 00 00 74 05 } //1
		$a_03_1 = {d8 e2 80 f1 ?? 80 e9 ?? 88 88 ?? ?? ?? 10 d8 e1 40 d9 1d ?? ?? ?? 10 3d 00 2c 00 00 72 d6 } //2
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*2) >=3
 
}