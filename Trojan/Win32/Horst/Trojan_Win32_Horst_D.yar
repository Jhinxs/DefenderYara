
rule Trojan_Win32_Horst_D{
	meta:
		description = "Trojan:Win32/Horst.D,SIGNATURE_TYPE_PEHSTR_EXT,20 00 16 00 07 00 00 "
		
	strings :
		$a_02_0 = {5c 53 50 72 6f 6a 5c 52 65 67 69 73 74 72 61 72 5c [0-40] 5c 52 65 6c 65 61 73 65 5c [0-20] 2e 70 64 62 } //10
		$a_02_1 = {7b 25 4c 49 4e 4b 7d 90 05 04 01 00 3c 2f 53 55 42 4a 3e 90 05 04 01 00 3c 53 55 42 4a 90 05 04 01 00 42 4f 44 59 90 05 04 01 00 41 54 54 41 43 48 90 05 04 01 00 53 55 42 4a } //10
		$a_01_2 = {61 64 64 43 6f 6f 6b 69 65 20 45 72 72 6f 72 } //5 addCookie Error
		$a_01_3 = {67 65 74 4d 61 69 6c 73 53 74 61 74 75 73 20 45 72 72 6f 72 } //5 getMailsStatus Error
		$a_01_4 = {67 65 74 52 65 71 75 65 73 74 49 64 46 72 6f 6d 43 6f 6f 6b 69 65 73 20 45 72 72 6f 72 } //5 getRequestIdFromCookies Error
		$a_01_5 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 } //1 Software\Microsoft\Windows\CurrentVersion\Internet Settings
		$a_01_6 = {69 6e 6e 65 72 5f 78 6d 6c 00 00 00 74 61 67 5f 6e 61 6d 65 } //1
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*5+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=22
 
}