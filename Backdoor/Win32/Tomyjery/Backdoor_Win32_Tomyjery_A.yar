
rule Backdoor_Win32_Tomyjery_A{
	meta:
		description = "Backdoor:Win32/Tomyjery.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 "
		
	strings :
		$a_01_0 = {54 6f 6d 26 4a 65 72 72 79 40 31 34 68 65 72 65 } //3 Tom&Jerry@14here
		$a_01_1 = {25 73 5c 48 54 54 50 44 4c 4c 2e 64 6c 6c } //2 %s\HTTPDLL.dll
		$a_01_2 = {25 73 5c 63 6f 6e 76 65 72 74 73 2e 64 6c 6c } //2 %s\converts.dll
		$a_01_3 = {25 73 5c 6c 6f 67 73 5c 6c 6f 67 73 2d 25 } //2 %s\logs\logs-%
		$a_01_4 = {48 6f 73 74 4e 61 6d 65 3d 25 73 } //1 HostName=%s
		$a_01_5 = {44 65 63 6f 64 65 73 3d 25 64 } //1 Decodes=%d
		$a_01_6 = {44 6f 77 6e 6c 6f 61 64 55 52 4c 54 68 72 65 61 64 20 66 61 69 6c 65 64 20 69 6e 20 57 6f 72 6b 65 72 54 68 72 65 61 64 } //1 DownloadURLThread failed in WorkerThread
		$a_01_7 = {45 78 63 75 74 65 43 6d 64 54 68 72 65 61 64 20 66 61 69 6c 65 64 20 69 6e 20 57 6f 72 6b 65 72 54 68 72 65 61 64 } //1 ExcuteCmdThread failed in WorkerThread
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=7
 
}