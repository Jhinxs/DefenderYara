
rule Ransom_MSIL_LokiLock_AA_MTB{
	meta:
		description = "Ransom:MSIL/LokiLock.AA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {70 00 61 00 79 00 6c 00 6f 00 61 00 64 00 } //1 payload
		$a_01_1 = {4c 6f 6b 69 2e 50 61 79 6c 6f 61 64 2e 64 6c 6c } //1 Loki.Payload.dll
		$a_01_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4c 00 6f 00 6b 00 69 00 } //1 SOFTWARE\Loki
		$a_01_3 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 } //1 CreateProcess
		$a_01_4 = {4e 74 55 6e 6d 61 70 56 69 65 77 4f 66 53 65 63 74 69 6f 6e } //1 NtUnmapViewOfSection
		$a_01_5 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //1 VirtualAllocEx
		$a_01_6 = {4e 74 57 72 69 74 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 } //1 NtWriteVirtualMemory
		$a_01_7 = {4e 74 47 65 74 43 6f 6e 74 65 78 74 54 68 72 65 61 64 } //1 NtGetContextThread
		$a_01_8 = {4e 74 53 65 74 43 6f 6e 74 65 78 74 54 68 72 65 61 64 } //1 NtSetContextThread
		$a_01_9 = {4e 74 52 65 73 75 6d 65 54 68 72 65 61 64 } //1 NtResumeThread
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}