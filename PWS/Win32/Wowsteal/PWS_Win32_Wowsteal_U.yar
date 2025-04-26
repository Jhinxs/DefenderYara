
rule PWS_Win32_Wowsteal_U{
	meta:
		description = "PWS:Win32/Wowsteal.U,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 08 00 00 "
		
	strings :
		$a_00_0 = {53 6f 66 74 77 61 72 65 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 } //5 Software\Borland\Delphi
		$a_01_1 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //5 SeDebugPrivilege
		$a_00_2 = {2e 61 73 70 3f } //5 .asp?
		$a_00_3 = {26 70 61 73 } //5 &pas
		$a_01_4 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //5 SetWindowsHookExA
		$a_00_5 = {57 6f 57 2e 65 78 65 } //1 WoW.exe
		$a_00_6 = {57 6f 72 6c 64 20 6f 66 20 57 61 72 63 72 61 66 74 } //1 World of Warcraft
		$a_00_7 = {72 65 61 6c 6d 6c 69 73 74 2e 77 74 66 } //1 realmlist.wtf
	condition:
		((#a_00_0  & 1)*5+(#a_01_1  & 1)*5+(#a_00_2  & 1)*5+(#a_00_3  & 1)*5+(#a_01_4  & 1)*5+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=27
 
}