
rule Trojan_BAT_Snakelogger_AMMB_MTB{
	meta:
		description = "Trojan:BAT/Snakelogger.AMMB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {5d d4 91 28 ?? ?? 00 0a 59 20 00 01 00 00 58 20 00 01 00 00 5d 28 ?? ?? 00 0a 9c 09 17 6a 58 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}