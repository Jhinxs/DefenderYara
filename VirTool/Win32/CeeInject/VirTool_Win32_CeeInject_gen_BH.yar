
rule VirTool_Win32_CeeInject_gen_BH{
	meta:
		description = "VirTool:Win32/CeeInject.gen!BH,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_03_0 = {68 58 4d 56 90 09 03 00 c7 45 } //1
		$a_01_1 = {00 64 62 67 68 65 6c 70 2e 64 6c 6c 00 53 62 69 65 44 6c 6c 2e 64 6c 6c 00 } //1
		$a_03_2 = {6a 40 68 00 30 00 00 8b 45 ?? ff 70 50 8b 45 90 1b 00 ff 70 34 ff 75 ?? ff 15 } //2
		$a_03_3 = {0f b7 40 06 39 85 ?? ?? ?? ?? 7d 58 90 05 20 02 90 90 8b 45 ?? 8b 40 3c 8b 8d 90 1b 00 6b c9 28 } //1
		$a_03_4 = {33 d2 f7 75 ?? 8b 45 ?? 0f b6 04 10 03 c8 81 e1 ff 00 00 80 79 08 49 81 c9 00 ff ff ff 41 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*2+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=4
 
}