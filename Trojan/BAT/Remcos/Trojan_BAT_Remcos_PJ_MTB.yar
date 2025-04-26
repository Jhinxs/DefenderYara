
rule Trojan_BAT_Remcos_PJ_MTB{
	meta:
		description = "Trojan:BAT/Remcos.PJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {0a 0c 08 14 72 ?? ?? 01 70 16 8d 05 00 00 01 14 14 14 28 ?? ?? ?? 0a 14 72 ?? ?? 01 70 18 8d 05 00 00 01 0d 09 16 14 a2 00 09 17 14 a2 00 09 14 14 14 17 28 ?? ?? ?? 0a 26 00 2a } //1
		$a_81_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_2 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
	condition:
		((#a_03_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1) >=3
 
}