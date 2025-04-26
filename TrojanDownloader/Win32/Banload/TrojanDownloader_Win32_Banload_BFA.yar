
rule TrojanDownloader_Win32_Banload_BFA{
	meta:
		description = "TrojanDownloader:Win32/Banload.BFA,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 45 4c 45 43 54 20 2a 20 46 52 4f 4d 20 41 6e 74 69 56 69 72 75 73 50 72 6f 64 75 63 74 } //1 SELECT * FROM AntiVirusProduct
		$a_01_1 = {77 69 6e 6d 67 6d 74 73 3a 5c 5c 6c 6f 63 61 6c 68 6f 73 74 5c 72 6f 6f 74 5c 53 65 63 75 72 69 74 79 43 65 6e 74 65 72 32 } //1 winmgmts:\\localhost\root\SecurityCenter2
		$a_01_2 = {63 6d 64 2e 65 78 65 20 2f 63 20 62 69 74 73 61 64 6d 69 6e 20 2f 74 72 61 6e 73 66 65 72 20 25 52 41 4e 44 4f 4d 25 20 2f 44 6f 77 6e 6c 6f 61 64 20 2f 50 52 49 4f 52 49 54 59 20 48 49 47 48 } //1 cmd.exe /c bitsadmin /transfer %RANDOM% /Download /PRIORITY HIGH
		$a_01_3 = {41 44 44 20 48 4b 4c 4d 5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 20 2f 76 } //1 ADD HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v
		$a_01_4 = {63 6d 64 20 2f 63 20 73 65 74 78 2e 65 78 65 20 55 50 4c 4b 56 41 52 49 41 42 4c 45 } //1 cmd /c setx.exe UPLKVARIABLE
		$a_01_5 = {61 48 52 35 63 44 6f 76 4c } //1 aHR5cDovL
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}