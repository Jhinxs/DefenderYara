
rule Trojan_BAT_Marsilia_PTBR_MTB{
	meta:
		description = "Trojan:BAT/Marsilia.PTBR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 2c 42 02 7b 10 00 00 04 72 d9 01 00 70 6f 25 00 00 0a 6f 26 00 00 0a 0c 12 02 28 ?? 00 00 0a 2d 3f } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}