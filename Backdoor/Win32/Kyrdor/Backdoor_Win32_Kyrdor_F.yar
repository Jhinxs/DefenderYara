
rule Backdoor_Win32_Kyrdor_F{
	meta:
		description = "Backdoor:Win32/Kyrdor.F,SIGNATURE_TYPE_PEHSTR_EXT,28 00 27 00 0a 00 00 "
		
	strings :
		$a_02_0 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c [0-08] 2e 65 78 65 } //10
		$a_02_1 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c [0-08] 2e 64 6c 6c } //10
		$a_00_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 53 68 65 6c 6c 53 65 72 76 69 63 65 4f 62 6a 65 63 74 44 65 6c 61 79 4c 6f 61 64 } //10 Software\Microsoft\Windows\CurrentVersion\ShellServiceObjectDelayLoad
		$a_00_3 = {57 69 6e 45 78 65 63 } //5 WinExec
		$a_00_4 = {70 68 66 6b 74 2e 64 6c 6c } //2 phfkt.dll
		$a_00_5 = {64 6f 66 63 6b 74 2e 64 6c 6c } //2 dofckt.dll
		$a_00_6 = {72 64 73 68 6f 73 74 2e 64 6c 6c } //1 rdshost.dll
		$a_00_7 = {72 64 73 68 6f 73 74 32 2e 64 6c 6c } //1 rdshost2.dll
		$a_00_8 = {72 64 73 73 72 76 2e 65 78 65 } //1 rdssrv.exe
		$a_00_9 = {72 64 73 73 72 76 32 2e 65 78 65 } //1 rdssrv2.exe
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*5+(#a_00_4  & 1)*2+(#a_00_5  & 1)*2+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1) >=39
 
}