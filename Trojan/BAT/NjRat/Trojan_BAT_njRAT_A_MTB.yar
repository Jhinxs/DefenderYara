
rule Trojan_BAT_njRAT_A_MTB{
	meta:
		description = "Trojan:BAT/njRAT.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {08 17 58 20 ff 00 00 00 5f 0c 09 11 07 08 91 58 20 ff 00 00 00 5f 0d 11 07 08 91 13 09 11 07 08 11 07 09 91 9c 11 07 09 11 09 9c 11 06 11 04 11 07 11 07 08 91 11 07 09 91 58 20 ff 00 00 00 5f 91 06 11 04 91 61 9c 11 04 17 58 13 04 11 04 11 0c 31 ad } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}
rule Trojan_BAT_njRAT_A_MTB_2{
	meta:
		description = "Trojan:BAT/njRAT.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {07 06 11 06 9a 6f ?? 00 00 0a 28 ?? 00 00 0a 0b 11 06 17 d6 13 06 11 06 11 05 31 } //2
		$a_03_1 = {00 00 0a 0c 08 14 72 ?? ?? ?? 70 17 8d ?? 00 00 01 25 16 07 28 ?? 00 00 0a 28 ?? 00 00 0a a2 14 14 14 28 ?? 00 00 0a 28 ?? 00 00 0a 0d 09 14 72 ?? ?? ?? 70 16 8d ?? 00 00 01 14 14 14 28 ?? 00 00 0a 28 ?? 00 00 0a 13 04 11 04 14 72 ?? ?? ?? 70 18 8d ?? 00 00 01 25 16 72 ?? ?? ?? 70 a2 14 14 14 17 28 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=4
 
}
rule Trojan_BAT_njRAT_A_MTB_3{
	meta:
		description = "Trojan:BAT/njRAT.A!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 01 00 00 "
		
	strings :
		$a_01_0 = {11 05 11 06 8f 5b 00 00 01 25 71 5b 00 00 01 11 06 0e 04 58 20 ff 00 00 00 5f d2 61 d2 81 5b 00 00 01 16 13 0e 11 06 17 58 13 06 1c } //5
	condition:
		((#a_01_0  & 1)*5) >=5
 
}