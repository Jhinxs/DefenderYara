
rule Backdoor_BAT_Androm_ASCC_MTB{
	meta:
		description = "Backdoor:BAT/Androm.ASCC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {01 11 05 11 0a 75 ?? 00 00 1b 11 0c 11 07 58 11 09 59 93 61 11 0b 75 ?? 00 00 1b 11 09 11 0c 58 1f 11 58 11 08 5d 93 61 d1 6f ?? 00 00 0a 26 1f 09 13 0e 38 ?? fe ff ff 11 09 17 58 13 09 1f 0c 13 0e 38 } //4
		$a_01_1 = {62 36 38 31 30 34 66 65 62 35 37 37 35 62 64 62 30 37 35 35 39 61 35 32 61 34 64 35 65 65 38 65 2e 52 65 73 6f 75 72 63 65 73 } //1 b68104feb5775bdb07559a52a4d5ee8e.Resources
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}