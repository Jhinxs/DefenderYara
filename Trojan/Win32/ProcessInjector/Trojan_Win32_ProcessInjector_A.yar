
rule Trojan_Win32_ProcessInjector_A{
	meta:
		description = "Trojan:Win32/ProcessInjector.A,SIGNATURE_TYPE_PEHSTR_EXT,09 00 07 00 0b 00 00 "
		
	strings :
		$a_01_0 = {5b 2a 5d 20 52 75 6e 6e 69 6e 67 20 74 68 65 20 74 61 72 67 65 74 20 65 78 65 63 75 74 61 62 6c 65 } //1 [*] Running the target executable
		$a_01_1 = {5b 2a 5d 20 50 72 6f 63 65 73 73 20 63 72 65 61 74 65 64 20 69 6e 20 73 75 73 70 65 6e 64 65 64 20 73 74 61 74 65 } //1 [*] Process created in suspended state
		$a_01_2 = {5b 2a 5d 20 4d 65 6d 6f 72 79 20 75 6e 6d 61 70 70 65 64 20 66 72 6f 6d 20 63 68 69 6c 64 20 70 72 6f 63 65 73 73 21 } //1 [*] Memory unmapped from child process!
		$a_01_3 = {5b 2a 5d 20 41 6c 6c 6f 63 61 74 69 6e 67 20 52 57 58 20 6d 65 6d 6f 72 79 20 69 6e 20 63 68 69 6c 64 20 70 72 6f 63 65 73 73 } //1 [*] Allocating RWX memory in child process
		$a_01_4 = {5b 2a 5d 20 57 72 69 74 69 6e 67 20 65 78 65 63 75 74 61 62 6c 65 20 69 6d 61 67 65 20 69 6e 74 6f 20 63 68 69 6c 64 20 70 72 6f 63 65 73 73 } //1 [*] Writing executable image into child process
		$a_01_5 = {5b 2a 5d 20 53 65 74 74 69 6e 67 20 74 68 65 20 63 6f 6e 74 65 78 74 20 6f 66 20 74 68 65 20 63 68 69 6c 64 20 70 72 6f 63 65 73 73 27 73 20 70 72 69 6d 61 72 79 20 74 68 72 65 61 64 } //1 [*] Setting the context of the child process's primary thread
		$a_01_6 = {5b 2a 5d 20 54 68 72 65 61 64 20 72 65 73 75 6d 65 64 } //1 [*] Thread resumed
		$a_01_7 = {4e 74 53 65 74 43 6f 6e 74 65 78 74 54 68 72 65 61 64 } //1 NtSetContextThread
		$a_01_8 = {4e 74 57 72 69 74 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 } //1 NtWriteVirtualMemory
		$a_01_9 = {4e 74 55 6e 6d 61 70 56 69 65 77 4f 66 53 65 63 74 69 6f 6e } //1 NtUnmapViewOfSection
		$a_01_10 = {4e 74 52 65 73 75 6d 65 54 68 72 65 61 64 } //1 NtResumeThread
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=7
 
}