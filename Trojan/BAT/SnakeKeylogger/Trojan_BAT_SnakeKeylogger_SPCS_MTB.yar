
rule Trojan_BAT_SnakeKeylogger_SPCS_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.SPCS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 01 00 00 "
		
	strings :
		$a_03_0 = {11 08 73 5b 00 00 0a 13 07 06 11 07 72 ?? ?? ?? 70 72 ?? ?? ?? 70 6f ?? ?? ?? 0a 7d 33 00 00 04 16 06 7b 33 00 00 04 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 7e 35 00 00 04 25 2d 17 } //3
	condition:
		((#a_03_0  & 1)*3) >=3
 
}