
rule Trojan_BAT_DCRat_MBCZ_MTB{
	meta:
		description = "Trojan:BAT/DCRat.MBCZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {70 0c 07 28 ?? 00 00 0a 03 6f ?? 00 00 0a 6f ?? 00 00 0a 0d 06 09 6f ?? 00 00 0a 00 06 18 6f ?? 00 00 0a 00 02 } //1
		$a_01_1 = {32 00 37 00 50 00 53 00 67 00 6e 00 63 00 47 00 70 00 77 00 59 00 42 00 68 00 36 00 75 00 6b 00 57 00 74 00 54 00 56 00 75 00 39 00 75 00 7a 00 30 00 6f 00 4a 00 } //1 27PSgncGpwYBh6ukWtTVu9uz0oJ
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}