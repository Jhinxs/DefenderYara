
rule Worm_Win32_Ainslot_A{
	meta:
		description = "Worm:Win32/Ainslot.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 0b 00 00 "
		
	strings :
		$a_01_0 = {6d 6f 64 53 70 72 65 61 64 } //1 modSpread
		$a_01_1 = {6d 6f 64 53 6f 63 6b 65 74 4d 61 73 74 65 72 } //1 modSocketMaster
		$a_01_2 = {6d 6f 64 49 43 61 6c 6c 42 61 63 6b } //1 modICallBack
		$a_01_3 = {6d 6f 64 50 57 73 } //1 modPWs
		$a_01_4 = {6d 6f 64 49 6e 66 65 63 74 } //1 modInfect
		$a_01_5 = {6d 6f 64 53 6e 69 66 66 } //1 modSniff
		$a_01_6 = {63 6c 73 4d 53 4e 70 77 } //1 clsMSNpw
		$a_01_7 = {63 6c 73 4d 53 4e 70 77 73 } //1 clsMSNpws
		$a_01_8 = {74 6d 72 53 63 72 65 65 6e 73 68 6f 74 } //1 tmrScreenshot
		$a_01_9 = {53 00 74 00 61 00 6e 00 64 00 61 00 72 00 64 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 20 00 2f 00 76 00 20 00 22 00 44 00 6f 00 4e 00 6f 00 74 00 41 00 6c 00 6c 00 6f 00 77 00 45 00 78 00 63 00 65 00 70 00 74 00 69 00 6f 00 6e 00 73 00 22 00 } //1 StandardProfile /v "DoNotAllowExceptions"
		$a_01_10 = {49 00 4d 00 57 00 69 00 6e 00 64 00 6f 00 77 00 43 00 6c 00 61 00 73 00 73 00 } //1 IMWindowClass
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=7
 
}