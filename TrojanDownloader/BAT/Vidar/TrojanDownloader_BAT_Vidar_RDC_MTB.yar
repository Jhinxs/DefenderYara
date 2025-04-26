
rule TrojanDownloader_BAT_Vidar_RDC_MTB{
	meta:
		description = "TrojanDownloader:BAT/Vidar.RDC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {64 31 63 63 32 62 61 64 2d 64 36 66 37 2d 34 37 62 38 2d 61 66 61 38 2d 33 61 39 64 34 34 33 30 64 63 63 31 } //1 d1cc2bad-d6f7-47b8-afa8-3a9d4430dcc1
		$a_01_1 = {59 4a 32 33 34 6a 38 68 54 5a 44 35 39 50 6f 4f } //1 YJ234j8hTZD59PoO
		$a_01_2 = {49 44 70 44 30 4b 4b 36 39 56 39 70 31 32 69 65 } //1 IDpD0KK69V9p12ie
		$a_03_3 = {11 0d 11 10 1f 0f 5f 11 0d 11 10 1f 0f 5f 95 11 06 25 1a 58 13 06 4b 61 20 ?? ?? ?? ?? 58 9e 11 18 } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*2) >=5
 
}