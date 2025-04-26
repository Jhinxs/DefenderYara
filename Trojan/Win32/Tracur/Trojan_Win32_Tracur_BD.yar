
rule Trojan_Win32_Tracur_BD{
	meta:
		description = "Trojan:Win32/Tracur.BD,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {c6 47 0e 01 89 77 10 c7 47 14 ff ff ff ff 8b 47 10 48 74 05 48 74 0b eb 10 c7 47 14 b0 04 00 00 eb 07 c7 47 14 3c 00 00 00 8b c7 e8 } //2
		$a_01_1 = {bb 01 00 00 00 3b fb 7c 53 8b c3 b9 05 00 00 00 99 f7 f9 85 d2 75 21 b8 0c 00 00 00 e8 } //2
		$a_01_2 = {80 bd c0 df ff ff 00 74 0c 83 bd bc df ff ff 01 75 03 ff 45 f8 43 81 fb ff 00 00 00 75 d2 69 45 f8 20 20 00 00 83 c0 04 e8 } //2
		$a_01_3 = {4c 61 6b 65 5c 4c 61 6b 65 43 6f 6e 74 72 6f 6c 5c 33 2e 30 5c 46 69 6c 74 65 72 73 } //1 Lake\LakeControl\3.0\Filters
		$a_01_4 = {0d 00 ff ff ff 40 8a 84 85 e8 fb ff ff 8b 55 ec 30 04 3a 47 ff 4d e8 75 88 8b 45 fc } //1
		$a_03_5 = {6f 3a 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 62 3a 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 61 3a 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 63 3a 00 00 ?? ?? ?? ?? ?? ?? ?? ?? 76 3a 00 00 } //2
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*2) >=6
 
}