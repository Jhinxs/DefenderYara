
rule Trojan_BAT_Mamut_MBU_MTB{
	meta:
		description = "Trojan:BAT/Mamut.MBU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {01 13 05 08 28 ?? 00 00 0a 04 6f ?? 00 00 0a 6f ?? 00 00 0a 25 16 11 05 16 1f 10 28 ?? 00 00 0a 16 11 05 1f 0f 1f 10 28 ?? 00 00 0a 07 11 05 } //1
		$a_81_1 = {42 45 31 34 44 38 43 42 } //1 BE14D8CB
	condition:
		((#a_03_0  & 1)*1+(#a_81_1  & 1)*1) >=2
 
}