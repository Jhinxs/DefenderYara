
rule TrojanDownloader_Win32_Sbrows_A{
	meta:
		description = "TrojanDownloader:Win32/Sbrows.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {41 6e 79 47 72 61 79 53 65 73 73 69 6f 6e } //1 AnyGraySession
		$a_01_1 = {43 57 65 62 42 72 6f 77 73 65 72 32 } //1 CWebBrowser2
		$a_01_2 = {2e 70 68 70 3f 6d 61 63 3d } //1 .php?mac=
		$a_01_3 = {3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 73 62 72 6f 77 73 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}