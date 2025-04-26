
rule Trojan_BAT_Tedy_NYE_MTB{
	meta:
		description = "Trojan:BAT/Tedy.NYE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_03_0 = {02 06 07 04 28 ?? 00 00 06 00 28 ?? 00 00 0a 07 6f ?? 00 00 0a 6f ?? 00 00 0a 0c 08 0d } //5
		$a_01_1 = {54 46 41 2e 44 61 74 61 2e 46 6f 72 6d 53 65 63 72 65 74 2e 72 65 73 6f 75 72 63 65 73 } //1 TFA.Data.FormSecret.resources
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}