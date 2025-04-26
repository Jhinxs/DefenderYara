
rule Trojan_BAT_Heracles_GKAA_MTB{
	meta:
		description = "Trojan:BAT/Heracles.GKAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {1e 13 08 38 ?? ff ff ff 08 74 ?? 00 00 01 03 6f ?? 00 00 0a 08 74 ?? 00 00 01 6f ?? 00 00 0a 13 04 } //2
		$a_03_1 = {01 02 16 02 8e 69 6f ?? 00 00 0a de 49 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=4
 
}