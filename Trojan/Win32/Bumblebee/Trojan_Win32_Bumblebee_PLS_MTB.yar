
rule Trojan_Win32_Bumblebee_PLS_MTB{
	meta:
		description = "Trojan:Win32/Bumblebee.PLS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0f 00 00 "
		
	strings :
		$a_01_0 = {63 68 74 61 73 6b 73 2e 65 78 65 20 2f 46 20 2f 63 72 65 61 74 65 20 2f 73 63 20 6d 69 6e 75 74 65 20 2f 6d 6f 20 34 20 2f 54 4e 20 22 00 00 2f 53 54 20 30 34 3a 30 30 20 2f 54 52 20 22 77 73 63 72 69 70 74 20 2f 6e 6f 6c 6f 67 6f 20 00 41 64 76 61 70 69 } //1
		$a_01_1 = {5c 5c 2e 5c 70 69 70 65 5c 62 6f 6f 73 74 5f 70 72 6f 63 65 73 73 5f 61 75 74 6f 5f 70 69 70 65 } //1 \\.\pipe\boost_process_auto_pipe
		$a_01_2 = {5a 77 50 72 6f 74 65 63 74 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 } //1 ZwProtectVirtualMemory
		$a_01_3 = {64 61 74 61 43 68 65 63 6b } //1 dataCheck
		$a_01_4 = {73 65 74 50 61 74 68 } //1 setPath
		$a_01_5 = {5a 77 41 6c 6c 6f 63 61 74 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 } //1 ZwAllocateVirtualMemory
		$a_01_6 = {5a 77 57 72 69 74 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 } //1 ZwWriteVirtualMemory
		$a_01_7 = {5a 77 52 65 61 64 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 } //1 ZwReadVirtualMemory
		$a_01_8 = {5a 77 47 65 74 43 6f 6e 74 65 78 74 54 68 72 65 61 64 } //1 ZwGetContextThread
		$a_01_9 = {63 6c 69 65 6e 74 5f 69 64 } //1 client_id
		$a_01_10 = {67 72 6f 75 70 5f 6e 61 6d 65 } //1 group_name
		$a_01_11 = {73 79 73 5f 76 65 72 73 69 6f 6e } //1 sys_version
		$a_01_12 = {63 6c 69 65 6e 74 5f 76 65 72 73 69 6f 6e } //1 client_version
		$a_01_13 = {74 61 73 6b 5f 73 74 61 74 65 } //1 task_state
		$a_01_14 = {74 61 73 6b 5f 72 65 73 75 6c 74 } //1 task_result
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1) >=15
 
}