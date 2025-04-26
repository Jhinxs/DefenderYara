
rule Backdoor_BAT_Crysan_BWAA_MTB{
	meta:
		description = "Backdoor:BAT/Crysan.BWAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {13 04 11 04 28 ?? 00 00 0a 09 6f ?? 00 00 0a 6f ?? 00 00 0a 00 11 04 28 ?? 00 00 0a 09 6f ?? 00 00 0a 6f ?? 00 00 0a 00 11 04 11 04 6f ?? 00 00 0a 11 04 6f ?? 00 00 0a 6f ?? 00 00 0a 13 05 73 ?? 00 00 0a 13 06 11 06 11 05 17 } //2
		$a_03_1 = {13 09 11 07 11 09 16 11 09 8e 69 6f ?? 00 00 0a 00 11 07 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=4
 
}