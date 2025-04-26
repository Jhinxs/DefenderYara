
rule Trojan_BAT_Quasar_NQ_MTB{
	meta:
		description = "Trojan:BAT/Quasar.NQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {06 07 6f 65 00 00 0a 17 73 ?? 00 00 0a 0c 08 02 16 02 8e 69 6f ?? 00 00 0a 08 6f ?? 00 00 0a 06 28 ?? 00 00 06 0d 28 ?? 00 00 06 09 } //5
		$a_01_1 = {62 72 61 76 65 2e 67 2e 72 65 73 6f 75 72 63 65 73 } //1 brave.g.resources
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}
rule Trojan_BAT_Quasar_NQ_MTB_2{
	meta:
		description = "Trojan:BAT/Quasar.NQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {17 8d 01 00 00 01 25 16 d0 ?? 00 00 01 28 ?? 00 00 0a 72 ?? 00 00 70 28 ?? 00 00 0a 28 ?? 00 00 06 75 ?? 00 00 01 14 6f ?? 00 00 0a 75 ?? 00 00 1b } //5
		$a_01_1 = {57 69 6e 64 6f 77 73 46 6f 72 6d 73 41 70 70 39 35 2e 50 72 6f 70 65 72 74 69 65 73 } //1 WindowsFormsApp95.Properties
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}
rule Trojan_BAT_Quasar_NQ_MTB_3{
	meta:
		description = "Trojan:BAT/Quasar.NQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_03_0 = {1a 8d 39 00 00 01 0b 06 07 16 1a 6f ?? 00 00 0a 26 07 16 28 ?? 00 00 0a 0c 06 16 73 ?? 00 00 0a 0d 08 8d ?? 00 00 01 13 04 09 11 04 16 08 6f ?? 00 00 0a 26 } //5
		$a_01_1 = {53 45 45 44 43 52 41 43 4b 45 52 2e 67 2e 72 65 73 6f 75 72 63 65 73 } //1 SEEDCRACKER.g.resources
		$a_01_2 = {5a 69 75 78 76 77 6c 64 6e 6e 67 69 67 67 } //1 Ziuxvwldnngigg
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}
rule Trojan_BAT_Quasar_NQ_MTB_4{
	meta:
		description = "Trojan:BAT/Quasar.NQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_03_0 = {6f 2b 00 00 0a 72 ?? ?? ?? 70 6f ?? ?? ?? 0a 7e ?? ?? ?? 04 6f ?? ?? ?? 0a 72 ?? ?? ?? 70 6f ?? ?? ?? 0a 7e ?? ?? ?? 04 6f ?? ?? ?? 0a 72 ?? ?? ?? 70 6f ?? ?? ?? 0a 7e ?? ?? ?? 04 6f ?? ?? ?? 0a } //5
		$a_01_1 = {50 6f 77 65 72 73 68 65 6c 6c 45 78 65 63 75 74 6f 72 58 6f 72 45 6e 63 6f 64 65 64 } //1 PowershellExecutorXorEncoded
		$a_01_2 = {43 6c 69 65 6e 74 5f 62 75 69 6c 74 5f 68 76 6e 63 } //1 Client_built_hvnc
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}
rule Trojan_BAT_Quasar_NQ_MTB_5{
	meta:
		description = "Trojan:BAT/Quasar.NQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_03_0 = {8d 29 00 00 01 25 d0 ?? 00 00 04 28 ?? 00 00 0a 0a 1f 10 8d ?? 00 00 01 25 d0 ?? 00 00 04 28 ?? 00 00 0a 0b 02 28 ?? 00 00 06 06 07 28 ?? 00 00 06 } //5
		$a_01_1 = {47 65 74 45 78 65 63 75 74 61 62 6c 65 42 79 74 65 73 57 69 74 68 45 6e 63 72 79 70 74 } //1 GetExecutableBytesWithEncrypt
		$a_01_2 = {53 74 61 72 74 50 72 6f 63 65 73 73 57 69 74 68 45 6e 63 72 74 70 74 } //1 StartProcessWithEncrtpt
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}