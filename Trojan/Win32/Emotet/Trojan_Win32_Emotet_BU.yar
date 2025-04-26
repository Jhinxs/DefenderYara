
rule Trojan_Win32_Emotet_BU{
	meta:
		description = "Trojan:Win32/Emotet.BU,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {6c 65 68 41 68 2e 70 64 62 } //1 lehAh.pdb
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Emotet_BU_2{
	meta:
		description = "Trojan:Win32/Emotet.BU,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_01_0 = {40 64 4d 6c 45 7c 76 4b 70 71 2e 70 64 62 } //1 @dMlE|vKpq.pdb
		$a_01_1 = {72 53 56 7a 2f 66 39 3d 47 49 30 2e 70 64 62 } //1 rSVz/f9=GI0.pdb
		$a_01_2 = {6b 65 79 62 64 5f 65 76 65 6e 74 } //3 keybd_event
		$a_03_3 = {8b 45 e4 89 c1 83 e1 07 83 f8 08 0f 42 c8 8b 55 f0 39 d1 0f 97 c3 83 f9 08 0f 97 c7 08 fb f6 c3 01 89 45 e0 89 4d dc 75 ?? 8b 45 ec 8b 4d e0 8a 14 08 8b 75 dc 2a 14 35 9e 32 40 00 8b 7d e8 88 14 0f 83 c1 01 8b 5d f0 39 d9 89 4d e4 72 b1 } //2
		$a_03_4 = {29 fa 89 45 ?? 89 c8 31 ff 89 55 ?? 89 fa 8b 7d ?? f7 f7 89 cb 21 f3 8b 75 ?? 01 ce 8b 7d ?? 83 ff 02 0f 47 da 8a 14 1d ?? ?? ?? ?? 8b 5d ?? 8a 34 0b 28 d6 8b 7d ?? 88 34 0f 83 c1 33 8b 7d ?? 39 f9 89 75 ?? 89 4d ?? 72 a0 e9 56 ff ff ff } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*3+(#a_03_3  & 1)*2+(#a_03_4  & 1)*2) >=6
 
}