
rule Trojan_BAT_CeeInject_AE_bit{
	meta:
		description = "Trojan:BAT/CeeInject.AE!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {17 da 11 04 da 03 11 04 91 ?? 61 ?? 11 04 ?? 8e b7 5d 91 61 9c 11 04 17 d6 } //1
		$a_01_1 = {4c 64 61 72 67 5f 30 00 4c 64 61 72 67 5f 31 00 4c 64 61 72 67 5f 32 00 4c 64 61 72 67 5f 33 00 4c 64 63 5f 49 34 5f 31 00 } //1
		$a_03_2 = {52 65 74 00 43 61 6c 6c 00 43 61 6c 6c 76 69 72 74 [0-10] 2e 50 6e 67 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}