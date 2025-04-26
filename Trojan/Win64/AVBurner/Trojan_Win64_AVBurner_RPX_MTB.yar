
rule Trojan_Win64_AVBurner_RPX_MTB{
	meta:
		description = "Trojan:Win64/AVBurner.RPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1f 00 0d 00 00 "
		
	strings :
		$a_01_0 = {5c 00 5c 00 2e 00 5c 00 52 00 54 00 43 00 4f 00 52 00 45 00 36 00 34 00 } //10 \\.\RTCORE64
		$a_01_1 = {6e 00 74 00 6f 00 73 00 6b 00 72 00 6e 00 6c 00 2e 00 65 00 78 00 65 00 } //1 ntoskrnl.exe
		$a_01_2 = {74 00 65 00 73 00 74 00 78 00 78 00 78 00 78 00 } //1 testxxxx
		$a_01_3 = {50 73 53 65 74 43 72 65 61 74 65 50 72 6f 63 65 73 73 4e 6f 74 69 66 79 52 6f 75 74 69 6e 65 } //1 PsSetCreateProcessNotifyRoutine
		$a_01_4 = {49 6f 43 72 65 61 74 65 44 72 69 76 65 72 } //1 IoCreateDriver
		$a_01_5 = {50 73 52 65 6d 6f 76 65 4c 6f 61 64 49 6d 61 67 65 4e 6f 74 69 66 79 52 6f 75 74 69 6e 65 } //1 PsRemoveLoadImageNotifyRoutine
		$a_01_6 = {4e 74 46 69 6e 64 41 74 6f 6d } //1 NtFindAtom
		$a_01_7 = {4b 65 52 65 67 69 73 74 65 72 50 72 6f 63 65 73 73 6f 72 43 68 61 6e 67 65 43 61 6c 6c 62 61 63 6b } //1 KeRegisterProcessorChangeCallback
		$a_01_8 = {49 6d 70 65 72 73 6f 6e 61 74 65 4e 61 6d 65 64 50 69 70 65 43 6c 69 65 6e 74 } //1 ImpersonateNamedPipeClient
		$a_01_9 = {77 73 70 72 69 6e 74 66 57 } //1 wsprintfW
		$a_01_10 = {4b 33 32 47 65 74 44 65 76 69 63 65 44 72 69 76 65 72 46 69 6c 65 4e 61 6d 65 57 } //1 K32GetDeviceDriverFileNameW
		$a_01_11 = {57 61 69 74 46 6f 72 53 69 6e 67 6c 65 4f 62 6a 65 63 74 } //1 WaitForSingleObject
		$a_01_12 = {41 b9 30 00 00 00 48 89 44 24 20 ba 48 20 00 80 4c 89 65 cf 49 8b cf 4c 89 65 df f3 0f 7f 45 eb 44 89 65 fb 48 89 7d d7 c7 45 e7 04 00 00 00 ff 15 } //10
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*10) >=31
 
}