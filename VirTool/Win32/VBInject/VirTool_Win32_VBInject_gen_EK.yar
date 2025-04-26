
rule VirTool_Win32_VBInject_gen_EK{
	meta:
		description = "VirTool:Win32/VBInject.gen!EK,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {f5 58 59 59 59 } //1
		$a_01_1 = {6c 3c fe 6c 30 fe aa 71 a0 fd } //2
		$a_01_2 = {6c 0c fe 6c 00 fe aa 71 6c fd } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2) >=3
 
}