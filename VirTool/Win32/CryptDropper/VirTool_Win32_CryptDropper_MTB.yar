
rule VirTool_Win32_CryptDropper_MTB{
	meta:
		description = "VirTool:Win32/CryptDropper!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0e 00 00 "
		
	strings :
		$a_01_0 = {62 73 65 61 72 63 68 } //1 bsearch
		$a_01_1 = {71 73 6f 72 74 } //1 qsort
		$a_01_2 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //1 VirtualAlloc
		$a_01_3 = {56 69 72 74 75 61 6c 46 72 65 65 } //1 VirtualFree
		$a_01_4 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //1 VirtualProtect
		$a_01_5 = {56 69 72 74 75 61 6c 51 75 65 72 79 } //1 VirtualQuery
		$a_01_6 = {6f 00 6b 00 65 00 72 00 6e 00 65 00 6c 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 } //1 okernel32.dll
		$a_01_7 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
		$a_01_8 = {47 65 74 43 75 72 72 65 6e 74 50 72 6f 63 65 73 73 } //1 GetCurrentProcess
		$a_01_9 = {54 65 72 6d 69 6e 61 74 65 50 72 6f 63 65 73 73 } //1 TerminateProcess
		$a_01_10 = {53 65 74 46 69 6c 65 50 6f 69 6e 74 65 72 45 78 } //1 SetFilePointerEx
		$a_01_11 = {44 65 63 6f 64 65 50 6f 69 6e 74 65 72 } //1 DecodePointer
		$a_01_12 = {51 6b 6b 62 61 6c } //1 Qkkbal
		$a_01_13 = {53 00 48 00 45 00 4c 00 4c 00 43 00 4f 00 44 00 45 00 45 00 58 00 45 00 43 00 55 00 54 00 45 00 } //1 SHELLCODEEXECUTE
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1) >=14
 
}