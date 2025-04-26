
rule TrojanDownloader_Win32_Pwrhack_A{
	meta:
		description = "TrojanDownloader:Win32/Pwrhack.A,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {6c 65 63 2e 6e 65 76 79 73 65 61 72 63 68 2e 63 6f 6d 2f 70 72 6f 63 65 73 73 2f 75 73 65 5f 63 6e 74 2e 70 68 70 3f 6d 61 63 3d 41 41 2d 41 41 2d 41 41 2d 41 41 2d 41 41 2d 41 41 } //1 lec.nevysearch.com/process/use_cnt.php?mac=AA-AA-AA-AA-AA-AA
		$a_01_1 = {75 70 31 2e 61 64 6c 61 79 2e 6e 65 74 } //1 up1.adlay.net
		$a_01_2 = {50 6f 77 65 72 48 61 63 6b 65 72 5f 43 68 61 72 6d 2e 64 6c 6c } //1 PowerHacker_Charm.dll
		$a_01_3 = {50 6f 77 65 72 48 61 63 6b 65 72 2e 69 6e 69 } //1 PowerHacker.ini
		$a_01_4 = {57 69 6e 73 70 73 73 2e 65 78 65 } //1 Winspss.exe
		$a_01_5 = {70 73 6a 6d 2e 64 6c 6c } //1 psjm.dll
		$a_01_6 = {5c 73 79 73 74 65 6d 33 32 5c 72 65 67 73 76 72 33 32 2e 65 78 65 20 2f 73 20 70 73 6a 6d 2e 64 6c 6c } //1 \system32\regsvr32.exe /s psjm.dll
		$a_01_7 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}