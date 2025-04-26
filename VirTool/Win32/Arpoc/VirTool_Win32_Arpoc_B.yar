
rule VirTool_Win32_Arpoc_B{
	meta:
		description = "VirTool:Win32/Arpoc.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {2e 00 5c 00 5c 00 78 00 5c 00 2e 00 2e 00 5c 00 2e 00 2e 00 5c 00 78 00 78 00 78 00 78 00 78 00 78 00 78 00 78 00 } //1 .\\x\..\..\xxxxxxxx
		$a_01_1 = {57 41 48 41 48 41 48 20 25 64 20 25 30 38 78 } //1 WAHAHAH %d %08x
		$a_00_2 = {6e 63 61 63 6e 5f 6e 70 } //1 ncacn_np
		$a_00_3 = {68 80 b1 40 00 68 8c b5 40 00 8b 45 dc 50 e8 5e 06 00 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}