
rule Trojan_BAT_ArkeiStealer_AAHM_MTB{
	meta:
		description = "Trojan:BAT/ArkeiStealer.AAHM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 25 08 6f ?? 00 00 0a 25 17 6f ?? 00 00 0a 25 18 6f ?? 00 00 0a 25 06 6f ?? 00 00 0a 6f ?? 00 00 0a 07 16 07 8e 69 6f ?? 00 00 0a 0d } //4
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}