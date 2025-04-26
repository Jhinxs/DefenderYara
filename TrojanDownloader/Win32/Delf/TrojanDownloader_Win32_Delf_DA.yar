
rule TrojanDownloader_Win32_Delf_DA{
	meta:
		description = "TrojanDownloader:Win32/Delf.DA,SIGNATURE_TYPE_PEHSTR,09 00 08 00 06 00 00 "
		
	strings :
		$a_01_0 = {7b 34 45 43 38 45 33 43 44 2d 32 44 45 42 2d 34 42 41 32 2d 41 36 46 34 2d 31 34 44 41 37 37 32 46 42 38 32 43 7d } //1 {4EC8E3CD-2DEB-4BA2-A6F4-14DA772FB82C}
		$a_01_1 = {7b 36 43 36 41 39 44 39 37 2d 46 34 42 38 2d 34 30 42 42 2d 41 36 37 44 2d 42 41 38 32 34 33 39 35 46 45 42 32 7d } //1 {6C6A9D97-F4B8-40BB-A67D-BA824395FEB2}
		$a_01_2 = {50 6f 72 74 69 6f 6e 73 20 43 6f 70 79 72 69 67 68 74 20 28 63 29 20 31 39 39 39 2c 32 30 30 33 20 41 76 65 6e 67 65 72 20 62 79 20 4e 68 54 } //2 Portions Copyright (c) 1999,2003 Avenger by NhT
		$a_01_3 = {53 4f 46 54 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 44 4f 57 53 5c 43 75 72 52 45 4e 54 56 65 72 73 69 6f 6e 5c 45 78 70 4c 4f 52 45 52 5c 53 48 45 4c 4c 45 78 65 63 75 74 65 48 4f 4f 4b 73 } //2 SOFTware\Microsoft\WinDOWS\CurRENTVersion\ExpLORER\SHELLExecuteHOOKs
		$a_01_4 = {63 6d 64 20 2f 63 20 64 65 6c 20 2f 66 20 2f 61 } //2 cmd /c del /f /a
		$a_01_5 = {56 65 72 43 6c 73 69 64 2e 65 78 65 00 00 00 00 77 69 6e 64 6f 77 78 00 53 74 61 72 74 48 6f 6f 6b 32 00 00 53 74 6f 70 48 6f 6f 6b 32 } //2
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2) >=8
 
}