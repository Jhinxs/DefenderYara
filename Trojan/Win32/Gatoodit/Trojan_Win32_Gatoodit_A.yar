
rule Trojan_Win32_Gatoodit_A{
	meta:
		description = "Trojan:Win32/Gatoodit.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 05 00 00 "
		
	strings :
		$a_03_0 = {68 bd 01 00 00 e8 ?? ?? ff ff 66 89 45 ee 6a 10 8d 45 ec 50 53 e8 } //1
		$a_03_1 = {68 5c 11 00 00 e8 ?? ?? ff ff 66 89 45 ee 6a 10 8d 45 ec 50 53 e8 } //1
		$a_01_2 = {8b 55 f8 80 7c 02 ff 2e 75 d7 } //1
		$a_01_3 = {65 63 68 6f 20 53 65 74 20 57 73 68 53 68 65 6c 6c 20 3d 20 57 53 63 72 69 70 74 2e 43 72 65 61 74 65 4f 62 6a 65 63 74 20 28 5e 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 5e 22 29 20 3e 3e 20 43 3a 5c 31 2e 76 62 73 } //1 echo Set WshShell = WScript.CreateObject (^"WScript.Shell^") >> C:\1.vbs
		$a_01_4 = {65 63 68 6f 20 57 73 68 53 68 65 6c 6c 2e 52 75 6e 28 5e 22 63 3a 5c 66 69 6c 65 2e 65 78 65 5e 22 29 20 3e 3e 20 43 3a 5c 31 2e 76 62 73 } //1 echo WshShell.Run(^"c:\file.exe^") >> C:\1.vbs
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=3
 
}