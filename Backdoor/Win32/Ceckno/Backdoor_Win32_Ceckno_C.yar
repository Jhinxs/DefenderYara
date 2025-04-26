
rule Backdoor_Win32_Ceckno_C{
	meta:
		description = "Backdoor:Win32/Ceckno.C,SIGNATURE_TYPE_PEHSTR,19 00 19 00 07 00 00 "
		
	strings :
		$a_01_0 = {66 6c 6f 6f 64 } //10 flood
		$a_01_1 = {73 74 6f 70 61 74 74 61 63 6b } //10 stopattack
		$a_01_2 = {5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 77 6d 69 70 72 76 78 65 2e 65 78 65 } //1 \WINDOWS\SYSTEM32\wmiprvxe.exe
		$a_01_3 = {5c 73 79 73 74 65 6d 33 32 5c 63 6d 64 2e 65 78 65 20 2f 63 20 20 64 65 6c 20 43 3a 5c 6d 79 61 70 70 2e 65 78 65 20 3e 20 6e 75 6c } //1 \system32\cmd.exe /c  del C:\myapp.exe > nul
		$a_01_4 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //1 CreateRemoteThread
		$a_01_5 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
		$a_01_6 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=25
 
}