
rule Trojan_BAT_NanoBot_BAY_MTB{
	meta:
		description = "Trojan:BAT/NanoBot.BAY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {26 11 0a 73 ?? 00 00 0a 73 ?? 00 00 0a 08 28 ?? 00 00 0a 08 6f ?? 00 00 0a 6f ?? 00 00 0a 16 73 ?? 00 00 0a 16 73 ?? 00 00 0a 13 0e 20 00 10 00 00 8d ?? 00 00 01 13 0b 1f 0d 13 0f 38 } //3
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_2 = {47 65 74 42 79 74 65 73 } //1 GetBytes
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=5
 
}