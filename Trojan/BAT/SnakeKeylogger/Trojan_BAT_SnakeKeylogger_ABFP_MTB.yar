
rule Trojan_BAT_SnakeKeylogger_ABFP_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.ABFP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 07 02 07 18 5a 18 6f ?? ?? ?? 0a 1f 10 28 ?? ?? ?? 0a 9c 07 17 58 0b 07 20 ?? ?? ?? 00 fe 04 2d de } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}