
rule TrojanDownloader_Win32_Egapel_D{
	meta:
		description = "TrojanDownloader:Win32/Egapel.D,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {ff d6 3b c7 72 fa 5f 5e c3 } //1
		$a_01_1 = {83 fe 2d 7e 05 83 ee 2d eb 03 83 c6 0f } //1
		$a_03_2 = {6a 7c 56 e8 ?? ?? 00 00 83 c4 0c (85 c0 0f 84|3b c3 0f 84) } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}