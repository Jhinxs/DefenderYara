
rule VirTool_WinNT_Rootkitdrv_CW{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.CW,SIGNATURE_TYPE_PEHSTR,18 00 18 00 06 00 00 "
		
	strings :
		$a_01_0 = {89 0c 90 90 0f 20 c0 0d 00 00 01 00 0f 22 c0 c7 45 fc ff ff ff ff eb } //10
		$a_01_1 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 6e 00 74 00 6b 00 72 00 6e 00 6c 00 70 00 61 00 2e 00 65 00 78 00 65 00 } //10 \SystemRoot\system32\ntkrnlpa.exe
		$a_01_2 = {47 65 74 53 79 73 74 65 6d 44 69 72 65 63 74 6f 72 79 57 } //1 GetSystemDirectoryW
		$a_01_3 = {50 73 43 72 65 61 74 65 53 79 73 74 65 6d 54 68 72 65 61 64 } //1 PsCreateSystemThread
		$a_01_4 = {5a 77 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e } //1 ZwQuerySystemInformation
		$a_01_5 = {4b 65 53 65 72 76 69 63 65 44 65 73 63 72 69 70 74 6f 72 54 61 62 6c 65 } //1 KeServiceDescriptorTable
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=24
 
}