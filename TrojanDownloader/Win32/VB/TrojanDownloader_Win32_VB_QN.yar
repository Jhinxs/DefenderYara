
rule TrojanDownloader_Win32_VB_QN{
	meta:
		description = "TrojanDownloader:Win32/VB.QN,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {5c 00 45 00 74 00 68 00 65 00 6d 00 5c 00 42 00 75 00 72 00 65 00 61 00 75 00 62 00 6c 00 61 00 64 00 5c 00 4e 00 69 00 65 00 75 00 77 00 65 00 20 00 6d 00 61 00 70 00 [0-20] 2e 00 76 00 62 00 70 00 } //1
		$a_00_1 = {77 00 77 00 77 00 2e 00 69 00 7a 00 6c 00 65 00 78 00 2e 00 6f 00 72 00 67 00 2f 00 } //1 www.izlex.org/
		$a_00_2 = {73 00 76 00 73 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //1 svshost.exe
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}