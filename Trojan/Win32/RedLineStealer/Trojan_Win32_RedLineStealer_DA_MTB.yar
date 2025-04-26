
rule Trojan_Win32_RedLineStealer_DA_MTB{
	meta:
		description = "Trojan:Win32/RedLineStealer.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_81_0 = {63 6d 64 20 2f 63 20 73 74 61 72 74 20 63 6c 72 5f 73 6f 66 74 2e 65 78 65 20 26 20 73 74 61 72 74 20 72 65 64 6c 69 6e 65 5f 2e 65 78 65 } //1 cmd /c start clr_soft.exe & start redline_.exe
		$a_81_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 4f 6e 63 65 } //1 Software\Microsoft\Windows\CurrentVersion\RunOnce
		$a_81_2 = {77 65 78 74 72 61 63 74 2e 70 64 62 } //1 wextract.pdb
		$a_81_3 = {44 65 63 72 79 70 74 46 69 6c 65 41 } //1 DecryptFileA
		$a_81_4 = {47 65 74 54 65 6d 70 50 61 74 68 41 } //1 GetTempPathA
		$a_81_5 = {44 65 66 61 75 6c 74 49 6e 73 74 61 6c 6c } //1 DefaultInstall
		$a_81_6 = {52 65 62 6f 6f 74 } //1 Reboot
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}