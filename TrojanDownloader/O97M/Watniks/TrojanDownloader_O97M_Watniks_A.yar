
rule TrojanDownloader_O97M_Watniks_A{
	meta:
		description = "TrojanDownloader:O97M/Watniks.A,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_00_0 = {57 73 68 53 68 65 6c 6c 2e 52 75 6e 20 66 69 6c 65 2c 20 30 2c 20 31 } //1 WshShell.Run file, 0, 1
		$a_00_1 = {2e 53 61 76 65 54 6f 46 69 6c 65 20 6c 6f 63 61 6c 46 69 6c 65 2c 20 32 } //1 .SaveToFile localFile, 2
		$a_00_2 = {73 20 3d 20 64 66 28 75 72 6c 2c 20 46 69 6c 65 50 28 22 22 29 29 } //1 s = df(url, FileP(""))
		$a_00_3 = {46 69 6c 65 50 20 3d 20 67 65 74 54 65 6d 70 50 61 74 68 28 29 20 2b 20 22 77 69 6e 64 6f 77 73 2e 65 78 65 } //1 FileP = getTempPath() + "windows.exe
		$a_00_4 = {53 65 74 20 66 20 3d 20 66 69 6c 65 73 79 73 2e 47 65 74 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 28 32 29 } //1 Set f = filesys.GetSpecialFolder(2)
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=4
 
}