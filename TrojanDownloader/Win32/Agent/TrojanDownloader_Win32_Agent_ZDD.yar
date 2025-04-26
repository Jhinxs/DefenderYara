
rule TrojanDownloader_Win32_Agent_ZDD{
	meta:
		description = "TrojanDownloader:Win32/Agent.ZDD,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 74 00 63 00 73 00 76 00 63 00 2e 00 73 00 79 00 73 00 } //1 system32\tcsvc.sys
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 6a 00 61 00 6a 00 61 00 61 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 69 00 70 00 2e 00 61 00 73 00 70 00 } //1 http://www.jajaan.com/ip.asp
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {67 00 67 00 2f 00 67 00 67 00 2e 00 61 00 73 00 70 00 } //1 gg/gg.asp
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}