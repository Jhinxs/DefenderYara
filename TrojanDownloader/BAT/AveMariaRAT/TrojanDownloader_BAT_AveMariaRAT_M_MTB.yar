
rule TrojanDownloader_BAT_AveMariaRAT_M_MTB{
	meta:
		description = "TrojanDownloader:BAT/AveMariaRAT.M!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_03_0 = {0a 0c 08 20 00 01 00 00 6f ?? 00 00 0a 08 20 80 00 00 00 6f ?? 00 00 0a 28 ?? 00 00 0a 72 ?? ?? ?? 70 6f ?? 00 00 0a 06 20 e8 03 00 00 73 ?? 00 00 0a 0d 08 09 08 6f ?? 00 00 0a 1e 5b 6f ?? 00 00 0a 6f ?? 00 00 0a 08 09 08 6f ?? 00 00 0a 1e 5b 6f ?? 00 00 0a 6f ?? 00 00 0a 08 17 6f ?? 00 00 0a 07 08 6f ?? 00 00 0a 17 73 ?? 00 00 0a 13 04 11 04 02 16 02 8e 69 6f } //2
		$a_03_1 = {0a 0c 07 06 6f ?? 00 00 0a 0d 09 08 6f ?? 00 00 0a 08 6f ?? 00 00 0a 07 6f ?? 00 00 0a 08 6f ?? 00 00 0a 13 04 de } //2
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2) >=4
 
}