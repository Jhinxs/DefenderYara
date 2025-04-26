
rule TrojanDownloader_Win32_Kaliox_A{
	meta:
		description = "TrojanDownloader:Win32/Kaliox.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_03_0 = {68 00 00 00 a0 6a ff 68 44 61 00 10 52 ff 15 ?? ?? ?? ?? 8b 15 ?? ?? ?? ?? 8d 44 24 ?? 6a 04 50 6a 06 52 c7 44 24 ?? 00 5c 26 05 ff d6 } //2
		$a_00_1 = {5c 77 69 6e 69 6e 65 74 2e 64 6c 6c 00 00 00 00 69 64 65 6f 2e 64 6c 6c 00 } //2
		$a_01_2 = {49 45 63 6f 72 65 4f 6b 00 } //1
		$a_00_3 = {2f 4e 66 69 6c 65 2e 61 73 70 00 } //1
		$a_01_4 = {50 72 6f 63 47 6f } //1 ProcGo
		$a_01_5 = {47 65 74 46 69 6c 65 } //1 GetFile
	condition:
		((#a_03_0  & 1)*2+(#a_00_1  & 1)*2+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}