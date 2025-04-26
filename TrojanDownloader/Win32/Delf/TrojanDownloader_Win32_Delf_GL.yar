
rule TrojanDownloader_Win32_Delf_GL{
	meta:
		description = "TrojanDownloader:Win32/Delf.GL,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {31 2e 68 69 76 } //1 1.hiv
		$a_00_1 = {64 65 6c 20 25 30 } //1 del %0
		$a_00_2 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_00_3 = {69 65 70 72 6f 6c 6f 61 64 65 72 2e 65 78 65 } //1 ieproloader.exe
		$a_00_4 = {53 6f 66 74 77 61 72 65 5c 6d 6d 74 65 73 74 } //1 Software\mmtest
		$a_03_5 = {52 50 8d 46 48 50 e8 ?? ?? ff ff 83 f8 ff 0f 84 ?? ?? 00 00 89 06 66 81 7e 04 b3 d7 0f 85 ?? ?? 00 00 66 ff 4e 04 6a 00 ff 36 e8 ?? ?? ff ff 40 0f 84 ?? ?? 00 00 2d 81 00 00 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_03_5  & 1)*1) >=6
 
}