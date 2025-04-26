
rule TrojanDownloader_Win32_Agent_WW{
	meta:
		description = "TrojanDownloader:Win32/Agent.WW,SIGNATURE_TYPE_PEHSTR_EXT,11 00 10 00 12 00 00 "
		
	strings :
		$a_00_0 = {68 74 74 70 3a 2f 2f 74 6f 6f 6c 62 61 72 70 61 72 74 6e 65 72 2e 63 6f 6d } //1 http://toolbarpartner.com
		$a_00_1 = {2f 69 6e 73 74 61 6c 6c 65 64 2e 70 68 70 3f 77 6d 3d } //1 /installed.php?wm=
		$a_00_2 = {2f 70 72 6f 67 72 61 6d 73 2e 74 78 74 } //1 /programs.txt
		$a_00_3 = {68 74 74 70 3a 2f 2f 73 74 75 72 66 61 6a 74 6e 2e 63 6f 6d } //1 http://sturfajtn.com
		$a_00_4 = {2f 77 2e 70 68 70 } //1 /w.php
		$a_00_5 = {2f 6c 6f 61 64 2e 74 78 74 } //1 /load.txt
		$a_00_6 = {25 57 49 4e 44 49 52 25 5c 53 79 73 74 65 6d 33 32 5c 24 24 24 } //1 %WINDIR%\System32\$$$
		$a_00_7 = {72 65 67 73 76 72 33 32 20 2f 73 } //1 regsvr32 /s
		$a_00_8 = {25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 73 79 73 } //1 %SystemRoot%\sys
		$a_00_9 = {25 69 25 69 2e 64 6c 6c } //1 %i%i.dll
		$a_00_10 = {25 69 25 69 2e 65 78 65 } //1 %i%i.exe
		$a_00_11 = {45 78 70 6c 6f 72 65 72 2e 65 78 65 20 } //1 Explorer.exe 
		$a_00_12 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e } //1 SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
		$a_00_13 = {25 57 49 4e 44 49 52 25 5c 53 79 73 74 65 6d 33 32 5c } //1 %WINDIR%\System32\
		$a_01_14 = {49 6e 74 65 72 6e 65 74 43 6c 6f 73 65 48 61 6e 64 6c 65 } //1 InternetCloseHandle
		$a_01_15 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 41 } //1 InternetOpenA
		$a_01_16 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1 InternetOpenUrlA
		$a_01_17 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //1 InternetReadFile
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1+(#a_00_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1) >=16
 
}