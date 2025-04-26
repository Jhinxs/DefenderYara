
rule Trojan_BAT_Redline_PSKG_MTB{
	meta:
		description = "Trojan:BAT/Redline.PSKG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {18 8d 03 00 00 01 25 16 28 ?? ?? ?? 0a a2 25 17 28 ?? ?? ?? 0a 28 ?? ?? ?? 06 74 09 00 00 1b 18 28 50 00 00 06 74 09 00 00 1b 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 17 28 50 00 00 06 a2 0b de 0e } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}