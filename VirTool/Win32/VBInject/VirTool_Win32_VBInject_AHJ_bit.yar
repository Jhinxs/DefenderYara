
rule VirTool_Win32_VBInject_AHJ_bit{
	meta:
		description = "VirTool:Win32/VBInject.AHJ!bit,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {b8 f0 5c 03 00 [0-20] 05 66 a3 3e 00 [0-20] 39 41 04 [0-20] 68 40 42 0f 00 [0-20] 58 [0-20] 05 0d be 43 00 [0-20] 39 01 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}