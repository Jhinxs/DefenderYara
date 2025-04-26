
rule TrojanDownloader_Win32_Stealer_HSG_MSR{
	meta:
		description = "TrojanDownloader:Win32/Stealer.HSG!MSR,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {70 6f 77 65 72 73 68 65 6c 6c 2e 65 78 65 20 49 6e 76 6f 6b 65 2d 57 65 62 52 65 71 75 65 73 74 20 2d 55 72 69 [0-20] 72 73 73 2e 66 62 76 69 64 63 64 6e 2e 63 6f 6d 2f 64 6c 2f 73 65 65 64 2f 20 2d 4f 75 74 46 69 6c 65 20 27 25 61 70 70 64 61 74 61 25 5c 73 2d 69 6e 73 74 61 6c 6c 65 72 2e 65 78 65 } //1
		$a_01_1 = {2f 56 45 52 59 53 49 4c 45 4e 54 20 2f 53 55 50 50 52 45 53 53 4d 53 47 42 4f 58 45 53 20 2f 4e 4f 52 45 53 54 41 52 54 } //1 /VERYSILENT /SUPPRESSMSGBOXES /NORESTART
		$a_01_2 = {43 3a 5c 54 45 4d 50 5c 63 6f 6e 66 69 67 2e 63 6d 64 } //1 C:\TEMP\config.cmd
		$a_01_3 = {64 65 6c 20 2f 46 20 2f 51 20 22 25 61 70 70 64 61 74 61 25 5c 73 2d 69 6e 73 74 61 6c 6c 65 72 2e 65 78 65 } //1 del /F /Q "%appdata%\s-installer.exe
		$a_01_4 = {43 3a 5c 55 73 65 72 73 5c 4f 53 5c 44 65 73 6b 74 6f 70 5c 73 63 73 65 65 64 5c 52 65 6c 65 61 73 65 5c 73 63 73 65 65 64 2e 70 64 62 } //1 C:\Users\OS\Desktop\scseed\Release\scseed.pdb
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}