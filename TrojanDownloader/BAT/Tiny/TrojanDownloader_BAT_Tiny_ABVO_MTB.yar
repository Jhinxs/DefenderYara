
rule TrojanDownloader_BAT_Tiny_ABVO_MTB{
	meta:
		description = "TrojanDownloader:BAT/Tiny.ABVO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {0d 07 09 1a 16 6f ?? 00 00 0a 26 09 16 28 ?? 00 00 0a 13 04 11 04 1b 58 8d ?? 00 00 01 13 05 16 13 06 38 ?? 00 00 00 11 06 07 11 05 11 06 1b 58 11 04 11 06 59 20 00 10 00 00 3c ?? 00 00 00 11 04 11 06 59 38 ?? 00 00 00 20 00 10 00 00 16 6f ?? 00 00 0a 58 13 06 11 06 11 04 } //3
		$a_01_1 = {47 65 74 42 79 74 65 73 } //1 GetBytes
	condition:
		((#a_03_0  & 1)*3+(#a_01_1  & 1)*1) >=4
 
}