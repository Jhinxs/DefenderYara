
rule Trojan_BAT_Bladabindi_RPN_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.RPN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {04 20 ff 00 00 00 5f 2b 1d 03 6f 7c 00 00 0a 0c 2b 17 08 06 08 06 93 02 7b 11 00 00 04 07 91 04 60 61 d1 9d 2b 03 0b 2b e0 06 17 59 25 0a 16 2f 02 2b 05 2b dd 0a 2b c8 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}