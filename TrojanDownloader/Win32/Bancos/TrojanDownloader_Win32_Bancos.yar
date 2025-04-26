
rule TrojanDownloader_Win32_Bancos{
	meta:
		description = "TrojanDownloader:Win32/Bancos,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_01_1 = {69 6d 70 72 65 73 73 69 6f 6e 73 2e 63 7a } //1 impressions.cz
		$a_01_2 = {74 65 61 6d 6f 63 72 61 7a 79 2e 78 70 67 2e 63 6f 6d 2e 62 72 2f 6c 69 6e 6b 73 2f 70 68 61 72 6d 2e 74 78 74 } //1 teamocrazy.xpg.com.br/links/pharm.txt
		$a_01_3 = {74 65 61 6d 6f 63 72 61 7a 79 2e 78 70 67 2e 63 6f 6d 2e 62 72 2f 6c 69 6e 6b 73 2f 77 6f 72 6d 2e 74 78 74 } //1 teamocrazy.xpg.com.br/links/worm.txt
		$a_01_4 = {6d 73 6e 6d 73 67 72 72 2e 65 78 65 } //1 msnmsgrr.exe
		$a_01_5 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_6 = {67 65 74 68 6f 73 74 62 79 6e 61 6d 65 } //1 gethostbyname
		$a_01_7 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
		$a_01_8 = {4f 70 65 6e 53 43 4d 61 6e 61 67 65 72 41 } //1 OpenSCManagerA
		$a_01_9 = {43 72 65 61 74 65 53 65 72 76 69 63 65 41 } //1 CreateServiceA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}