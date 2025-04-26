
rule Trojan_Win32_Farfli_MAD_MTB{
	meta:
		description = "Trojan:Win32/Farfli.MAD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {63 20 70 69 6e 67 20 31 32 37 2e 30 2e 30 2e 31 20 2d 6e 20 31 20 26 26 20 64 65 6c 20 2f 66 2f 71 20 } //1 c ping 127.0.0.1 -n 1 && del /f/q 
		$a_01_1 = {70 6f 73 74 2e 66 32 70 6f 6f 6c 2e 69 6e 66 6f } //1 post.f2pool.info
		$a_01_2 = {53 6c 65 65 70 } //1 Sleep
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 53 76 63 68 6f 73 74 } //1 SOFTWARE\Microsoft\Windows NT\CurrentVersion\Svchost
		$a_01_4 = {4c 6f 61 64 46 72 6f 6d 4d 65 6d 6f 72 79 20 45 4e 44 2d 2d 2d } //1 LoadFromMemory END---
		$a_01_5 = {4f 70 65 6e 50 72 6f 78 79 } //1 OpenProxy
		$a_01_6 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //1 CreateToolhelp32Snapshot
		$a_01_7 = {50 72 6f 63 65 73 73 33 32 46 69 72 73 74 } //1 Process32First
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}