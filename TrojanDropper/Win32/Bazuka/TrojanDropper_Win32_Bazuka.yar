
rule TrojanDropper_Win32_Bazuka{
	meta:
		description = "TrojanDropper:Win32/Bazuka,SIGNATURE_TYPE_PEHSTR,34 00 34 00 0a 00 00 "
		
	strings :
		$a_01_0 = {47 65 74 20 53 53 44 54 } //10 Get SSDT
		$a_01_1 = {53 65 72 76 69 63 65 44 6c 6c } //10 ServiceDll
		$a_01_2 = {5c 00 3f 00 3f 00 5c 00 43 00 3a 00 5c 00 } //10 \??\C:\
		$a_01_3 = {53 76 63 68 6f 73 74 2e 65 78 65 00 4b 42 39 32 38 30 32 } //10
		$a_01_4 = {25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 53 79 73 74 65 6d 33 32 5c 73 76 63 68 6f 73 74 2e 65 78 65 20 2d 6b 20 } //10 %SystemRoot%\System32\svchost.exe -k 
		$a_01_5 = {5a 77 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e } //1 ZwQuerySystemInformation
		$a_01_6 = {50 73 54 65 72 6d 69 6e 61 74 65 53 79 73 74 65 6d 54 68 72 65 61 64 } //1 PsTerminateSystemThread
		$a_01_7 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
		$a_01_8 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //1 InternetReadFile
		$a_01_9 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //1 SeDebugPrivilege
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*10+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=52
 
}