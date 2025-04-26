
rule PWS_Win32_OnLineGames_E{
	meta:
		description = "PWS:Win32/OnLineGames.E,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_00_1 = {57 6f 6f 6f 6c 2e 64 61 74 } //1 Woool.dat
		$a_00_2 = {57 4c 2e 44 4c 4c } //1 WL.DLL
		$a_00_3 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 73 77 63 68 6f 73 74 2e 65 78 65 } //1 C:\WINDOWS\swchost.exe
		$a_00_4 = {49 47 57 2e 65 78 65 } //1 IGW.exe
		$a_01_5 = {6b 61 76 2e 58 } //1 kav.X
		$a_01_6 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}
rule PWS_Win32_OnLineGames_E_2{
	meta:
		description = "PWS:Win32/OnLineGames.E,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_00_1 = {5c 64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //1 \drivers\etc\hosts
		$a_01_2 = {67 5f 55 73 65 72 50 77 64 41 64 64 72 3a } //1 g_UserPwdAddr:
		$a_01_3 = {4c 69 62 4d 42 45 49 56 } //1 LibMBEIV
		$a_00_4 = {57 4c 2e 44 4c 4c } //1 WL.DLL
		$a_00_5 = {61 76 70 63 63 2e 65 78 } //1 avpcc.ex
		$a_00_6 = {61 6e 74 69 76 69 72 75 73 2e 65 78 } //1 antivirus.ex
		$a_00_7 = {57 72 69 74 65 46 69 6c 65 } //1 WriteFile
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=8
 
}