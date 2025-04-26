
rule VirTool_Win32_BruterShell_A{
	meta:
		description = "VirTool:Win32/BruterShell.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {80 78 05 e8 75 ?? 80 78 06 03 75 ?? 80 78 0d 8b 75 ?? 80 78 0e d4 75 ?? 0f b6 50 02 } //1
		$a_01_1 = {c7 44 24 04 89 4d 39 8c 89 44 24 08 e8 } //1
		$a_03_2 = {89 14 24 c7 44 24 ?? 50 4f 53 54 c6 44 24 ?? 00 c7 44 24 ?? 7b 22 61 72 c7 44 24 ?? 63 68 22 3a } //1
		$a_03_3 = {c7 44 24 04 aa fc 0d 7c [0-80] c7 44 24 04 bd ca 3b d3 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}
rule VirTool_Win32_BruterShell_A_2{
	meta:
		description = "VirTool:Win32/BruterShell.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {c7 44 24 04 26 25 19 3e 89 44 24 08 c7 04 24 00 00 00 00 e8 } //1
		$a_03_1 = {80 78 05 e8 75 ?? 80 78 06 03 75 ?? 80 78 0d 8b 75 ?? 80 78 0e d4 75 ?? 0f b6 50 02 } //1
		$a_03_2 = {c7 44 24 04 bd ca 3b d3 89 44 24 08 8b 84 24 ?? 00 00 00 89 04 24 e8 } //1
		$a_01_3 = {89 44 24 08 c7 44 24 04 ff ff ff ff 89 3c 24 e8 } //1
		$a_01_4 = {c7 44 24 04 b8 0a 4c 53 89 44 24 08 e8 } //1
		$a_01_5 = {c7 44 24 04 89 4d 39 8c 89 44 24 08 e8 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}