
rule Trojan_Win32_Ursnif_W_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.W!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {49 6e 6a 65 63 74 65 64 } //1 Injected
		$a_01_1 = {43 4d 44 2e 45 58 45 } //1 CMD.EXE
		$a_01_2 = {52 65 6d 6f 74 65 20 54 68 72 65 61 64 20 49 44 3a 20 25 75 } //1 Remote Thread ID: %u
		$a_01_3 = {46 61 69 6c 65 64 20 74 6f 20 67 61 74 68 65 72 20 69 6e 66 6f 72 6d 61 74 69 6f 6e 20 6f 6e 20 73 79 73 74 65 6d 20 70 72 6f 63 65 73 73 65 73 } //1 Failed to gather information on system processes
		$a_01_4 = {43 68 65 63 6b 69 6e 67 20 70 72 6f 63 65 73 73 20 25 6c 73 } //1 Checking process %ls
		$a_01_5 = {66 69 72 65 66 6f 78 2e 65 78 65 } //1 firefox.exe
		$a_01_6 = {54 6f 75 63 68 65 64 20 41 20 4e 65 69 67 68 62 6f 75 72 20 25 64 20 77 69 74 68 20 25 64 2e 20 52 65 73 75 6d 69 6e 67 20 61 20 74 68 72 65 61 64 20 77 69 74 68 20 49 44 3a 20 25 64 } //1 Touched A Neighbour %d with %d. Resuming a thread with ID: %d
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}