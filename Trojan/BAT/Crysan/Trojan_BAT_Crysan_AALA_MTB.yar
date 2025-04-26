
rule Trojan_BAT_Crysan_AALA_MTB{
	meta:
		description = "Trojan:BAT/Crysan.AALA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_03_0 = {0d 06 13 04 11 04 8e 69 8d ?? 00 00 01 13 05 16 13 06 38 ?? 00 00 00 11 05 11 06 11 04 11 06 91 09 28 ?? 00 00 0a 59 d2 9c 11 06 17 58 13 06 11 06 11 04 8e 69 32 e0 } //5
		$a_01_1 = {52 65 61 64 41 73 42 79 74 65 41 72 72 61 79 41 73 79 6e 63 } //1 ReadAsByteArrayAsync
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1) >=6
 
}