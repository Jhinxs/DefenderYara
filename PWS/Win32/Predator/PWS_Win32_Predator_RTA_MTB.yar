
rule PWS_Win32_Predator_RTA_MTB{
	meta:
		description = "PWS:Win32/Predator.RTA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {53 45 4c 45 43 54 20 68 6f 73 74 2c 20 69 73 48 74 74 70 4f 6e 6c 79 2c 20 70 61 74 68 2c 20 69 73 53 65 63 75 72 65 2c 20 65 78 70 69 72 79 2c 20 6e 61 6d 65 2c 20 76 61 6c 75 65 20 46 52 4f 4d 20 6d 6f 7a 5f 63 6f 6f 6b 69 65 73 } //1 SELECT host, isHttpOnly, path, isSecure, expiry, name, value FROM moz_cookies
		$a_01_1 = {43 6f 6f 6b 69 65 73 5c 25 73 5f 25 73 2e 74 78 74 } //1 Cookies\%s_%s.txt
		$a_01_2 = {47 65 74 4b 65 79 62 6f 61 72 64 4c 61 79 6f 75 74 4c 69 73 74 } //1 GetKeyboardLayoutList
		$a_01_3 = {6b 65 79 73 74 6f 72 65 } //1 keystore
		$a_01_4 = {48 69 73 74 6f 72 79 5c 25 73 5f 25 73 2e 74 78 74 } //1 History\%s_%s.txt
		$a_01_5 = {53 45 4c 45 43 54 20 66 69 65 6c 64 6e 61 6d 65 2c 20 76 61 6c 75 65 20 46 52 4f 4d 20 6d 6f 7a 5f 66 6f 72 6d 68 69 73 74 6f 72 79 } //1 SELECT fieldname, value FROM moz_formhistory
		$a_01_6 = {50 4b 31 31 53 44 52 5f 44 65 63 72 79 70 74 } //1 PK11SDR_Decrypt
		$a_01_7 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //1 CreateToolhelp32Snapshot
		$a_00_8 = {66 00 69 00 6c 00 65 00 73 00 5c 00 69 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 2e 00 74 00 78 00 74 00 } //1 files\information.txt
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_00_8  & 1)*1) >=9
 
}