
rule Trojan_BAT_Snakekeylogger_ZBM_MTB{
	meta:
		description = "Trojan:BAT/Snakekeylogger.ZBM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 0d 16 13 04 09 12 04 28 ?? ?? ?? 0a 07 08 02 08 91 6f ?? ?? ?? 0a de 0b 11 04 2c 06 09 28 ?? ?? ?? 0a dc 08 25 17 59 0c 16 fe 02 2d d2 07 6f ?? ?? ?? 0a 28 ?? ?? ?? 2b } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}