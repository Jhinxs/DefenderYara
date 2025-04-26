
rule TrojanDownloader_O97M_Dridex_PDA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Dridex.PDA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_01_0 = {43 4f 56 49 44 2d 31 39 20 46 75 6e 65 72 61 6c 20 41 73 73 69 73 74 61 6e 63 65 20 48 65 6c 70 6c 69 6e 65 20 38 34 34 2d 36 38 34 2d 36 33 33 33 } //1 COVID-19 Funeral Assistance Helpline 844-684-6333
		$a_01_1 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 41 6a 64 6a 51 4e 65 5a 70 64 77 62 2e 72 74 66 } //1 C:\ProgramData\AjdjQNeZpdwb.rtf
		$a_01_2 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 79 64 6f 62 7a 66 6e 54 71 4a 6d 6e 58 74 4f 62 4c 7a 5a 50 79 2e 72 74 66 } //1 C:\ProgramData\ydobzfnTqJmnXtObLzZPy.rtf
		$a_01_3 = {43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 61 4d 75 53 66 73 77 55 6b 58 75 47 2e 72 74 66 } //1 C:\ProgramData\aMuSfswUkXuG.rtf
		$a_01_4 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //1 ShellExecuteA
		$a_01_5 = {77 6d 69 63 2e 65 78 65 } //1 wmic.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=4
 
}