
rule TrojanDownloader_Win32_Upatre_BD{
	meta:
		description = "TrojanDownloader:Win32/Upatre.BD,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_03_0 = {e8 00 00 00 00 5b 83 c3 09 e9 ?? ?? 00 00 4c 6f 61 64 4c 69 62 72 61 72 79 41 } //1
		$a_01_1 = {6a 04 68 00 10 00 00 68 00 00 a8 00 6a 00 ff 55 40 } //1
		$a_01_2 = {b0 53 66 ab b0 45 66 ab b0 52 66 ab } //1
		$a_01_3 = {b8 53 00 45 00 ab b0 52 66 ab } //1
		$a_03_4 = {05 80 84 1e 00 89 45 ?? 05 80 8d 5b 00 89 45 ?? b9 00 10 00 00 } //1
		$a_00_5 = {25 73 25 73 00 25 73 5c 25 73 00 6f 70 65 6e } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_00_5  & 1)*1) >=4
 
}