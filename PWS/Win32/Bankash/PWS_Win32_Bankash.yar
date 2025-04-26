
rule PWS_Win32_Bankash{
	meta:
		description = "PWS:Win32/Bankash,SIGNATURE_TYPE_PEHSTR,0d 00 0c 00 0f 00 00 "
		
	strings :
		$a_01_0 = {64 75 6d 6d 79 70 6f 73 74 66 6f 72 73 75 70 65 72 62 61 74 } //2 dummypostforsuperbat
		$a_01_1 = {57 69 6e 64 6f 77 73 20 53 65 63 75 72 69 74 79 20 41 6c 65 72 74 } //1 Windows Security Alert
		$a_01_2 = {48 69 64 64 65 6e 20 50 72 6f 63 65 73 73 20 52 65 71 75 65 73 74 73 20 4e 65 74 77 6f 72 6b 20 41 63 63 65 73 73 } //1 Hidden Process Requests Network Access
		$a_01_3 = {41 6c 6c 6f 77 20 61 6c 6c 20 61 63 74 69 76 69 74 69 65 73 20 66 6f 72 20 74 68 69 73 20 61 70 70 6c 69 63 61 74 69 6f 6e } //1 Allow all activities for this application
		$a_01_4 = {63 6c 65 61 72 50 77 64 28 } //1 clearPwd(
		$a_01_5 = {77 65 73 74 70 61 63 2e } //1 westpac.
		$a_01_6 = {2a 2e 65 6d 6c } //1 *.eml
		$a_01_7 = {6b 61 73 70 65 72 73 6b 79 } //1 kaspersky
		$a_01_8 = {73 79 6d 61 6e 74 65 63 } //1 symantec
		$a_01_9 = {57 4e 65 74 45 6e 75 6d 43 61 63 68 65 64 50 61 73 73 77 6f 72 64 73 } //1 WNetEnumCachedPasswords
		$a_01_10 = {62 61 6e 6b 69 6e 67 } //1 banking
		$a_01_11 = {63 69 74 69 62 61 6e 6b 2e } //1 citibank.
		$a_01_12 = {5c 65 74 63 5c 68 6f 73 74 73 } //1 \etc\hosts
		$a_01_13 = {50 4f 50 33 20 50 61 73 73 77 6f 72 64 } //1 POP3 Password
		$a_01_14 = {4d 61 6e 61 67 65 72 5c 41 63 63 6f 75 6e 74 73 } //1 Manager\Accounts
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1) >=12
 
}