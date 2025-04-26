
rule TrojanDownloader_BAT_RemcosRAT_I_MTB{
	meta:
		description = "TrojanDownloader:BAT/RemcosRAT.I!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 "
		
	strings :
		$a_03_0 = {0a 0b 16 0d 2b 16 06 09 28 ?? 00 00 06 13 04 07 09 11 04 6f ?? 00 00 0a 09 18 58 0d 09 06 6f ?? 00 00 0a 32 ?? 07 6f ?? 00 00 0a 28 ?? 00 00 2b 0c 08 2a } //2
		$a_03_1 = {02 03 18 6f ?? 00 00 0a 1f 10 28 } //2
		$a_03_2 = {0a 0c 07 6f ?? 00 00 0a 0d 16 13 04 2b 18 09 11 04 6f ?? 00 00 0a 13 05 08 11 05 6f ?? 00 00 0a 11 04 17 58 13 04 11 04 09 6f ?? 00 00 0a 32 de 14 08 28 03 00 00 2b 0d de 17 07 2c 06 07 6f ?? 00 00 0a dc 06 2c 06 06 6f ?? 00 00 0a dc 26 de 8d 09 2a } //2
		$a_01_3 = {47 65 74 52 65 73 70 6f 6e 73 65 53 74 72 65 61 6d } //1 GetResponseStream
		$a_01_4 = {47 65 74 54 79 70 65 } //1 GetType
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=8
 
}