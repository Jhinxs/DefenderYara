
rule TrojanDownloader_Win32_Upatre_CO{
	meta:
		description = "TrojanDownloader:Win32/Upatre.CO,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_03_0 = {c6 00 68 40 89 08 c6 40 04 c3 8b 85 ?? ?? ff ff 50 89 85 ?? ?? ff ff ff b5 ?? ?? ff ff ff 55 bc } //1
		$a_01_1 = {8b 07 51 8b c8 33 0e 40 40 46 40 40 88 0f 59 47 4b 75 04 5b 2b f3 53 e2 e7 } //1
		$a_01_2 = {66 ad 52 03 d0 3b fa 72 04 41 5a eb f3 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}