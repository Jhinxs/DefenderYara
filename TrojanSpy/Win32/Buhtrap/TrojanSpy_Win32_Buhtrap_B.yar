
rule TrojanSpy_Win32_Buhtrap_B{
	meta:
		description = "TrojanSpy:Win32/Buhtrap.B,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {22 65 6e 63 72 79 70 74 65 64 50 61 73 73 77 6f 72 64 22 3a 22 } //1 "encryptedPassword":"
		$a_01_1 = {73 00 69 00 67 00 6e 00 6f 00 6e 00 73 00 2e 00 73 00 71 00 6c 00 69 00 74 00 65 00 } //1 signons.sqlite
		$a_01_2 = {6f 00 75 00 74 00 6c 00 6f 00 6f 00 6b 00 20 00 61 00 63 00 63 00 6f 00 75 00 6e 00 74 00 20 00 6d 00 61 00 6e 00 61 00 67 00 65 00 72 00 20 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //1 outlook account manager passwords
		$a_01_3 = {69 00 6e 00 65 00 74 00 63 00 6f 00 6d 00 6d 00 20 00 73 00 65 00 72 00 76 00 65 00 72 00 20 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 } //1 inetcomm server passwords
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}