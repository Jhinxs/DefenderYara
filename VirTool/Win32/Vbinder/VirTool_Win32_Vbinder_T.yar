
rule VirTool_Win32_Vbinder_T{
	meta:
		description = "VirTool:Win32/Vbinder.T,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 4d 00 65 00 72 00 74 00 2e 00 4d 00 45 00 52 00 54 00 4b 00 41 00 4e 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 50 00 6f 00 69 00 73 00 6f 00 6e 00 20 00 43 00 72 00 79 00 70 00 74 00 65 00 72 00 20 00 20 00 66 00 72 00 65 00 65 00 5c 00 53 00 74 00 75 00 62 00 5c 00 53 00 74 00 75 00 62 00 2e 00 76 00 62 00 70 00 } //1 Documents and Settings\Mert.MERTKAN\Desktop\Poison Crypter  free\Stub\Stub.vbp
		$a_01_1 = {4d 00 65 00 74 00 61 00 6c 00 6c 00 69 00 63 00 61 00 } //1 Metallica
		$a_01_2 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}