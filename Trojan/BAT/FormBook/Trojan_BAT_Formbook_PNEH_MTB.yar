
rule Trojan_BAT_Formbook_PNEH_MTB{
	meta:
		description = "Trojan:BAT/Formbook.PNEH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {00 02 06 07 28 ?? 00 00 06 0c 04 03 6f ?? 00 00 0a 59 0d 09 19 fe 04 16 fe 01 13 04 11 04 2c 2f 00 03 19 8d 5b 00 00 01 25 16 12 02 28 ?? 00 00 0a 9c 25 17 12 02 28 ?? 00 00 0a 9c 25 18 12 02 28 ?? 00 00 0a 9c 6f 75 00 00 0a 00 00 2b 41 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}