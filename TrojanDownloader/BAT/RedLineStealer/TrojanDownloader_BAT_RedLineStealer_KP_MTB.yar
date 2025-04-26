
rule TrojanDownloader_BAT_RedLineStealer_KP_MTB{
	meta:
		description = "TrojanDownloader:BAT/RedLineStealer.KP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_01_0 = {11 02 18 58 13 02 38 } //2
		$a_03_1 = {11 00 18 5b 8d ?? 00 00 01 13 01 } //2
		$a_03_2 = {11 01 11 02 18 5b 02 11 02 18 6f ?? 00 00 0a 1f 10 28 } //2
	condition:
		((#a_01_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2) >=6
 
}