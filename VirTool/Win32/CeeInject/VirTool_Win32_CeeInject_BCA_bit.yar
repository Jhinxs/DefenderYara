
rule VirTool_Win32_CeeInject_BCA_bit{
	meta:
		description = "VirTool:Win32/CeeInject.BCA!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {b0 73 b2 5c b1 65 } //1
		$a_01_1 = {c6 44 24 1e 74 88 4c 24 1f c6 44 24 20 6d c6 44 24 21 33 c6 44 24 22 32 88 54 24 23 88 44 24 24 c6 44 24 25 76 c6 44 24 26 63 c6 44 24 27 68 c6 44 24 28 6f 88 44 24 29 c6 44 24 2a 74 c6 44 24 2b 2e 88 4c 24 2c c6 44 24 2d 78 88 4c 24 2e } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}