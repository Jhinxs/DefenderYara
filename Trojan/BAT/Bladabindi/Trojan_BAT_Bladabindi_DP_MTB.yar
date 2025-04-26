
rule Trojan_BAT_Bladabindi_DP_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.DP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_02_0 = {70 0a 17 03 6f ?? ?? ?? 0a 13 04 0c 2b 2f 03 08 28 ?? ?? ?? 0a 04 08 04 6f ?? ?? ?? 0a 5d 17 d6 28 ?? ?? ?? 0a da 0d 06 09 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 0a 08 17 d6 0c 08 11 04 31 cc } //10
		$a_81_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_2 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
	condition:
		((#a_02_0  & 1)*10+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1) >=12
 
}