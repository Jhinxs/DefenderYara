
rule Trojan_BAT_SnakeKeylogger_KAB_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.KAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {02 0e 07 0e 04 8e 69 6f ?? 00 00 0a 0a 06 0b 2b 00 07 2a } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}