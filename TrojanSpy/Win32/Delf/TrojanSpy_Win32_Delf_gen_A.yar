
rule TrojanSpy_Win32_Delf_gen_A{
	meta:
		description = "TrojanSpy:Win32/Delf.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,36 00 34 00 08 00 00 "
		
	strings :
		$a_00_0 = {8b 45 fc 8a 44 18 ff 24 0f 8b 55 f0 8a 54 32 ff 80 e2 0f 32 c2 } //50
		$a_00_1 = {57 53 41 53 74 61 72 74 75 70 } //1 WSAStartup
		$a_00_2 = {67 65 74 68 6f 73 74 6e 61 6d 65 } //1 gethostname
		$a_00_3 = {73 65 6e 64 74 6f } //1 sendto
		$a_00_4 = {72 65 63 76 66 72 6f 6d } //1 recvfrom
		$a_00_5 = {40 68 6f 74 6d 61 69 6c 2e 63 6f 6d } //1 @hotmail.com
		$a_00_6 = {40 67 6d 61 69 6c 2e 63 6f 6d } //1 @gmail.com
		$a_01_7 = {43 54 58 20 42 75 64 67 65 74 73 } //-100 CTX Budgets
	condition:
		((#a_00_0  & 1)*50+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_01_7  & 1)*-100) >=52
 
}