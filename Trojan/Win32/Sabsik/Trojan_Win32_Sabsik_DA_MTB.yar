
rule Trojan_Win32_Sabsik_DA_MTB{
	meta:
		description = "Trojan:Win32/Sabsik.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 0a 00 00 "
		
	strings :
		$a_81_0 = {43 6f 70 79 4c 69 63 6b 3f 20 53 79 73 74 65 6d } //10 CopyLick? System
		$a_81_1 = {44 69 73 70 6c 61 79 2e 4e 76 43 6f 6e 74 61 69 6e 65 72 } //10 Display.NvContainer
		$a_81_2 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //1 CreateToolhelp32Snapshot
		$a_81_3 = {41 55 54 4f 49 54 20 4e 4f 20 43 4d 44 45 58 45 43 55 54 45 } //1 AUTOIT NO CMDEXECUTE
		$a_81_4 = {4d 75 6c 74 69 42 79 74 65 54 6f 57 69 64 65 43 68 61 72 } //1 MultiByteToWideChar
		$a_81_5 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
		$a_81_6 = {47 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //1 GetClipboardData
		$a_81_7 = {53 77 61 70 4d 6f 75 73 65 42 75 74 74 6f 6e 73 } //1 SwapMouseButtons
		$a_81_8 = {41 56 74 79 70 65 5f 69 6e 66 6f } //1 AVtype_info
		$a_81_9 = {47 65 74 43 50 49 6e 66 6f } //1 GetCPInfo
	condition:
		((#a_81_0  & 1)*10+(#a_81_1  & 1)*10+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1) >=18
 
}