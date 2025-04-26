
rule VirTool_Win32_VBInject_AJR_bit{
	meta:
		description = "VirTool:Win32/VBInject.AJR!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {bb d4 94 7d 00 [0-30] 81 c3 79 c5 12 00 [0-30] 48 [0-30] 39 18 } //1
		$a_03_1 = {81 fa 41 41 41 41 90 0a 30 00 5a 90 0a 30 00 31 34 24 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}