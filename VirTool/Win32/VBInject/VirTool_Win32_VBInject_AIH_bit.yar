
rule VirTool_Win32_VBInject_AIH_bit{
	meta:
		description = "VirTool:Win32/VBInject.AIH!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {bb 54 8b ec 83 [0-20] 43 [0-30] 39 18 75 [0-30] 81 78 04 ec 0c 56 8d } //1
		$a_03_1 = {31 1c 08 c3 90 09 05 00 bb } //1
		$a_01_2 = {80 4c 24 04 65 80 4c 24 02 72 80 4c 24 07 32 80 4c 24 03 6e 80 4c 24 05 6c 80 4c 24 06 33 80 4c 24 01 65 80 0c 24 6b } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}