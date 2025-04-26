
rule TrojanDownloader_Win32_Banload_AUV{
	meta:
		description = "TrojanDownloader:Win32/Banload.AUV,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {42 55 47 43 50 6c 2e 63 70 6c [0-20] 2e 65 78 65 [0-10] 68 74 74 70 3a 2f 2f } //1
		$a_03_1 = {68 e0 a0 06 10 8d 85 5c fb ff ff 50 e8 4c 47 00 00 83 c4 08 c7 85 24 f7 ff ff ?? ?? 06 10 8d 85 5c fb ff ff 89 85 18 f7 ff ff 6a 00 6a 00 8b 85 18 f7 ff ff 50 8b 8d 24 f7 ff ff 51 6a 00 e8 92 2e 00 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}