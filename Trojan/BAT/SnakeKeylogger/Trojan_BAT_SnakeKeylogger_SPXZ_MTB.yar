
rule Trojan_BAT_SnakeKeylogger_SPXZ_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.SPXZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {5d 91 59 20 ?? ?? ?? 00 58 13 0b 07 11 09 11 0b 20 ?? ?? ?? 00 5d d2 9c } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}