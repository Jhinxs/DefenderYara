
rule Trojan_BAT_NjRAT_PSJW_MTB{
	meta:
		description = "Trojan:BAT/NjRAT.PSJW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 19 17 20 65 01 00 00 20 40 01 00 00 28 10 00 00 06 0b 19 13 07 11 07 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 07 20 ed 64 30 0d 18 28 0e 00 00 06 28 02 00 00 06 0c 08 20 d8 02 00 00 20 e7 02 00 00 28 11 00 00 06 14 16 8d 01 00 00 01 20 ab 00 00 00 20 ec 00 00 00 28 22 00 00 06 26 de 3b } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}