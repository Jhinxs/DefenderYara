
rule TrojanDownloader_Win32_Sinis_C{
	meta:
		description = "TrojanDownloader:Win32/Sinis.C,SIGNATURE_TYPE_PEHSTR,09 00 09 00 07 00 00 "
		
	strings :
		$a_01_0 = {49 6e 73 74 61 6c 6c 61 74 69 6f 6e 20 41 62 6f 72 74 65 64 } //4 Installation Aborted
		$a_01_1 = {5c 6d 65 73 73 65 6e 67 65 72 2e 65 78 65 } //2 \messenger.exe
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {63 72 79 6f 2d 75 70 64 61 74 65 2e 63 61 2f } //1 cryo-update.ca/
		$a_01_4 = {73 74 61 72 74 61 6c 69 61 6e 63 65 2e 69 6e 66 6f 2f } //1 startaliance.info/
		$a_01_5 = {64 72 69 76 65 72 75 70 64 73 65 72 76 65 72 73 2e 6e 65 74 2f } //1 driverupdservers.net/
		$a_01_6 = {2f 63 66 67 2f 63 72 79 70 74 31 2e 70 68 70 3f 69 64 3d } //1 /cfg/crypt1.php?id=
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=9
 
}