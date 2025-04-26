
rule Trojan_BAT_Snakekeylogger_DRFA_MTB{
	meta:
		description = "Trojan:BAT/Snakekeylogger.DRFA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {7e 03 00 00 04 73 6a 00 00 0a 72 ?? ?? ?? 70 6f ?? ?? ?? 0a 74 08 00 00 1b 0a 06 72 ?? ?? ?? 70 28 ?? ?? ?? 06 0b 07 72 ?? ?? ?? 70 28 ?? ?? ?? 06 74 46 00 00 01 6f ?? ?? ?? 0a 1a 9a 80 02 00 00 04 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}