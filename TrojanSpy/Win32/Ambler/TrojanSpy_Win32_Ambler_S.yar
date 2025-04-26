
rule TrojanSpy_Win32_Ambler_S{
	meta:
		description = "TrojanSpy:Win32/Ambler.S,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 08 00 00 "
		
	strings :
		$a_01_0 = {8b c5 8b d8 8b d3 8b c2 8b c1 33 d9 33 d1 8b c3 03 c2 e2 ec } //1
		$a_01_1 = {8b 44 24 08 f7 d0 23 44 24 04 c3 8b 44 24 04 f7 d0 23 44 24 08 c3 8b 44 24 04 0b 44 24 08 c3 } //1
		$a_01_2 = {8d 56 fb 89 50 01 0f b6 c9 c6 40 05 e9 8d 4c 31 f6 89 48 06 8d 47 0a } //1
		$a_01_3 = {2b fe ff 75 fc 83 ef 05 c6 06 e9 89 7e 01 6a 05 } //1
		$a_01_4 = {88 46 01 8b 45 08 83 c6 03 83 c4 18 03 c6 83 c7 03 3b 45 fc 72 } //2
		$a_01_5 = {2a 2a 2a 47 52 41 42 42 45 44 20 42 41 4c 41 4e 43 45 2a 2a 2a } //2 ***GRABBED BALANCE***
		$a_01_6 = {70 72 69 76 61 63 79 2e 63 6c 65 61 72 4f 6e 53 68 75 74 64 6f 77 6e 2e 63 6f 6f 6b 69 65 73 22 2c 20 66 61 6c 73 65 } //1 privacy.clearOnShutdown.cookies", false
		$a_01_7 = {73 65 63 75 72 69 74 79 2e 77 61 72 6e 5f 73 75 62 6d 69 74 5f 69 6e 73 65 63 75 72 65 22 2c 66 61 6c 73 65 } //1 security.warn_submit_insecure",false
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=7
 
}