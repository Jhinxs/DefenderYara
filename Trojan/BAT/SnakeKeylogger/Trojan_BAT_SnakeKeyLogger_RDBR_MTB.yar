
rule Trojan_BAT_SnakeKeyLogger_RDBR_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeyLogger.RDBR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {07 08 18 6f 09 01 00 0a 1f 10 28 02 02 00 0a 6f 03 02 00 0a 08 18 } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}