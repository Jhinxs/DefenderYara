
rule TrojanDownloader_BAT_AsyncRAT_BD_MTB{
	meta:
		description = "TrojanDownloader:BAT/AsyncRAT.BD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {07 09 16 6f ?? 00 00 0a 13 04 12 04 28 ?? 00 00 0a 6f ?? 00 00 0a 00 09 17 d6 0d 09 08 31 dc 7e ef 06 00 04 6f ?? 00 00 0a 28 ?? 0d 00 06 26 de } //2
		$a_01_1 = {45 00 6e 00 74 00 72 00 79 00 50 00 6f 00 69 00 6e 00 74 00 } //1 EntryPoint
		$a_01_2 = {4f 00 70 00 65 00 6e 00 52 00 65 00 61 00 64 00 } //1 OpenRead
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=4
 
}