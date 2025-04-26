
rule Trojan_Win64_Midie_SIB_MTB{
	meta:
		description = "Trojan:Win64/Midie.SIB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,2a 00 1f 00 06 00 00 "
		
	strings :
		$a_00_0 = {58 56 49 33 32 5f 4c 6f 61 64 } //10 XVI32_Load
		$a_00_1 = {44 6c 6c 49 6e 73 74 61 6c 6c } //10 DllInstall
		$a_00_2 = {58 56 49 33 32 5f 43 6c 6f 73 65 } //10 XVI32_Close
		$a_00_3 = {58 56 49 33 32 5f 69 6e 69 74 } //10 XVI32_init
		$a_03_4 = {4c 3b 7c 24 60 7d ?? 4c 8b 7c 24 50 48 8b 6c 24 58 55 48 8b 44 24 ?? 5d 48 01 c5 48 0f be 45 00 49 31 c7 49 81 e7 ff 00 00 00 48 8b 2d 9b 84 05 00 49 c1 e7 ?? 4d 8b 3c 2f 4c 8b 74 24 50 49 c1 fe ?? 49 81 e6 ff ff ff 00 4d 31 f7 4c 89 7c 24 50 4c 8b 7c 24 ?? 49 ff c7 4c 89 7c 24 90 1b 04 eb } //1
		$a_03_5 = {48 c7 c0 08 00 00 00 48 3b 44 24 ?? 7c ?? 4c 8b 7c 24 ?? 49 83 e7 01 4d 21 ff 74 ?? 4c 63 7c 24 ?? 4c 8b 74 24 90 1b 02 49 d1 ?? 49 81 e6 ff ff ff 7f 4d 31 f7 4c 89 7c 24 90 1b 02 eb ?? 4c 8b 7c 24 90 1b 02 49 d1 ?? 49 81 e7 ff ff ff 7f 4c 89 7c 24 90 1b 02 48 ff 44 24 90 1b 00 71 ?? ff 74 24 90 1b 02 4c 8b 7c 24 ?? 48 8b 2d ?? ?? ?? ?? 49 c1 e7 ?? 58 49 89 04 2f 48 ff 44 24 } //1
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=31
 
}