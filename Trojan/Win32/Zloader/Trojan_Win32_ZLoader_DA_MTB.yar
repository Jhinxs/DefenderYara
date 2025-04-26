
rule Trojan_Win32_ZLoader_DA_MTB{
	meta:
		description = "Trojan:Win32/ZLoader.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {43 3a 5c 54 45 4d 50 5c 49 58 50 30 30 30 2e 54 4d 50 5c } //1 C:\TEMP\IXP000.TMP\
		$a_81_1 = {72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 25 73 61 64 76 70 61 63 6b 2e 64 6c 6c 2c 44 65 6c 4e 6f 64 65 52 75 6e 44 4c 4c 33 32 20 22 25 73 22 } //1 rundll32.exe %sadvpack.dll,DelNodeRunDLL32 "%s"
		$a_81_2 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 4f 6e 63 65 } //1 Software\Microsoft\Windows\CurrentVersion\RunOnce
		$a_81_3 = {63 6d 64 20 2f 63 20 74 69 6d 2e 62 61 74 } //1 cmd /c tim.bat
		$a_81_4 = {43 6f 6d 6d 61 6e 64 2e 63 6f 6d 20 2f 63 20 25 73 } //1 Command.com /c %s
		$a_81_5 = {47 65 74 54 65 6d 70 50 61 74 68 41 } //1 GetTempPathA
		$a_81_6 = {44 6f 49 6e 66 49 6e 73 74 61 6c 6c } //1 DoInfInstall
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}