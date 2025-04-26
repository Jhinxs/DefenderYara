
rule VirTool_Win32_CeeInject_TN_bit{
	meta:
		description = "VirTool:Win32/CeeInject.TN!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {8b 45 08 8a 4d 13 8a 10 32 d1 02 d1 88 10 40 89 45 08 } //1
		$a_01_1 = {03 cf 8b f8 8b d1 c1 e9 02 f3 a5 8b ca 83 e1 03 f3 a4 } //1
		$a_01_2 = {8a c1 3c 61 7c 06 3c 7a 7f 02 24 df c3 } //1
		$a_01_3 = {8b 07 8b c8 8b d0 c1 e9 1d c1 ea 1e 8b f0 83 e1 01 83 e2 01 c1 ee 1f } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule VirTool_Win32_CeeInject_TN_bit_2{
	meta:
		description = "VirTool:Win32/CeeInject.TN!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {73 68 75 74 64 6f 77 6e 20 2d 73 20 2d 74 } //1 shutdown -s -t
		$a_03_1 = {8d 48 fb 30 4c 05 ?? 40 83 f8 0c } //1
		$a_03_2 = {8d 34 08 8d 50 fb 40 30 16 83 f8 ?? 72 f2 } //1
		$a_00_3 = {0f be d3 8d 76 01 c1 c8 0d 80 fb 61 8a 1e 8d 4a e0 0f 4c ca 03 c1 84 db 75 e6 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}
rule VirTool_Win32_CeeInject_TN_bit_3{
	meta:
		description = "VirTool:Win32/CeeInject.TN!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8a 14 01 8b 75 ?? 88 14 06 8b 7d ?? 81 f7 ?? ?? ?? ?? 89 7d ?? 83 c0 01 8b 7d ?? 39 f8 89 45 90 09 06 00 8b 45 ?? 8b 4d } //1
		$a_03_1 = {89 c8 31 d2 8b 74 24 ?? f7 f6 8b 7c 24 ?? 8a 1c 0f 2a 1c 15 ?? ?? ?? ?? 8b 54 24 ?? 88 1c 0a } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule VirTool_Win32_CeeInject_TN_bit_4{
	meta:
		description = "VirTool:Win32/CeeInject.TN!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {8b 07 89 45 ?? 33 45 ?? 43 33 45 ?? 8a cb d3 c8 8b 4d ?? 83 c7 04 89 4d ?? 89 06 83 c6 04 4a 75 } //1
		$a_01_1 = {8a 14 07 32 55 0c 88 10 40 49 75 f4 } //1
		$a_03_2 = {8a 0f 0f b6 e8 0f b6 c9 33 e9 83 e5 0f c1 e8 04 33 04 ad ?? ?? ?? ?? c1 e9 04 8b e8 83 e5 0f 4a 33 cd c1 e8 04 47 33 04 8d } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}
rule VirTool_Win32_CeeInject_TN_bit_5{
	meta:
		description = "VirTool:Win32/CeeInject.TN!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {89 c8 31 d2 8b 74 24 ?? f7 f6 8b 7c 24 ?? 8a 1c 15 ?? ?? ?? ?? 89 7c 24 ?? 8b 54 24 ?? 8a 3c 0a 28 df 8b 7c 24 ?? 88 3c 0f } //1
		$a_03_1 = {89 c1 83 e1 07 8a 14 05 ?? ?? ?? ?? 2a 14 0d ?? ?? ?? ?? 88 54 04 ?? 83 c0 01 89 44 24 ?? 83 f8 0e 0f 84 } //1
		$a_03_2 = {31 c0 8b 4c 24 ?? 8b 51 3c 01 d1 8b 74 24 ?? 8b 14 16 81 fa 50 45 00 00 0f 44 c1 89 c1 83 c1 06 66 83 78 06 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}