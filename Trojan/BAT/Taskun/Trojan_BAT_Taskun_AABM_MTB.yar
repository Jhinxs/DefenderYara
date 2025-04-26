
rule Trojan_BAT_Taskun_AABM_MTB{
	meta:
		description = "Trojan:BAT/Taskun.AABM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 "
		
	strings :
		$a_03_0 = {16 13 12 2b 5a 00 11 0a 11 10 11 12 6f ?? 00 00 0a 13 13 11 13 16 16 16 16 28 ?? 00 00 0a 28 ?? 00 00 0a 13 14 11 14 2c 2f 00 11 0b 12 13 28 ?? 00 00 0a 6f ?? 00 00 0a 00 11 0b 12 13 28 ?? 00 00 0a 6f ?? 00 00 0a 00 11 0b 12 13 28 ?? 00 00 0a 6f ?? 00 00 0a 00 00 00 11 12 17 d6 13 12 } //4
	condition:
		((#a_03_0  & 1)*4) >=4
 
}