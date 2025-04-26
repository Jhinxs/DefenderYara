
rule Backdoor_BAT_Crysan_HOAA_MTB{
	meta:
		description = "Backdoor:BAT/Crysan.HOAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 0c 08 28 ?? 00 00 0a 07 6f ?? 00 00 0a 6f ?? 00 00 0a 08 28 ?? 00 00 0a 07 6f ?? 00 00 0a 6f ?? 00 00 0a 08 08 6f ?? 00 00 0a 08 6f ?? 00 00 0a 6f ?? 00 00 0a 0d 73 ?? 00 00 0a 13 04 11 04 09 17 73 ?? 00 00 0a 13 05 } //3
		$a_03_1 = {13 06 11 05 11 06 16 11 06 8e 69 6f ?? 00 00 0a 11 05 } //2
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*2) >=5
 
}