
rule Worm_Win32_Braban_G{
	meta:
		description = "Worm:Win32/Braban.G,SIGNATURE_TYPE_PEHSTR_EXT,34 00 34 00 08 00 00 "
		
	strings :
		$a_80_0 = {63 3a 5c 77 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 33 32 5c 4f 53 53 4d 54 50 2e 64 6c 6c } //c:\windows\system32\OSSMTP.dll  10
		$a_00_1 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //10 MSVBVM60.DLL
		$a_00_2 = {5c 00 61 00 74 00 61 00 70 00 69 00 31 00 36 00 2e 00 73 00 79 00 73 00 } //10 \atapi16.sys
		$a_00_3 = {5c 00 70 00 72 00 69 00 76 00 61 00 64 00 61 00 } //10 \privada
		$a_80_4 = {6d 73 6d 73 67 73 } //msmsgs  10
		$a_00_5 = {61 64 64 5a 49 50 5f 49 6e 63 6c 75 64 65 46 69 6c 65 73 4e 65 77 65 72 } //1 addZIP_IncludeFilesNewer
		$a_00_6 = {61 64 64 5a 49 50 5f 49 6e 63 6c 75 64 65 46 69 6c 65 73 4f 6c 64 65 72 } //1 addZIP_IncludeFilesOlder
		$a_00_7 = {41 00 5a 00 49 00 50 00 33 00 32 00 2e 00 44 00 4c 00 4c 00 } //2 AZIP32.DLL
	condition:
		((#a_80_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_80_4  & 1)*10+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*2) >=52
 
}