
rule Trojan_BAT_XWormRAT_AAYY_MTB{
	meta:
		description = "Trojan:BAT/XWormRAT.AAYY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 07 02 17 8d ?? 00 00 01 0c 08 16 07 8c ?? 00 00 01 a2 08 14 28 ?? 00 00 0a 1f 0e 8d ?? 00 00 01 13 04 11 04 16 20 f7 00 00 00 9e 11 04 17 1f 28 9e 11 04 18 1f 73 9e 11 04 19 20 b1 00 00 00 9e 11 04 1a 20 c7 00 00 00 9e 11 04 1b 20 8a 00 00 00 9e 11 04 1c 1f 6c 9e 11 04 1d 20 98 00 00 00 9e 11 04 1e 1f 23 9e 11 04 1f 09 20 ba 00 00 00 9e 11 04 1f 0a 20 ee 00 00 00 9e 11 04 1f 0b 1f 55 9e 11 04 1f 0c 20 8d 00 00 00 9e 11 04 1f 0d 20 b1 00 00 00 9e 11 04 07 1f 0e 5d 94 8c ?? 00 00 01 28 ?? 00 00 0a 28 ?? 00 00 0a 9c 07 17 d6 0b 07 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}