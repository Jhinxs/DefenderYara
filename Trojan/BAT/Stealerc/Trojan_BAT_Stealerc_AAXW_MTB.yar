
rule Trojan_BAT_Stealerc_AAXW_MTB{
	meta:
		description = "Trojan:BAT/Stealerc.AAXW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {25 11 04 28 ?? ?? 00 06 00 25 17 6f ?? 00 00 0a 00 25 18 6f ?? 00 00 0a 00 25 07 28 ?? ?? 00 06 00 13 08 20 00 00 00 00 38 ?? ff ff ff 00 05 1f 10 28 ?? 00 00 2b 28 ?? 00 00 2b 0b 20 05 00 00 00 38 ?? ff ff ff 11 08 6f ?? 00 00 0a 13 09 20 07 00 00 00 38 ?? ff ff ff 11 09 09 16 09 8e 69 6f ?? 00 00 0a 13 06 } //4
		$a_01_1 = {7b 00 7d 00 64 00 7b 00 7d 00 6f 00 7b 00 7d 00 68 00 7b 00 7d 00 74 00 7b 00 7d 00 65 00 7b 00 7d 00 4d 00 7b 00 7d 00 74 00 7b 00 7d 00 65 00 7b 00 7d 00 47 00 7b 00 7d 00 } //1 {}d{}o{}h{}t{}e{}M{}t{}e{}G{}
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}