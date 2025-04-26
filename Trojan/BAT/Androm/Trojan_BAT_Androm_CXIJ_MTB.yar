
rule Trojan_BAT_Androm_CXIJ_MTB{
	meta:
		description = "Trojan:BAT/Androm.CXIJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {36 61 35 61 39 30 30 30 32 34 30 30 30 30 30 30 32 33 30 30 30 30 30 30 64 38 66 } //1 6a5a90002400000023000000d8f
		$a_01_1 = {66 30 30 30 30 39 66 30 30 30 30 30 30 32 37 30 30 30 30 30 30 36 37 30 30 30 30 } //1 f00009f00000027000000670000
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}