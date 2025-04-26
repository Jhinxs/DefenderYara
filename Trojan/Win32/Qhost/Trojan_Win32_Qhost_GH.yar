
rule Trojan_Win32_Qhost_GH{
	meta:
		description = "Trojan:Win32/Qhost.GH,SIGNATURE_TYPE_PEHSTR,07 00 07 00 06 00 00 "
		
	strings :
		$a_01_0 = {63 6f 70 79 20 22 22 00 6f 53 68 65 6c 6c 4c 69 6e 6b 2e 41 72 67 75 6d 65 6e 74 73 20 3d 20 22 20 2f 63 } //2
		$a_01_1 = {6f 53 68 65 6c 6c 4c 69 6e 6b 2e 49 63 6f 6e 4c 6f 63 61 74 69 6f 6e 20 3d 20 22 00 73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 22 22 20 2f 59 22 } //2
		$a_01_2 = {73 65 74 20 6f 53 68 65 6c 6c 4c 69 6e 6b 20 3d 20 57 73 68 53 68 65 6c 6c 2e 43 72 65 61 74 65 53 68 6f 72 74 63 75 74 28 22 } //2 set oShellLink = WshShell.CreateShortcut("
		$a_01_3 = {41 64 6f 62 65 20 55 70 64 61 74 65 72 2e 6c 6e 6b } //1 Adobe Updater.lnk
		$a_01_4 = {66 69 6c 65 73 79 73 2e 44 65 6c 65 74 65 46 69 6c 65 28 22 } //1 filesys.DeleteFile("
		$a_01_5 = {5c 63 68 65 63 6b 65 78 70 2e 76 62 73 22 29 } //1 \checkexp.vbs")
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=7
 
}