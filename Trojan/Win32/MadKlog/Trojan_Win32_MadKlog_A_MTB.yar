
rule Trojan_Win32_MadKlog_A_MTB{
	meta:
		description = "Trojan:Win32/MadKlog.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_01_0 = {52 45 47 20 41 44 44 20 22 48 4b 43 55 5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 22 } //1 REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
		$a_01_1 = {70 6f 77 65 72 73 68 65 6c 6c 20 22 24 65 6d 61 69 6c 53 6d 74 70 53 65 72 76 65 72 20 3d 20 5c 22 73 6d 74 70 2e 67 6d 61 69 6c 2e 63 6f 6d 5c 22 3b } //1 powershell "$emailSmtpServer = \"smtp.gmail.com\";
		$a_01_2 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 43 00 20 00 70 00 69 00 6e 00 67 00 20 00 6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 20 00 2d 00 6e 00 20 00 31 00 20 00 2d 00 77 00 20 00 33 00 30 00 30 00 30 00 20 00 3e 00 20 00 4e 00 75 00 6c 00 20 00 26 00 20 00 44 00 65 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 71 00 20 00 22 00 25 00 73 00 22 00 } //1 cmd.exe /C ping localhost -n 1 -w 3000 > Nul & Del /f /q "%s"
		$a_01_3 = {4b 65 79 4c 6f 67 67 65 72 5c 52 65 6c 65 61 73 65 5c 4b 65 79 4c 6f 67 67 65 72 2e 70 64 62 } //1 KeyLogger\Release\KeyLogger.pdb
		$a_01_4 = {4b 65 79 50 72 65 73 73 65 73 2e 74 78 74 } //1 KeyPresses.txt
		$a_01_5 = {45 78 65 20 69 73 20 6e 6f 74 20 69 6e 20 61 70 70 64 61 74 61 } //1 Exe is not in appdata
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=3
 
}