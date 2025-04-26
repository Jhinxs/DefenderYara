
rule Trojan_BAT_Crysan_PHOR_MTB{
	meta:
		description = "Trojan:BAT/Crysan.PHOR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {73 4f 00 00 0a 0b 28 ?? ?? ?? 06 0c 16 0d 2b 6f ?? ?? ?? 04 2b 55 00 08 09 11 04 6f ?? ?? ?? 0a 13 05 d0 4f 00 00 01 28 ?? ?? ?? 0a 72 39 02 00 70 28 ?? ?? ?? 0a 20 00 01 00 00 14 14 17 8d 18 00 00 01 25 16 11 05 8c 26 00 00 01 a2 28 ?? ?? ?? 0a a5 46 00 00 01 13 06 07 09 11 06 d2 6f ?? ?? ?? 0a 00 00 11 04 17 58 13 04 11 04 17 fe 04 13 07 11 07 2d a0 06 17 58 0a 00 09 17 58 0d 09 20 00 56 00 00 fe 04 13 08 11 08 2d 83 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}