
rule Trojan_BAT_Bobik_PSKV_MTB{
	meta:
		description = "Trojan:BAT/Bobik.PSKV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {13 07 28 0f 00 00 0a 11 07 6f ?? ?? ?? 0a 13 08 11 06 11 08 16 11 08 8e 69 6f ?? ?? ?? 0a 1b 8d ?? ?? ?? 01 25 16 72 ?? ?? ?? 70 a2 25 17 09 a2 25 18 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}