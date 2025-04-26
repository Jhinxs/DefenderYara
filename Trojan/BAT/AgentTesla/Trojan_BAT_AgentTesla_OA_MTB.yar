
rule Trojan_BAT_AgentTesla_OA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.OA!MTB,SIGNATURE_TYPE_PEHSTR,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {50 61 72 61 6d 70 61 61 } //1 Parampaa
		$a_01_1 = {47 65 74 50 72 6f 70 65 72 74 79 00 58 58 58 } //1
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_3 = {41 72 72 61 79 00 43 6f 70 79 } //1 牁慲y潃祰
		$a_01_4 = {47 00 4f 00 44 00 6f 00 66 00 42 00 65 00 61 00 75 00 74 00 79 00 } //1 GODofBeauty
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}