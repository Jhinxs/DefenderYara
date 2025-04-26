
rule TrojanDownloader_Win32_Delf_DE{
	meta:
		description = "TrojanDownloader:Win32/Delf.DE,SIGNATURE_TYPE_PEHSTR,0c 00 0c 00 07 00 00 "
		
	strings :
		$a_01_0 = {45 78 65 4d 75 74 65 78 5f 68 61 63 6b 65 72 } //10 ExeMutex_hacker
		$a_01_1 = {44 6c 6c 4d 75 74 65 78 5f 68 61 63 6b 65 72 } //10 DllMutex_hacker
		$a_01_2 = {4a 75 6d 70 48 6f 6f 6b } //1 JumpHook
		$a_01_3 = {73 79 73 74 65 6d 5c 69 6e 69 2e 69 6e 69 } //1 system\ini.ini
		$a_01_4 = {63 6d 64 20 2f 63 20 73 63 2e 65 78 65 20 64 65 6c 65 74 65 } //1 cmd /c sc.exe delete
		$a_01_5 = {25 73 79 73 74 65 6d 72 6f 6f 74 25 5c 73 79 73 74 65 6d 5c 73 76 63 68 6f 73 74 2e 65 78 65 } //1 %systemroot%\system\svchost.exe
		$a_01_6 = {5c 73 79 73 74 65 6d 5c 73 76 63 68 6f 73 74 2e 76 62 73 } //1 \system\svchost.vbs
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=12
 
}