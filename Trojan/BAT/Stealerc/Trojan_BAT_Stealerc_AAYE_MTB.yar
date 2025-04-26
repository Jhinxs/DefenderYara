
rule Trojan_BAT_Stealerc_AAYE_MTB{
	meta:
		description = "Trojan:BAT/Stealerc.AAYE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 "
		
	strings :
		$a_03_0 = {0a 25 11 04 28 ?? ?? 00 06 00 25 17 6f ?? 00 00 0a 00 25 18 28 ?? ?? 00 06 00 25 07 28 ?? ?? 00 06 00 13 08 } //2
		$a_03_1 = {11 09 09 16 09 8e 69 28 ?? ?? 00 06 13 06 } //2
		$a_01_2 = {7b 00 7d 00 64 00 7b 00 7d 00 6f 00 7b 00 7d 00 68 00 7b 00 7d 00 74 00 7b 00 7d 00 65 00 7b 00 7d 00 4d 00 7b 00 7d 00 74 00 7b 00 7d 00 65 00 7b 00 7d 00 47 00 7b 00 7d 00 } //1 {}d{}o{}h{}t{}e{}M{}t{}e{}G{}
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_01_2  & 1)*1) >=5
 
}