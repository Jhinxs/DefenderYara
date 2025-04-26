
rule HackTool_Win32_KMSActivator_A_MSR{
	meta:
		description = "HackTool:Win32/KMSActivator.A!MSR,SIGNATURE_TYPE_PEHSTR,08 00 08 00 09 00 00 "
		
	strings :
		$a_01_0 = {4b 00 4d 00 53 00 2d 00 51 00 41 00 44 00 68 00 6f 00 6f 00 6b 00 2e 00 64 00 6c 00 6c 00 } //1 KMS-QADhook.dll
		$a_01_1 = {53 00 70 00 70 00 45 00 78 00 74 00 43 00 6f 00 6d 00 4f 00 62 00 6a 00 2e 00 65 00 78 00 65 00 } //1 SppExtComObj.exe
		$a_01_2 = {53 00 70 00 70 00 45 00 78 00 74 00 43 00 6f 00 6d 00 4f 00 62 00 6a 00 48 00 6f 00 6f 00 6b 00 2e 00 64 00 6c 00 6c 00 } //1 SppExtComObjHook.dll
		$a_01_3 = {73 00 70 00 70 00 73 00 76 00 63 00 2e 00 65 00 78 00 65 00 } //1 sppsvc.exe
		$a_01_4 = {77 72 69 74 65 70 72 6f 63 65 73 73 6d 65 6d 6f 72 79 } //1 writeprocessmemory
		$a_01_5 = {53 75 73 70 65 6e 64 54 68 72 65 61 64 } //1 SuspendThread
		$a_01_6 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //1 ResumeThread
		$a_01_7 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //1 CreateToolhelp32Snapshot
		$a_01_8 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //1 VirtualAllocEx
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=8
 
}