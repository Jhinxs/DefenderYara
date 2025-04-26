
rule Trojan_BAT_AvemariaRat_KDFA_MTB{
	meta:
		description = "Trojan:BAT/AvemariaRat.KDFA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {20 16 e0 00 00 0c 2b 16 20 30 1e 63 9b 28 ?? ?? ?? 06 07 08 28 ?? ?? ?? 06 0b 08 15 58 0c 08 16 fe 04 16 fe 01 0d 09 2d df } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}