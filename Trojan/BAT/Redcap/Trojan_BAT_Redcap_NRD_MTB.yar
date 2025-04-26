
rule Trojan_BAT_Redcap_NRD_MTB{
	meta:
		description = "Trojan:BAT/Redcap.NRD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {72 23 00 00 70 02 7b ?? 00 00 04 6f ?? 00 00 06 72 ?? 00 00 70 28 ?? 00 00 0a 02 7b ?? 00 00 04 73 ?? 00 00 0a 7d ?? 00 00 04 02 7b ?? 00 00 04 6f ?? 00 00 0a 00 02 7b ?? 00 00 04 6f ?? 00 00 0a 0a 06 6f ?? 00 00 0a 0b 07 2c 1d 00 06 6f ?? 00 00 0a 26 02 06 16 6f ?? 00 00 0a 6f ?? 00 00 0a 7d ?? 00 00 04 } //5
		$a_01_1 = {43 00 72 00 61 00 63 00 6b 00 65 00 72 00 73 00 } //1 Crackers
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}