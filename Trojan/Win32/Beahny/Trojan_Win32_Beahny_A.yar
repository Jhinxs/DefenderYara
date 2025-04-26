
rule Trojan_Win32_Beahny_A{
	meta:
		description = "Trojan:Win32/Beahny.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {64 65 6c 20 2f 66 20 2f 71 20 22 25 73 22 20 63 6d 64 20 2f 63 20 73 74 61 72 74 20 2f 62 20 20 2f 72 75 20 73 79 73 74 65 6d 20 2f 73 63 20 40 65 63 68 6f 20 6f 66 66 } //1 del /f /q "%s" cmd /c start /b  /ru system /sc @echo off
		$a_01_1 = {26 73 63 68 74 61 73 6b 73 20 2f 57 69 6e 64 6f 77 73 20 53 65 72 76 65 72 20 32 65 74 63 6f 6e 6e 65 63 74 69 6f 6e 69 64 21 3d 6c 65 7c 66 69 6e 64 73 74 72 20 52 55 4e 4e 49 47 65 74 4e 61 74 69 76 65 53 79 } //1 &schtasks /Windows Server 2etconnectionid!=le|findstr RUNNIGetNativeSy
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {43 3a 5c 5c 77 69 6e 64 6f 77 73 5c 74 65 6d 70 } //1 C:\\windows\temp
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}