
rule Trojan_BAT_SnakeKeylogger_SPG_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.SPG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {07 09 18 6f ?? ?? ?? 0a 1f 10 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 16 91 13 05 08 11 05 6f ?? ?? ?? 0a 00 09 18 58 0d 00 09 07 6f ?? ?? ?? 0a fe 04 13 06 11 06 2d ca } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}