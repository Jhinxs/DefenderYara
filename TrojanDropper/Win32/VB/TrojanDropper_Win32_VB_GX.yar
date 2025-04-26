
rule TrojanDropper_Win32_VB_GX{
	meta:
		description = "TrojanDropper:Win32/VB.GX,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {2a 00 5c 00 41 00 58 00 3a 00 5c 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 73 00 5c 00 48 00 6f 00 6d 00 65 00 20 00 31 00 2e 00 35 00 20 00 78 00 5c 00 64 00 61 00 74 00 61 00 5c 00 74 00 65 00 73 00 74 00 2e 00 76 00 62 00 70 00 } //1 *\AX:\Computers\Home 1.5 x\data\test.vbp
		$a_00_1 = {52 74 6c 44 65 63 6f 6d 70 72 65 73 73 42 75 66 66 65 72 } //1 RtlDecompressBuffer
		$a_00_2 = {52 74 6c 47 65 74 43 6f 6d 70 72 65 73 73 69 6f 6e 57 6f 72 6b 53 70 61 63 65 53 69 7a 65 } //1 RtlGetCompressionWorkSpaceSize
		$a_00_3 = {4e 74 41 6c 6c 6f 63 61 74 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 } //1 NtAllocateVirtualMemory
		$a_00_4 = {00 61 70 70 6c 69 63 61 74 69 6f 6e 00 09 00 00 00 6b 65 72 6e 65 6c 33 32 00 } //1
		$a_00_5 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 4d 69 63 72 6f 73 6f 66 74 20 56 69 73 75 61 6c 20 53 74 75 64 69 6f 5c 56 42 39 38 5c 56 42 36 2e 4f 4c 42 } //1 C:\Program Files\Microsoft Visual Studio\VB98\VB6.OLB
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1) >=6
 
}