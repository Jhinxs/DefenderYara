
rule Backdoor_Win32_VB_E{
	meta:
		description = "Backdoor:Win32/VB.E,SIGNATURE_TYPE_PEHSTR_EXT,2e 00 2c 00 09 00 00 "
		
	strings :
		$a_01_0 = {49 53 75 62 63 6c 61 73 73 69 6e 67 53 69 6e 6b } //10 ISubclassingSink
		$a_01_1 = {62 79 74 4d 65 73 73 61 67 65 } //10 bytMessage
		$a_01_2 = {62 79 74 50 61 73 73 77 6f 72 64 } //10 bytPassword
		$a_00_3 = {5c 00 6c 00 69 00 76 00 65 00 2e 00 65 00 78 00 65 00 20 00 4b 00 } //10 \live.exe K
		$a_00_4 = {5c 00 6c 00 69 00 76 00 65 00 2e 00 65 00 78 00 65 00 20 00 45 00 55 00 } //2 \live.exe EU
		$a_00_5 = {5c 00 6c 00 69 00 76 00 65 00 2e 00 65 00 78 00 65 00 20 00 53 00 } //2 \live.exe S
		$a_01_6 = {72 65 63 65 62 65 5f 62 79 74 65 73 5f 73 6e 69 66 66 61 64 6f 73 } //2 recebe_bytes_sniffados
		$a_01_7 = {57 53 41 41 73 79 6e 63 47 65 74 53 65 72 76 42 79 50 6f 72 74 } //1 WSAAsyncGetServByPort
		$a_01_8 = {57 53 41 41 73 79 6e 63 47 65 74 50 72 6f 74 6f 42 79 4e 75 6d 62 65 72 } //1 WSAAsyncGetProtoByNumber
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*2+(#a_00_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=44
 
}