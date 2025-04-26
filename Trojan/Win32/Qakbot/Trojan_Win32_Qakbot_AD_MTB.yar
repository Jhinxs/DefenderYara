
rule Trojan_Win32_Qakbot_AD_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 "
		
	strings :
		$a_00_0 = {0f b6 cb 6b d9 35 8b 4c 24 0c 2a 5c 24 10 8b 09 89 5c 24 18 81 c1 c4 5e 02 01 } //10
		$a_02_1 = {8b 5c 24 0c 83 44 24 0c 04 83 6c 24 14 01 89 0d ?? ?? ?? ?? 89 0b 8b 5c 24 18 0f b7 cf 89 4c 24 10 } //10
	condition:
		((#a_00_0  & 1)*10+(#a_02_1  & 1)*10) >=20
 
}
rule Trojan_Win32_Qakbot_AD_MTB_2{
	meta:
		description = "Trojan:Win32/Qakbot.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {2b d8 4b 6a 00 e8 [0-04] 03 d8 6a 00 e8 [0-04] 03 d8 6a 00 e8 [0-04] 03 d8 a1 [0-04] 33 18 89 1d [0-04] 6a 00 e8 [0-04] 03 05 [0-04] 8b 15 [0-04] 89 02 a1 [0-04] 83 c0 04 a3 [0-04] 33 c0 a3 [0-04] a1 [0-04] 83 c0 04 03 05 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}
rule Trojan_Win32_Qakbot_AD_MTB_3{
	meta:
		description = "Trojan:Win32/Qakbot.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 "
		
	strings :
		$a_81_0 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //3 DllRegisterServer
		$a_81_1 = {44 78 61 5a 69 } //3 DxaZi
		$a_81_2 = {45 41 70 76 66 70 76 4e 79 } //3 EApvfpvNy
		$a_81_3 = {45 51 70 76 62 65 44 52 } //3 EQpvbeDR
		$a_81_4 = {43 72 79 70 74 41 63 71 75 69 72 65 43 6f 6e 74 65 78 74 57 } //3 CryptAcquireContextW
		$a_81_5 = {43 72 79 70 74 52 65 6c 65 61 73 65 43 6f 6e 74 65 78 74 } //3 CryptReleaseContext
	condition:
		((#a_81_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3) >=18
 
}
rule Trojan_Win32_Qakbot_AD_MTB_4{
	meta:
		description = "Trojan:Win32/Qakbot.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 05 00 00 "
		
	strings :
		$a_03_0 = {8b c6 8d 0c 16 83 e0 ?? 8a 80 ?? ?? ?? ?? 32 04 0f 46 88 01 3b f3 72 ?? 5f 5e } //1
		$a_03_1 = {33 d2 8b c3 f7 75 ?? 8b 45 ?? 8a 04 02 32 04 0b 88 04 1f 43 83 ee 01 75 } //1
		$a_03_2 = {33 d2 8b c3 f7 f6 8b 45 ?? 8a 04 02 8b 55 ?? 32 04 13 8b 55 ?? 0f b6 c0 66 89 04 51 42 43 89 55 ?? 3b d7 72 } //1
		$a_03_3 = {8b c1 83 e0 ?? 8a 84 30 ?? 32 44 0e ?? 88 04 11 41 3b 0e 72 } //1
		$a_03_4 = {8b c7 83 e0 ?? 8a 44 05 ?? 32 04 37 88 44 3b ?? 47 3b 3b 72 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=2
 
}