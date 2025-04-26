
rule TrojanDownloader_Win32_Tiny_BB{
	meta:
		description = "TrojanDownloader:Win32/Tiny.BB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 04 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 65 00 2e 00 74 00 68 00 65 00 63 00 2e 00 63 00 6e 00 2f 00 77 00 67 00 33 00 36 00 39 00 2f 00 6d 00 6d 00 2e 00 65 00 78 00 65 00 } //1 http://e.thec.cn/wg369/mm.exe
		$a_01_1 = {63 00 3a 00 5c 00 63 00 2e 00 65 00 78 00 65 00 } //5 c:\c.exe
		$a_01_2 = {57 69 6e 45 78 65 63 } //5 WinExec
		$a_01_3 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //5 URLDownloadToFileA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5) >=16
 
}