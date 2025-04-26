
rule TrojanDownloader_Win32_Fiansrch_A{
	meta:
		description = "TrojanDownloader:Win32/Fiansrch.A,SIGNATURE_TYPE_PEHSTR_EXT,2b 00 28 00 07 00 00 "
		
	strings :
		$a_00_0 = {67 6f 64 6f 77 6e 2e 67 65 6f 70 69 61 2e 63 6f 6d 2f 46 69 61 6e 2f 46 69 61 6e 53 65 61 72 63 68 37 2f 66 69 61 6e 66 78 6d 73 67 73 2e 64 6c 6c } //10 godown.geopia.com/Fian/FianSearch7/fianfxmsgs.dll
		$a_00_1 = {67 6f 64 6f 77 6e 2e 67 65 6f 70 69 61 2e 63 6f 6d 2f 46 69 61 6e 2f 46 69 61 6e 53 65 61 72 63 68 37 2f 46 69 61 6e 53 65 61 72 63 68 2e 65 78 65 } //10 godown.geopia.com/Fian/FianSearch7/FianSearch.exe
		$a_00_2 = {67 6f 64 6f 77 6e 2e 67 65 6f 70 69 61 2e 63 6f 6d 2f 46 69 61 6e 2f 46 69 61 6e 53 65 61 72 63 68 37 2f 66 69 61 6e 55 70 64 61 74 65 56 65 72 2e 64 61 74 } //10 godown.geopia.com/Fian/FianSearch7/fianUpdateVer.dat
		$a_00_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 55 6e 69 6e 73 74 61 6c 6c 5c 66 78 6d 73 67 73 55 6e 69 6e 73 74 } //10 SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\fxmsgsUninst
		$a_01_4 = {49 6e 74 65 72 6e 65 74 43 6c 6f 73 65 48 61 6e 64 6c 65 } //1 InternetCloseHandle
		$a_01_5 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //1 InternetReadFile
		$a_00_6 = {49 6e 74 65 72 6e 65 74 57 72 69 74 65 46 69 6c 65 } //1 InternetWriteFile
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_00_6  & 1)*1) >=40
 
}