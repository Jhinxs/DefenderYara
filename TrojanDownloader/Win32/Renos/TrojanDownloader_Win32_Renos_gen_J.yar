
rule TrojanDownloader_Win32_Renos_gen_J{
	meta:
		description = "TrojanDownloader:Win32/Renos.gen!J,SIGNATURE_TYPE_PEHSTR_EXT,3f 00 3f 00 0b 00 00 "
		
	strings :
		$a_00_0 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //10 ShellExecuteA
		$a_01_1 = {53 65 53 68 75 74 64 6f 77 6e 50 72 69 76 69 6c 65 67 65 } //10 SeShutdownPrivilege
		$a_00_2 = {57 69 6e 45 78 65 63 } //10 WinExec
		$a_01_3 = {57 69 6e 64 6f 77 73 20 53 61 66 65 74 79 20 41 6c 65 72 74 } //10 Windows Safety Alert
		$a_00_4 = {53 68 65 6c 6c 53 65 72 76 69 63 65 4f 62 6a 65 63 74 44 65 6c 61 79 4c 6f 61 64 } //10 ShellServiceObjectDelayLoad
		$a_00_5 = {72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 25 73 2c 77 69 6e 64 6f 77 73 } //10 rundll32.exe %s,windows
		$a_01_6 = {54 68 69 73 20 70 72 6f 67 72 61 6d 20 69 6e 73 74 61 6c 6c 20 6f 6e 20 79 6f 75 72 20 73 79 73 74 65 6d 20 61 6e 74 69 76 69 72 75 73 20 73 6f 66 74 77 61 72 65 2e } //1 This program install on your system antivirus software.
		$a_01_7 = {59 6f 75 20 6e 65 65 64 20 74 6f 20 72 65 62 6f 6f 74 20 79 6f 75 72 20 63 6f 6d 70 75 74 65 72 20 74 6f 20 66 69 6e 61 6c 69 7a 65 20 75 6e 69 6e 73 74 61 6c 6c 61 74 69 6f 6e 2e 20 52 65 62 6f 6f 74 20 6e 6f 77 3f } //1 You need to reboot your computer to finalize uninstallation. Reboot now?
		$a_01_8 = {50 6c 65 61 73 65 20 77 61 69 74 20 77 68 69 6c 65 20 53 61 66 65 74 79 20 41 6c 65 72 74 65 72 20 32 30 30 36 20 69 73 20 62 65 69 6e 67 20 75 6e 69 6e 73 74 61 6c 6c 65 64 2e 20 43 6c 6f 73 65 20 61 6c 6c 20 61 70 70 6c 69 63 61 74 69 6f 6e 73 2e } //1 Please wait while Safety Alerter 2006 is being uninstalled. Close all applications.
		$a_01_9 = {41 72 65 20 79 6f 75 20 73 75 72 65 20 79 6f 75 20 77 61 6e 74 20 74 6f 20 75 6e 69 6e 73 74 61 6c 6c 20 57 69 6e 64 6f 77 73 20 53 61 66 65 74 79 20 41 6c 65 72 74 20 66 72 6f 6d 20 79 6f 75 72 20 63 6f 6d 70 75 74 65 72 3f } //1 Are you sure you want to uninstall Windows Safety Alert from your computer?
		$a_01_10 = {59 6f 75 20 6e 65 65 64 20 74 6f 20 72 65 62 6f 6f 74 20 79 6f 75 72 20 63 6f 6d 70 75 74 65 72 20 70 72 69 6f 72 20 74 6f 20 75 6e 69 6e 73 74 61 6c 6c 61 74 69 6f 6e 2e 20 52 65 62 6f 6f 74 20 6e 6f 77 3f } //1 You need to reboot your computer prior to uninstallation. Reboot now?
	condition:
		((#a_00_0  & 1)*10+(#a_01_1  & 1)*10+(#a_00_2  & 1)*10+(#a_01_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*10+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=63
 
}