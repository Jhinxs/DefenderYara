
rule Trojan_Win32_Matcash_KU{
	meta:
		description = "Trojan:Win32/Matcash.KU,SIGNATURE_TYPE_PEHSTR,29 00 29 00 0a 00 00 "
		
	strings :
		$a_01_0 = {6d 63 62 6f 6f 2e 63 6f 6d 2f 61 63 6b 2e 70 68 70 3f 75 69 64 3d 30 30 30 30 30 30 30 30 2d 30 30 30 30 2d 31 30 33 33 2d 2d 73 73 30 30 30 30 26 76 65 72 73 69 6f 6e 3d 31 36 26 61 63 74 69 6f 6e 6e 61 6d 65 3d 5f 72 65 67 63 68 65 63 6b 26 61 63 74 69 6f 6e 3d 43 68 65 63 6b 42 75 6e 64 6c 65 } //10 mcboo.com/ack.php?uid=00000000-0000-1033--ss0000&version=16&actionname=_regcheck&action=CheckBundle
		$a_01_1 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //10 URLDownloadToFileA
		$a_01_2 = {43 72 65 61 74 65 44 69 72 65 63 74 6f 72 79 41 } //10 CreateDirectoryA
		$a_01_3 = {47 65 74 57 69 6e 64 6f 77 73 44 69 72 65 63 74 6f 72 79 41 } //10 GetWindowsDirectoryA
		$a_01_4 = {6b 65 72 6e 49 6e 73 74 61 6c 6c 2e 65 78 65 } //1 kernInstall.exe
		$a_01_5 = {6b 65 72 6e 49 6e 73 74 2e 65 78 65 } //1 kernInst.exe
		$a_01_6 = {77 69 6e 69 6e 73 74 61 6c 6c 2e 65 78 65 } //1 wininstall.exe
		$a_01_7 = {49 6e 73 74 61 6c 6c 65 75 72 2e 65 78 65 } //1 Installeur.exe
		$a_01_8 = {69 6e 73 74 61 6c 6c 5f 77 6f 72 64 73 } //1 install_words
		$a_01_9 = {49 6e 65 74 47 65 74 32 } //1 InetGet2
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=41
 
}