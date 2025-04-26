
rule Trojan_Win32_TrickBotCrypt_ES_MTB{
	meta:
		description = "Trojan:Win32/TrickBotCrypt.ES!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {8b 55 e4 0f b6 02 0f b6 4d eb 33 c1 8b 55 e4 2b 55 08 0f b6 ca 81 e1 e0 00 00 00 33 c1 8b 55 e4 88 02 8b 45 e4 03 45 f4 89 45 e4 eb } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_Win32_TrickBotCrypt_ES_MTB_2{
	meta:
		description = "Trojan:Win32/TrickBotCrypt.ES!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {03 f0 8b 45 ?? 03 de 0f af d9 03 5d f0 89 55 ?? 8a 0c 3a 02 0d ?? ?? ?? ?? 03 c3 30 08 ff 45 f0 8b 45 f0 3b 45 ?? 0f 82 } //1
		$a_81_1 = {5a 4c 75 77 73 73 21 24 35 47 51 38 79 38 66 45 2b 47 3f 74 53 52 5a 4b 36 39 59 4c 5e 64 4a 39 53 74 54 57 53 47 29 56 39 6f 78 4d 31 64 56 46 43 6f 58 6b 76 3c 69 28 40 61 67 79 2b 67 37 30 49 55 6c 74 5f 48 5e 7a 62 75 69 40 43 6c 2b 40 5e 66 43 23 72 6b 28 3c 41 53 77 26 5f 6c 56 57 72 6a 23 39 79 68 29 57 61 68 39 23 6d 4c 24 42 30 67 31 5f 73 4c } //1 ZLuwss!$5GQ8y8fE+G?tSRZK69YL^dJ9StTWSG)V9oxM1dVFCoXkv<i(@agy+g70IUlt_H^zbui@Cl+@^fC#rk(<ASw&_lVWrj#9yh)Wah9#mL$B0g1_sL
	condition:
		((#a_03_0  & 1)*1+(#a_81_1  & 1)*1) >=1
 
}