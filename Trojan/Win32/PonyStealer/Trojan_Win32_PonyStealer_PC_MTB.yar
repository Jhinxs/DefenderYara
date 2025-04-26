
rule Trojan_Win32_PonyStealer_PC_MTB{
	meta:
		description = "Trojan:Win32/PonyStealer.PC!MTB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {63 00 68 00 72 00 6f 00 6d 00 65 00 2e 00 65 00 78 00 65 00 } //1 chrome.exe
		$a_01_1 = {47 00 6f 00 6f 00 67 00 6c 00 65 00 20 00 43 00 68 00 72 00 6f 00 6d 00 65 00 } //1 Google Chrome
		$a_01_2 = {55 00 6e 00 73 00 68 00 61 00 72 00 61 00 62 00 6c 00 65 00 } //1 Unsharable
		$a_01_3 = {45 6e 74 6f 73 63 6c 65 72 69 74 65 30 } //1 Entosclerite0
		$a_01_4 = {47 61 73 74 65 72 6f 73 74 65 69 64 38 } //1 Gasterosteid8
		$a_01_5 = {76 62 34 70 72 6f 6a 65 63 74 56 62 } //1 vb4projectVb
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}