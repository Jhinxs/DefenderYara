
rule VirTool_Win32_VBInject_BAH_bit{
	meta:
		description = "VirTool:Win32/VBInject.BAH!bit,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {b8 36 5f 12 00 [0-20] 05 20 a1 2f 00 [0-20] 0f 85 1e ff ff ff 66 3d 3b dd [0-20] 83 e9 04 [0-20] 68 73 0d 34 00 [0-20] 58 [0-20] 05 da f2 1e 00 [0-20] 8b 09 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}