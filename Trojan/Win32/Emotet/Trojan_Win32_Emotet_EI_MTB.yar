
rule Trojan_Win32_Emotet_EI_MTB{
	meta:
		description = "Trojan:Win32/Emotet.EI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 0b 00 00 "
		
	strings :
		$a_00_0 = {8b 16 8d 49 04 33 55 08 8d 76 04 88 51 fc 8b c2 c1 e8 08 47 c1 ea 10 88 41 fd 88 51 fe c1 ea 08 88 51 ff 3b fb 72 } //10
		$a_81_1 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
		$a_81_2 = {52 61 69 73 65 45 78 63 65 70 74 69 6f 6e } //1 RaiseException
		$a_81_3 = {43 72 65 61 74 65 46 69 6c 65 57 } //1 CreateFileW
		$a_81_4 = {43 72 65 61 74 65 46 69 6c 65 4d 61 70 70 69 6e 67 57 } //1 CreateFileMappingW
		$a_81_5 = {4d 61 70 56 69 65 77 4f 66 46 69 6c 65 } //1 MapViewOfFile
		$a_81_6 = {47 65 74 46 69 6c 65 53 69 7a 65 } //1 GetFileSize
		$a_81_7 = {57 72 69 74 65 46 69 6c 65 } //1 WriteFile
		$a_81_8 = {55 6e 6d 61 70 56 69 65 77 4f 66 46 69 6c 65 } //1 UnmapViewOfFile
		$a_81_9 = {43 6c 6f 73 65 48 61 6e 64 6c 65 } //1 CloseHandle
		$a_81_10 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 57 } //1 CreateProcessW
	condition:
		((#a_00_0  & 1)*10+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1) >=16
 
}