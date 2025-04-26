
rule Worm_Win32_Agent_U{
	meta:
		description = "Worm:Win32/Agent.U,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0c 00 07 00 00 "
		
	strings :
		$a_01_0 = {63 74 66 6d 6f 6e 2e 65 78 65 00 00 00 00 00 00 65 78 70 6c 6f 72 65 72 2e 65 78 65 00 00 00 00 5c 64 6c 6c 2e 64 6c 6c 00 00 00 00 5c 73 79 73 74 63 6d 2e 73 79 73 00 } //2
		$a_01_1 = {57 4e 65 74 45 6e 75 6d 52 65 73 6f 75 72 63 65 41 } //2 WNetEnumResourceA
		$a_01_2 = {4f 70 65 6e 50 72 6f 63 65 73 73 } //2 OpenProcess
		$a_01_3 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //2 CreateRemoteThread
		$a_01_4 = {43 6f 70 79 46 69 6c 65 41 } //2 CopyFileA
		$a_01_5 = {47 65 74 50 72 6f 63 65 73 73 57 69 6e 64 6f 77 53 74 61 74 69 6f 6e } //2 GetProcessWindowStation
		$a_01_6 = {5c c4 cf c4 fe ca d0 b9 ab ce f1 d4 b1 cc e1 d7 ca b5 c8 bc b6 b1 ea d7 bc 2e 65 78 65 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*1) >=12
 
}