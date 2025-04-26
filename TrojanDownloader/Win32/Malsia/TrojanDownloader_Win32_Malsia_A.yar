
rule TrojanDownloader_Win32_Malsia_A{
	meta:
		description = "TrojanDownloader:Win32/Malsia.A,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {4d 53 56 43 50 36 30 2e 64 6c 6c } //1 MSVCP60.dll
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_2 = {6d 61 6c 61 79 73 69 61 2e 62 62 63 63 64 64 65 65 66 66 67 67 2e 63 6f 6d } //1 malaysia.bbccddeeffgg.com
		$a_01_3 = {70 70 6c 31 2e 63 6d 6e } //1 ppl1.cmn
		$a_01_4 = {53 6f 66 74 77 61 72 65 5c 6d 61 6c 61 79 73 69 61 } //1 Software\malaysia
		$a_01_5 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
		$a_01_6 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
		$a_01_7 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //1 InternetReadFile
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}