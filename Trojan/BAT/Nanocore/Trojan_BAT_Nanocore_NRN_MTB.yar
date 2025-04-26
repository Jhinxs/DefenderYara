
rule Trojan_BAT_Nanocore_NRN_MTB{
	meta:
		description = "Trojan:BAT/Nanocore.NRN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {8e 69 6f 2c 00 00 0a 13 05 7e ?? 00 00 04 11 05 6f ?? 00 00 0a 7e ?? 00 00 04 02 6f ?? 00 00 0a 7e ?? 00 00 04 6f ?? 00 00 0a 17 59 28 ?? 00 00 0a 16 7e ?? 00 00 04 02 1a 28 ?? 00 00 0a } //5
		$a_01_1 = {42 42 4e 4d 4b 38 37 33 } //1 BBNMK873
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}