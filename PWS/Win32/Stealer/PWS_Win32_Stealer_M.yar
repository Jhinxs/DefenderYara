
rule PWS_Win32_Stealer_M{
	meta:
		description = "PWS:Win32/Stealer.M,SIGNATURE_TYPE_PEHSTR,0e 00 0c 00 0e 00 00 "
		
	strings :
		$a_01_0 = {5c 54 65 6d 70 5c 75 31 36 65 76 65 6e 74 2e 68 74 6d 6c } //4 \Temp\u16event.html
		$a_01_1 = {46 69 6e 64 4e 65 78 74 55 72 6c 43 61 63 68 65 45 6e 74 72 79 41 } //1 FindNextUrlCacheEntryA
		$a_01_2 = {46 74 70 50 75 74 46 69 6c 65 41 } //1 FtpPutFileA
		$a_01_3 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 53 68 65 6c 6c 20 46 6f 6c 64 65 72 73 } //1 Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders
		$a_01_4 = {57 69 6e 64 6f 77 73 4c 69 76 65 3a 6e 61 6d 65 3d 2a } //1 WindowsLive:name=*
		$a_01_5 = {50 61 73 73 70 6f 72 74 2e 4e 65 74 5c 2a } //1 Passport.Net\*
		$a_01_6 = {53 6f 66 74 77 61 72 65 5c 47 6f 6f 67 6c 65 5c 47 6f 6f 67 6c 65 20 54 61 6c 6b 5c 41 63 63 6f 75 6e 74 73 } //1 Software\Google\Google Talk\Accounts
		$a_01_7 = {5c 79 61 68 6f 6f 2e 69 6e 69 } //1 \yahoo.ini
		$a_01_8 = {5c 54 72 69 6c 6c 69 61 6e 5c 75 73 65 72 73 5c 64 65 66 61 75 6c 74 } //1 \Trillian\users\default
		$a_01_9 = {5c 53 74 65 61 6d 2e 64 6c 6c } //2 \Steam.dll
		$a_01_10 = {5c 4d 6f 7a 69 6c 6c 61 5c 46 69 72 65 66 6f 78 5c 50 72 6f 66 69 6c 65 73 5c } //1 \Mozilla\Firefox\Profiles\
		$a_01_11 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 49 6e 74 65 6c 6c 69 46 6f 72 6d 73 5c 53 74 6f 72 61 67 65 32 } //1 Software\Microsoft\Internet Explorer\IntelliForms\Storage2
		$a_01_12 = {48 54 54 50 4d 61 69 6c 20 50 61 73 73 77 6f 72 64 32 } //2 HTTPMail Password2
		$a_01_13 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 41 63 63 6f 75 6e 74 20 4d 61 6e 61 67 65 72 5c 41 63 63 6f 75 6e 74 73 } //1 Software\Microsoft\Internet Account Manager\Accounts
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*2+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*2+(#a_01_13  & 1)*1) >=12
 
}