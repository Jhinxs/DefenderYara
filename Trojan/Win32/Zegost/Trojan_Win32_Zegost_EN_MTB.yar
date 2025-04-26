
rule Trojan_Win32_Zegost_EN_MTB{
	meta:
		description = "Trojan:Win32/Zegost.EN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_01_0 = {74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 69 6d 20 69 70 61 69 70 32 2e 65 78 65 } //1 taskkill /f /im ipaip2.exe
		$a_01_1 = {2f 63 20 72 6d 64 69 72 20 2f 73 20 2f 71 } //1 /c rmdir /s /q
		$a_01_2 = {49 6e 74 65 72 6e 65 74 43 68 65 63 6b 43 6f 6e 6e 65 63 74 69 6f 6e 41 } //1 InternetCheckConnectionA
		$a_01_3 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
		$a_01_4 = {5b 44 6f 77 6e 5d } //1 [Down]
		$a_01_5 = {5b 52 69 67 68 74 5d } //1 [Right]
		$a_01_6 = {5b 4c 65 66 74 5d } //1 [Left]
		$a_01_7 = {53 65 61 2e 57 6f 72 6b 69 6e 67 2e 4d 6f 75 } //1 Sea.Working.Mou
		$a_01_8 = {4f 75 74 70 6f 73 74 20 46 69 72 65 77 61 6c 6c } //1 Outpost Firewall
		$a_01_9 = {54 72 6f 6a 61 6e 48 75 6e 74 65 72 2e 65 78 65 } //1 TrojanHunter.exe
		$a_01_10 = {4b 53 57 65 62 53 68 69 65 6c 64 2e 65 78 65 } //1 KSWebShield.exe
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=11
 
}