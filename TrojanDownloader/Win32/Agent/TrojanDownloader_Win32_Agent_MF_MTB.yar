
rule TrojanDownloader_Win32_Agent_MF_MTB{
	meta:
		description = "TrojanDownloader:Win32/Agent.MF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_03_0 = {57 56 8b 74 24 10 8b 4c 24 14 8b 7c 24 0c 8b c1 8b d1 03 c6 3b fe ?? 08 3b f8 0f 82 ?? ?? ?? ?? 0f ba 25 ?? ?? ?? ?? 01 73 ?? f3 a4 e9 } //1
		$a_03_1 = {66 39 11 74 ?? 40 83 c1 02 3b 45 0c 72 } //1
		$a_81_2 = {53 65 63 75 72 69 74 79 48 65 61 6c 74 68 2e 65 78 65 } //1 SecurityHealth.exe
		$a_81_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_81_4 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //1 CreateToolhelp32Snapshot
		$a_81_5 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 } //1 URLDownloadToFile
		$a_81_6 = {57 72 69 74 65 46 69 6c 65 } //1 WriteFile
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}