
rule Trojan_BAT_Zusy_PSSU_MTB{
	meta:
		description = "Trojan:BAT/Zusy.PSSU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 25 06 72 75 00 00 70 28 ?? 00 00 0a 6f ?? 00 00 0a 6f ?? 00 00 0a 73 23 00 00 0a 6f ?? 00 00 0a 28 ?? 00 00 0a 6f ?? 00 00 0a 7d } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}