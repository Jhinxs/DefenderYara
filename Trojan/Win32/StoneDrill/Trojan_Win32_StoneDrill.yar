
rule Trojan_Win32_StoneDrill{
	meta:
		description = "Trojan:Win32/StoneDrill,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {5c 31 33 39 33 30 33 30 38 5c 42 6f 74 5f 37 30 5f 46 49 58 20 48 45 41 44 45 52 5f 46 49 58 5f 4c 4f 4e 47 55 52 4c 20 37 33 5f 53 74 61 62 6c 65 41 6e 64 4e 65 77 50 72 6f 74 6f 63 6f 6c 20 2d 20 6c 6f 67 69 6e 20 61 6c 6c 5c 52 65 6c 65 61 73 65 5c 42 6f 74 2e 70 64 62 } //1 \13930308\Bot_70_FIX HEADER_FIX_LONGURL 73_StableAndNewProtocol - login all\Release\Bot.pdb
		$a_01_1 = {63 6d 64 20 2f 63 20 52 45 47 20 44 45 4c 45 54 45 20 48 4b 4c 4d 5c 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 20 2f 76 20 25 73 20 2f 66 } //1 cmd /c REG DELETE HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v %s /f
		$a_01_2 = {44 4c 4c 20 46 61 69 6c 65 64 20 54 6f 20 4c 6f 61 64 21 20 63 6f 64 65 72 } //1 DLL Failed To Load! coder
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}