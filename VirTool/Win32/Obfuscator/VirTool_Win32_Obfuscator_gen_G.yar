
rule VirTool_Win32_Obfuscator_gen_G{
	meta:
		description = "VirTool:Win32/Obfuscator.gen!G,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {74 72 79 72 63 79 39 74 63 3b 6c 2c 6a 73 6d 2c 6b 62 78 63 2c 00 } //1 牴特祣琹㭣ⱬ獪Ɑ扫捸,
		$a_03_1 = {55 8b ec 83 ec 6e 54 ff 15 ?? 10 40 00 c9 e9 ?? ?? ff ff } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}