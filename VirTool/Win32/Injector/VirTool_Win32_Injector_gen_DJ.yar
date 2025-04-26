
rule VirTool_Win32_Injector_gen_DJ{
	meta:
		description = "VirTool:Win32/Injector.gen!DJ,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {8d 6c 24 48 0f bf 45 06 39 c3 0f } //1
		$a_03_1 = {6b db 28 89 9c 24 ?? ?? ?? ?? 8b 9c 24 ?? ?? ?? ?? 03 9c 24 } //1
		$a_01_2 = {40 93 d6 40 00 00 00 00 00 54 d1 40 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}