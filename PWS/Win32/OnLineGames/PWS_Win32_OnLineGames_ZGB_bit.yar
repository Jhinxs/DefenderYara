
rule PWS_Win32_OnLineGames_ZGB_bit{
	meta:
		description = "PWS:Win32/OnLineGames.ZGB!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {46 69 6c 65 43 6f 70 79 2c 20 25 41 5f 53 63 72 69 70 74 46 75 6c 6c 50 61 74 68 25 2c 20 25 41 5f 53 74 61 72 74 75 70 25 5c 4d 69 63 72 6f 73 6f 66 74 20 53 65 63 75 72 69 74 79 2e 65 78 65 } //2 FileCopy, %A_ScriptFullPath%, %A_Startup%\Microsoft Security.exe
		$a_01_1 = {52 65 67 57 72 69 74 65 2c 20 52 45 47 5f 53 5a 2c 20 48 4b 43 55 2c 20 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1 RegWrite, REG_SZ, HKCU, Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_2 = {46 69 6c 65 53 65 74 41 74 74 72 69 62 2c 20 2b 48 2b 53 2c 20 25 41 5f 53 63 72 69 70 74 46 75 6c 6c 50 61 74 68 25 } //1 FileSetAttrib, +H+S, %A_ScriptFullPath%
		$a_01_3 = {69 66 20 63 6c 69 70 62 6f 61 72 64 20 63 6f 6e 74 61 69 6e 73 20 2f 74 72 61 64 65 6f 66 66 65 72 2f 6e 65 77 2f 3f 70 61 72 74 6e 65 72 3d } //1 if clipboard contains /tradeoffer/new/?partner=
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}