
rule TrojanDownloader_Win32_Booreen_A{
	meta:
		description = "TrojanDownloader:Win32/Booreen.A,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {66 69 72 73 74 77 6f 6c 66 2e 6f 72 67 2f 72 64 2f 66 69 6c 65 2e 70 68 70 3f 69 64 3d } //1 firstwolf.org/rd/file.php?id=
		$a_01_1 = {62 75 72 69 6e 2e 62 69 7a 2f 72 64 2f 72 64 2e 70 68 70 3f 69 64 3d } //1 burin.biz/rd/rd.php?id=
		$a_01_2 = {41 32 35 38 34 39 43 34 2d 39 33 46 33 2d 34 32 39 44 2d 46 46 33 34 2d 32 36 30 41 32 30 36 38 38 39 37 43 } //1 A25849C4-93F3-429D-FF34-260A2068897C
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects
		$a_01_4 = {62 65 6e 73 6f 72 74 79 2e 64 6c 6c } //1 bensorty.dll
		$a_01_5 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 } //1 URLDownloadToFile
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}