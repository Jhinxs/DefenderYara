
rule VirTool_Win32_VBInject_AJD_bit{
	meta:
		description = "VirTool:Win32/VBInject.AJD!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {81 fa 41 41 41 41 90 0a 30 00 5a 90 0a 30 00 31 34 24 } //1
		$a_03_1 = {05 cc 10 00 00 [0-30] 8b 00 [0-30] 6a 47 [0-30] 83 2c 24 07 [0-30] 68 02 10 00 00 [0-30] 83 2c 24 02 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}