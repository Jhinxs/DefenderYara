
rule VirTool_Win32_VBInject_gen_DQ{
	meta:
		description = "VirTool:Win32/VBInject.gen!DQ,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 04 00 00 "
		
	strings :
		$a_01_0 = {e7 f5 4d 5a 00 00 c7 c3 1c } //3
		$a_03_1 = {fb 12 fc 0d 6b ?? ?? e7 6b ?? ?? e7 08 08 00 06 ?? 00 a7 02 00 fd 80 } //1
		$a_03_2 = {fb 12 fc 0d 04 ?? ?? fc 22 80 ?? ?? fc a0 } //1
		$a_03_3 = {f5 03 00 00 00 6c ?? ?? 52 fe c1 ?? ?? 40 00 00 00 90 09 08 00 fe c1 ?? ?? 00 30 00 00 } //3
	condition:
		((#a_01_0  & 1)*3+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*3) >=7
 
}