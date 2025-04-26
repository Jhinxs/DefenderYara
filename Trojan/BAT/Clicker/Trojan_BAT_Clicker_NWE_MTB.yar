
rule Trojan_BAT_Clicker_NWE_MTB{
	meta:
		description = "Trojan:BAT/Clicker.NWE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_03_0 = {38 02 00 00 00 26 16 00 02 28 2a 00 00 0a 02 28 ?? 03 00 06 02 16 28 2f 00 00 0a 02 28 2b 00 00 0a 28 cb 00 00 0a 6f cc 00 00 0a 6f 16 00 00 0a 20 62 12 01 00 28 ?? ?? 00 06 28 84 00 00 0a 28 cd 00 00 0a 02 02 fe 06 a7 02 00 [0-01] 73 33 00 00 0a 28 34 00 00 0a 2a } //1
		$a_81_1 = {57 69 6e 64 6f 77 73 46 6f 72 6d 73 41 70 70 6c 69 63 61 74 69 6f 6e 32 35 2e 70 64 62 } //1 WindowsFormsApplication25.pdb
		$a_81_2 = {6e 73 49 43 6f 6f 6b 69 65 4d 61 6e 61 67 65 72 } //1 nsICookieManager
		$a_81_3 = {53 48 44 6f 63 56 77 } //1 SHDocVw
		$a_81_4 = {49 48 54 4d 4c 44 6f 63 75 6d 65 6e 74 } //1 IHTMLDocument
		$a_81_5 = {6d 73 68 74 6d 6c } //1 mshtml
		$a_81_6 = {49 57 65 62 42 72 6f 77 73 65 72 } //1 IWebBrowser
	condition:
		((#a_03_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}