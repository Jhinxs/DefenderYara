
rule VirTool_Win32_CeeInject_TI_bit{
	meta:
		description = "VirTool:Win32/CeeInject.TI!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {ff d7 6a 00 ff 15 ?? ?? ?? ?? 69 0d 64 66 41 00 fd 43 03 00 8d 04 1e 6a 00 81 c1 c3 9e 26 00 89 0d 64 66 41 00 c1 e9 10 30 08 ff 15 ?? ?? ?? ?? 46 3b 75 fc 7c ca } //1
		$a_03_1 = {83 fe 05 75 09 c6 05 ?? ?? ?? ?? 41 eb 4c 83 fe 06 75 09 c6 05 ?? ?? ?? ?? 6c eb 3e 83 fe 07 75 09 c6 05 ?? ?? ?? ?? 6c eb 30 83 fe 08 75 09 c6 05 ?? ?? ?? ?? 6f eb 22 83 fe 09 75 09 c6 05 ?? ?? ?? ?? 63 } //1
		$a_01_2 = {8a 04 0e 8d 49 01 88 41 ff 42 8b 45 fc 3b d0 72 ef } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}