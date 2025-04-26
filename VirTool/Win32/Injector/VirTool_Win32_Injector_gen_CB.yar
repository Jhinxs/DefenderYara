
rule VirTool_Win32_Injector_gen_CB{
	meta:
		description = "VirTool:Win32/Injector.gen!CB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {6a 40 68 00 30 00 00 ff 77 50 ff 77 34 ff b5 ?? ?? ff ff ff d0 } //1
		$a_03_1 = {6a 04 68 00 10 00 00 6a 04 53 ff d0 8b f8 89 bd ?? ff ff ff c7 07 07 00 01 00 33 c0 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}