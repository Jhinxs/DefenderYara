
rule Trojan_BAT_LummaStealer_AAJM_MTB{
	meta:
		description = "Trojan:BAT/LummaStealer.AAJM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {11 02 11 08 02 11 08 91 11 01 61 11 00 11 03 91 61 d2 9c 38 ?? ?? ff ff 00 28 ?? 00 00 0a 03 6f ?? 00 00 0a 13 } //4
		$a_01_1 = {4d 00 61 00 69 00 6e 00 5f 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 } //1 Main_Project
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}