
rule VirTool_Win32_Obfuscator_II{
	meta:
		description = "VirTool:Win32/Obfuscator.II,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {8a 5c 24 14 02 d2 02 d2 c0 fb 04 0a da 8b 54 24 24 88 1c 16 8a 54 24 14 8a d8 c0 e2 04 c0 fb 02 83 c6 01 0a da } //1
		$a_03_1 = {0f b6 14 39 0f b6 88 ?? ?? ?? ?? 03 ce 03 d1 8a 88 ?? ?? ?? ?? 81 e2 ff 00 00 00 8b f2 0f b6 96 ?? ?? ?? ?? 88 90 90 } //1
		$a_03_2 = {8d 64 24 00 8b 1d ?? ?? ?? ?? e8 15 ff ff ff 32 44 3e 10 83 c7 01 88 44 3b ff 8b 0d ?? ?? ?? ?? 83 c1 f0 3b f9 72 dd } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}