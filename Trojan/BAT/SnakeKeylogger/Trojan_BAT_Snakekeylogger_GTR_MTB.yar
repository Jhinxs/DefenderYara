
rule Trojan_BAT_Snakekeylogger_GTR_MTB{
	meta:
		description = "Trojan:BAT/Snakekeylogger.GTR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {20 46 63 2b 97 28 ?? ?? ?? 06 07 08 28 ?? ?? ?? 06 0b 08 15 58 0c 08 16 fe 04 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}