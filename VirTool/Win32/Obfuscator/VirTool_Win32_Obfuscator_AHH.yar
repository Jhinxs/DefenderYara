
rule VirTool_Win32_Obfuscator_AHH{
	meta:
		description = "VirTool:Win32/Obfuscator.AHH,SIGNATURE_TYPE_PEHSTR_EXT,64 00 05 00 03 00 00 "
		
	strings :
		$a_00_0 = {62 69 6e 61 72 79 2d 73 6d 65 6c 74 } //1 binary-smelt
		$a_02_1 = {8d 44 24 14 89 44 24 0c 8d 45 04 a3 80 94 40 00 a1 80 94 40 00 8b 40 04 68 ?? 94 40 00 68 ?? 94 40 00 a3 74 94 40 00 ff 15 ?? 80 40 00 85 c0 0f 84 0b 00 00 00 68 ?? 94 40 00 ff 15 ?? 80 40 00 } //2
		$a_00_2 = {a1 74 94 40 00 a3 28 94 40 00 a1 80 94 40 00 85 c0 0f 84 17 00 00 00 a1 80 94 40 00 8b 40 08 a3 78 94 40 00 a1 7c 94 40 00 a3 30 94 40 00 } //2
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*2+(#a_00_2  & 1)*2) >=5
 
}
rule VirTool_Win32_Obfuscator_AHH_2{
	meta:
		description = "VirTool:Win32/Obfuscator.AHH,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 04 00 00 "
		
	strings :
		$a_00_0 = {62 69 6e 61 72 79 2d 73 6d 65 6c 74 } //1 binary-smelt
		$a_00_1 = {4c 6f 66 74 57 69 72 64 74 68 69 72 64 } //1 LoftWirdthird
		$a_00_2 = {4d 61 69 6e 73 74 72 65 61 6d 2e 77 6f 72 6b 67 72 6f 75 70 } //1 Mainstream.workgroup
		$a_02_3 = {68 c2 01 00 00 be 58 96 40 00 56 ff 15 ?? 80 40 00 6a 65 58 66 89 44 24 08 68 84 94 40 00 ff 15 ?? 80 40 00 68 9c 94 40 00 6a 64 56 68 a4 94 40 00 68 ac 94 40 00 68 b4 94 40 00 ff 15 ?? 80 40 00 68 bc 94 40 00 ff 15 ?? 80 40 00 8d 44 24 14 89 44 24 0c 8d 45 04 a3 80 94 40 00 a1 80 94 40 00 8b 40 04 68 cc 94 40 00 68 d8 94 40 00 a3 74 94 40 00 ff 15 ?? 80 40 00 85 c0 0f 84 0b 00 00 00 68 e4 94 40 00 ff 15 ?? 80 40 00 } //2
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*2) >=5
 
}