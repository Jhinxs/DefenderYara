
rule TrojanDownloader_O97M_Bartallex_A{
	meta:
		description = "TrojanDownloader:O97M/Bartallex.A,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 07 00 00 "
		
	strings :
		$a_00_0 = {22 70 22 20 2b 20 22 3a 2f 2f 31 34 36 2e 31 38 35 2e 32 31 33 2e } //1 "p" + "://146.185.213.
		$a_00_1 = {2f 69 6e 73 74 61 6c 6c 22 20 2b 20 22 2e 22 20 2b 20 43 68 72 28 41 73 63 28 22 65 22 29 29 } //1 /install" + "." + Chr(Asc("e"))
		$a_00_2 = {54 65 6d 70 5c 22 20 2b 20 42 41 52 54 } //1 Temp\" + BART
		$a_00_3 = {43 68 72 28 41 73 63 28 22 65 22 29 29 20 2b 20 22 78 22 20 2b 20 22 65 22 } //1 Chr(Asc("e")) + "x" + "e"
		$a_00_4 = {4b 69 6c 6c 20 4d 59 5f 46 49 4c 44 49 52 } //1 Kill MY_FILDIR
		$a_00_5 = {42 41 52 54 20 2b 20 43 68 72 28 33 34 29 } //1 BART + Chr(34)
		$a_00_6 = {58 50 46 49 4c 45 44 49 52 } //1 XPFILEDIR
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Bartallex_A_2{
	meta:
		description = "TrojanDownloader:O97M/Bartallex.A,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 07 00 00 "
		
	strings :
		$a_00_0 = {56 42 54 58 50 20 3d 20 22 61 64 6f 62 65 61 63 64 2d 75 70 64 61 74 65 78 70 } //1 VBTXP = "adobeacd-updatexp
		$a_00_1 = {4b 69 6c 6c 20 4d 59 5f 46 49 4c 45 44 49 52 } //1 Kill MY_FILEDIR
		$a_00_2 = {58 50 42 41 52 54 46 49 4c 45 44 49 52 } //1 XPBARTFILEDIR
		$a_00_3 = {50 72 69 6e 74 20 23 46 69 6c 65 4e 75 2c } //1 Print #FileNu,
		$a_00_4 = {72 65 74 56 61 6c 20 3d 20 53 68 65 6c 6c 28 58 50 42 41 52 54 46 49 4c 45 44 49 52 2c 20 30 29 } //1 retVal = Shell(XPBARTFILEDIR, 0)
		$a_00_5 = {72 65 74 56 61 6c 20 3d 20 53 68 65 6c 6c 28 4d 59 5f 46 49 4c 45 44 49 52 2c 20 30 29 } //1 retVal = Shell(MY_FILEDIR, 0)
		$a_00_6 = {22 63 3a 5c 57 69 6e 64 6f 77 73 5c 54 65 6d 70 5c 22 20 2b 20 42 41 52 54 } //1 "c:\Windows\Temp\" + BART
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=3
 
}