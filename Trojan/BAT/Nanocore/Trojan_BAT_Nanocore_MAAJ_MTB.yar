
rule Trojan_BAT_Nanocore_MAAJ_MTB{
	meta:
		description = "Trojan:BAT/Nanocore.MAAJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 0d 09 16 73 ?? 00 00 0a 0b 16 13 04 16 0c 06 74 ?? 00 00 01 08 1f 64 d6 17 d6 8d ?? 00 00 01 28 ?? 00 00 0a 74 ?? 00 00 1b 0a 07 06 11 04 1f 64 } //1
		$a_01_1 = {00 0a 13 06 11 06 16 2e 0e 11 04 11 06 d6 13 04 08 11 06 d6 0c 2b c4 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}