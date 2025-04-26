
rule PWS_Win32_VB_HB{
	meta:
		description = "PWS:Win32/VB.HB,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 54 00 79 00 70 00 65 00 64 00 55 00 52 00 4c 00 73 00 } //1 Software\Microsoft\Internet Explorer\TypedURLs
		$a_01_1 = {43 4d 53 4e 4d 65 73 73 65 6e 67 65 72 50 61 73 73 77 6f 72 64 73 } //1 CMSNMessengerPasswords
		$a_01_2 = {43 4f 75 74 6c 6f 6f 6b 41 63 63 6f 75 6e 74 73 } //1 COutlookAccounts
		$a_01_3 = {54 44 69 73 61 62 6c 65 53 61 76 65 50 61 73 73 } //1 TDisableSavePass
		$a_01_4 = {43 4f 75 74 6c 6f 6f 6b 41 63 63 6f 75 6e 74 } //1 COutlookAccount
		$a_01_5 = {6c 76 4d 53 4e 4d 65 73 73 65 6e 67 65 72 } //1 lvMSNMessenger
		$a_01_6 = {54 47 65 74 59 61 68 6f 6f 43 6c 61 73 73 } //1 TGetYahooClass
		$a_01_7 = {43 49 45 37 50 61 73 73 77 6f 72 64 73 } //1 CIE7Passwords
		$a_01_8 = {59 61 68 6f 6f 50 61 73 73 77 6f 72 64 } //1 YahooPassword
		$a_01_9 = {43 49 45 50 61 73 73 77 6f 72 64 73 } //1 CIEPasswords
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}