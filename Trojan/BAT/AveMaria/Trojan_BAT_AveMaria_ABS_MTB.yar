
rule Trojan_BAT_AveMaria_ABS_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.ABS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {04 06 91 20 ?? ?? ?? 00 59 d2 9c 00 06 17 58 0a 06 7e 03 ?? ?? 04 8e 69 fe 04 0b 07 2d d7 7e 03 ?? ?? 04 0c 2b 00 08 2a 90 0a 32 00 7e 03 ?? ?? 04 06 7e 03 } //1
		$a_01_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_01_2 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
		$a_01_3 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 44 00 61 00 74 00 61 00 } //1 DownloadData
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule Trojan_BAT_AveMaria_ABS_MTB_2{
	meta:
		description = "Trojan:BAT/AveMaria.ABS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 "
		
	strings :
		$a_03_0 = {2d 17 26 7e 57 ?? ?? 04 fe 06 ?? ?? ?? 06 73 4f ?? ?? 0a 25 80 58 ?? ?? 04 28 04 ?? ?? 2b 28 05 ?? ?? 2b 02 fe 06 ?? ?? ?? 06 73 52 ?? ?? 0a 28 06 ?? ?? 2b 28 07 ?? ?? 2b 0a 20 87 ?? ?? 4e 2b 8d 07 20 86 ?? ?? 2d 5a 20 82 ?? ?? 70 61 38 7b ?? ?? ff 90 0a 64 00 02 7b 52 ?? ?? 04 6f 4e ?? ?? 0a 7e 58 ?? 00 04 25 } //2
		$a_03_1 = {11 04 20 05 ?? ?? 53 5a 20 cf ?? ?? 12 61 2b c6 90 0a 18 00 28 9c ?? ?? 06 0a 16 0b } //2
		$a_01_2 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_4 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //1 TransformFinalBlock
		$a_01_5 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=8
 
}