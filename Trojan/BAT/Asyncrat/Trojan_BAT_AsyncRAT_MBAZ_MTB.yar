
rule Trojan_BAT_AsyncRAT_MBAZ_MTB{
	meta:
		description = "Trojan:BAT/AsyncRAT.MBAZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {01 13 07 09 28 ?? 00 00 0a 08 6f ?? 00 00 0a 6f ?? 00 00 0a 13 08 11 08 16 11 07 16 1f 10 28 ?? 00 00 0a 11 08 16 11 07 1f 0f 1f 10 28 83 00 00 0a 06 11 07 } //1
		$a_01_1 = {73 00 67 00 52 00 74 00 50 00 63 00 71 00 58 00 70 00 62 00 66 00 46 00 74 00 72 00 6c 00 44 00 41 00 57 00 74 00 52 00 57 00 54 00 66 00 69 00 78 00 53 00 54 00 64 00 6e 00 69 00 4c 00 62 00 } //1 sgRtPcqXpbfFtrlDAWtRWTfixSTdniLb
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}