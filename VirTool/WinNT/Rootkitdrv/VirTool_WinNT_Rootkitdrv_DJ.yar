
rule VirTool_WinNT_Rootkitdrv_DJ{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.DJ,SIGNATURE_TYPE_PEHSTR,21 00 21 00 07 00 00 "
		
	strings :
		$a_01_0 = {77 69 6e 68 65 6c 70 33 32 2e 65 78 65 } //10 winhelp32.exe
		$a_01_1 = {5c 69 33 38 36 5c 56 49 44 45 4f 2e 70 64 62 } //10 \i386\VIDEO.pdb
		$a_01_2 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 77 00 65 00 62 00 6d 00 69 00 6e 00 5c 00 56 00 49 00 44 00 45 00 4f 00 2e 00 73 00 79 00 73 00 } //10 \SystemRoot\system32\webmin\VIDEO.sys
		$a_01_3 = {5a 77 51 75 65 72 79 44 69 72 65 63 74 6f 72 79 46 69 6c 65 } //1 ZwQueryDirectoryFile
		$a_01_4 = {50 73 54 65 72 6d 69 6e 61 74 65 53 79 73 74 65 6d 54 68 72 65 61 64 } //1 PsTerminateSystemThread
		$a_01_5 = {5a 77 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e } //1 ZwQuerySystemInformation
		$a_01_6 = {50 73 4c 6f 6f 6b 75 70 50 72 6f 63 65 73 73 42 79 50 72 6f 63 65 73 73 49 64 } //1 PsLookupProcessByProcessId
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=33
 
}