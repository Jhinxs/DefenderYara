
rule Trojan_Win32_Redline_MI_MTB{
	meta:
		description = "Trojan:Win32/Redline.MI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c2 d3 e8 03 45 cc 89 45 f0 33 45 dc 31 45 fc 8b 45 fc 29 45 f8 81 c3 ?? ?? ?? ?? 89 5d ec 4f 0f 85 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Redline_MI_MTB_2{
	meta:
		description = "Trojan:Win32/Redline.MI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_03_0 = {89 c8 f7 e7 89 c8 29 d0 d1 e8 01 c2 89 c8 c1 ea 06 6b d2 5b 29 d0 89 c2 89 f0 c1 ea 02 f6 a2 ?? ?? ?? ?? 30 81 ?? ?? ?? ?? 83 c1 01 81 f9 7e 07 00 00 75 } //10
		$a_01_1 = {61 6b 71 68 66 72 77 79 69 75 65 78 72 73 66 67 65 70 6d 6a } //1 akqhfrwyiuexrsfgepmj
		$a_01_2 = {51 75 65 72 79 50 65 72 66 6f 72 6d 61 6e 63 65 43 6f 75 6e 74 65 72 } //1 QueryPerformanceCounter
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=12
 
}
rule Trojan_Win32_Redline_MI_MTB_3{
	meta:
		description = "Trojan:Win32/Redline.MI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_01_0 = {01 6c 24 10 89 5c 24 18 8b 44 24 14 01 44 24 18 8b 44 24 24 90 01 44 24 18 8b 44 24 18 89 44 24 20 8b f7 } //5
		$a_03_1 = {c1 ee 05 03 74 24 34 8b 44 24 20 31 44 24 10 81 3d f4 ?? ?? ?? ?? 01 00 00 75 [0-15] 8b 4c 24 10 33 ce 8d 44 24 28 89 4c 24 10 e8 ?? ?? ?? ?? 8b 44 24 30 29 44 24 14 83 6c 24 2c 01 8b 54 24 28 0f 85 } //5
	condition:
		((#a_01_0  & 1)*5+(#a_03_1  & 1)*5) >=10
 
}