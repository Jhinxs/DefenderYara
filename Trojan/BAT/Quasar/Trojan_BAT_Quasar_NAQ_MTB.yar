
rule Trojan_BAT_Quasar_NAQ_MTB{
	meta:
		description = "Trojan:BAT/Quasar.NAQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {28 10 00 00 0a 72 ?? ?? 00 70 02 73 ?? ?? 00 0a 28 ?? ?? 00 0a 28 ?? ?? 00 0a 28 ?? ?? 00 0a 06 02 6f ?? ?? 00 0a 0b 25 07 28 ?? ?? 00 0a 28 ?? ?? 00 0a 26 } //5
		$a_01_1 = {61 00 6c 00 6b 00 61 00 6c 00 75 00 72 00 6f 00 70 00 73 00 2e 00 73 00 62 00 73 00 } //1 alkalurops.sbs
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}