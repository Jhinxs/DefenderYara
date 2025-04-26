
rule TrojanDownloader_Win32_Upatre_CC{
	meta:
		description = "TrojanDownloader:Win32/Upatre.CC,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {ff 55 f8 59 58 05 ?? 04 00 00 68 00 01 00 00 50 6a 00 ff 55 f0 } //1
		$a_01_1 = {c6 00 68 40 89 08 c6 40 04 c3 8b 85 4c ff ff ff 50 89 85 14 ff ff ff ff b5 6c ff ff ff ff 55 c4 } //1
		$a_01_2 = {81 bd 50 ff ff ff 00 60 00 00 0f 85 9b 01 00 00 56 8b 4e 3c 8b 44 0e 28 } //1
		$a_01_3 = {51 8b 0f ac 33 c1 aa 59 4b 75 04 5b 2b f3 53 49 75 ee } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}