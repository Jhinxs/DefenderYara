
rule Trojan_BAT_Tnega_ABFR_MTB{
	meta:
		description = "Trojan:BAT/Tnega.ABFR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {02 07 8f 06 ?? ?? 01 25 47 06 07 06 8e 69 5d 91 07 1f 63 58 06 8e 69 58 1f 1f 5f 63 d2 61 d2 52 07 17 58 0b 07 02 8e 69 32 d6 } //2
		$a_01_1 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
		$a_01_2 = {47 65 74 42 79 74 65 73 } //1 GetBytes
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}