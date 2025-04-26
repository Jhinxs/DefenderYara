
rule TrojanSpy_Win32_Ldpinch_UQ{
	meta:
		description = "TrojanSpy:Win32/Ldpinch.UQ,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 75 62 6a 65 63 74 3a 20 50 61 73 73 77 6f 72 64 73 20 66 72 6f 6d 20 6c 64 2d 70 69 6e 63 68 20 28 25 73 29 } //1 Subject: Passwords from ld-pinch (%s)
		$a_01_1 = {53 75 62 6a 65 63 74 3a 20 54 65 73 74 20 66 72 6f 6d 20 6c 64 2d 70 69 6e 63 68 } //1 Subject: Test from ld-pinch
		$a_01_2 = {5c 50 69 6e 63 68 2e 65 78 65 20 50 69 6e 63 68 2e 6f 62 6a 20 72 73 72 63 2e 6f 62 6a 00 00 } //1
		$a_01_3 = {44 65 63 72 79 70 74 20 4d 53 20 4f 75 74 6c 6f 6f 6b 2f 4f 75 74 6c 6f 6f 6b 20 45 78 70 72 65 73 73 20 70 61 73 73 77 6f 72 64 73 2e } //1 Decrypt MS Outlook/Outlook Express passwords.
		$a_01_4 = {50 69 6e 63 68 2e 65 78 65 00 00 00 43 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}