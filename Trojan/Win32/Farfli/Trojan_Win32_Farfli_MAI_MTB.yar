
rule Trojan_Win32_Farfli_MAI_MTB{
	meta:
		description = "Trojan:Win32/Farfli.MAI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_03_0 = {8d 45 ec 89 65 f0 33 ff 50 c7 45 ec 02 00 00 80 8b 4d ec 6a 01 57 68 ?? ?? ?? ?? 51 89 7d e0 89 7d c8 89 7d e4 89 7d e8 89 7d fc ff 15 } //1
		$a_03_1 = {81 ec 08 01 00 00 8b 8c 24 0c 01 00 00 56 57 8d 44 24 0c 68 04 01 00 00 50 51 c7 44 24 14 00 00 00 00 ff 15 ?? ?? ?? ?? 6a 00 6a 00 6a 03 6a 00 6a 01 8d 54 24 20 68 00 00 00 80 52 ff 15 } //1
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 53 76 63 68 6f 73 74 } //1 SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost
		$a_01_3 = {47 68 30 73 74 20 55 70 64 61 74 65 } //1 Gh0st Update
		$a_01_4 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //1 ResumeThread
		$a_01_5 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
		$a_01_6 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //1 CreateToolhelp32Snapshot
		$a_01_7 = {6b 65 79 62 64 5f 65 76 65 6e 74 } //1 keybd_event
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}