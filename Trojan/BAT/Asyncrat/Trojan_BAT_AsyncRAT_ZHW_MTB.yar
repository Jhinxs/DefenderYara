
rule Trojan_BAT_AsyncRAT_ZHW_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.ZHW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_03_0 = {0b 06 07 6f ?? 00 00 0a 06 18 6f ?? 00 00 0a 06 18 6f ?? 00 00 0a 02 28 ?? 00 00 0a 0c 06 6f ?? 00 00 0a 0d 09 08 16 08 8e 69 6f ?? 00 00 0a 13 04 } //10
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=12
 
}