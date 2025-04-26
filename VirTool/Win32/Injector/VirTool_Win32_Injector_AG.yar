
rule VirTool_Win32_Injector_AG{
	meta:
		description = "VirTool:Win32/Injector.AG,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {73 65 63 74 69 6f 6e 30 30 30 30 } //1 section0000
		$a_00_1 = {f8 04 72 0d 8b 4d 08 51 ff 95 04 ff ff ff 83 c4 04 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}