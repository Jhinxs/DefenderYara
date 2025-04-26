
rule TrojanDownloader_Win32_Banload_AMZ{
	meta:
		description = "TrojanDownloader:Win32/Banload.AMZ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 00 52 00 65 00 76 00 6f 00 6c 00 74 00 61 00 2e 00 76 00 62 00 70 00 } //1 \Revolta.vbp
		$a_01_1 = {5c 00 44 00 69 00 61 00 20 00 64 00 61 00 20 00 4d 00 75 00 6c 00 68 00 65 00 72 00 } //1 \Dia da Mulher
		$a_03_2 = {2e 00 65 00 78 00 65 00 00 00 ?? 00 00 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f } //1
		$a_03_3 = {c7 45 fc 06 00 00 00 6a 00 6a 00 68 ?? 19 40 00 8b 45 dc 50 ff 15 ?? 10 40 00 8b d0 8d 4d d0 ff 15 ?? 10 40 00 50 8d 4d cc 51 ff 15 ?? 10 40 00 50 68 ?? ?? 40 00 8d 55 d4 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}