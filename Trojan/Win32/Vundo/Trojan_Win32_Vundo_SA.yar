
rule Trojan_Win32_Vundo_SA{
	meta:
		description = "Trojan:Win32/Vundo.SA,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 08 00 00 "
		
	strings :
		$a_03_0 = {e8 00 00 00 00 58 83 e8 05 50 e8 ?? ?? 00 00 8b 54 24 04 0f b6 0a } //1
		$a_03_1 = {68 2d 2e 10 9b e8 ?? ff ff ff 85 c0 59 89 45 f4 74 12 68 ff 1f 7c c9 e8 ?? ff ff ff } //1
		$a_03_2 = {68 4a 0d ce 09 e8 ?? ff ff ff 85 c0 59 74 0f 6a 04 68 00 30 00 00 ff 74 37 50 6a 00 ff d0 } //1
		$a_01_3 = {74 13 8b 7d 0c 2b fe 89 4d 08 8a 0b 88 0c 1f 43 ff 4d 08 75 f5 83 65 08 00 66 83 7a 06 00 76 31 } //1
		$a_01_4 = {ff 55 f4 85 c0 89 45 fc 74 3c 8b 7c 33 10 03 fe eb 1d 79 07 25 ff ff 00 00 eb 04 8d 44 30 02 50 ff 75 fc ff 55 f8 } //1
		$a_03_5 = {8d 45 f4 50 ff 77 1c e8 ?? ff ff ff 59 50 8b 47 04 ff 37 03 c3 50 ff 55 f8 0f b7 46 06 ff 45 fc 83 c7 28 39 45 fc 72 d8 } //1
		$a_03_6 = {8b 7c 30 28 85 ff 59 59 74 27 68 dd f5 53 cd e8 ?? ?? ff ff 85 c0 59 74 18 } //1
		$a_03_7 = {53 8b 5c 24 08 57 8d bb ?? ?? 00 00 66 81 3f 4d 5a 75 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1) >=2
 
}