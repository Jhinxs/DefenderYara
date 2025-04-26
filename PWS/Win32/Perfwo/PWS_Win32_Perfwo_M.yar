
rule PWS_Win32_Perfwo_M{
	meta:
		description = "PWS:Win32/Perfwo.M,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 "
		
	strings :
		$a_01_0 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //1 WriteProcessMemory
		$a_01_1 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //1 CreateRemoteThread
		$a_00_2 = {64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //1 drivers\etc\hosts
		$a_00_3 = {24 24 74 6d 70 2e 62 61 74 } //1 $$tmp.bat
		$a_00_4 = {45 78 70 6c 6f 72 65 72 2e 65 78 65 20 63 72 73 2e 65 78 65 } //1 Explorer.exe crs.exe
		$a_00_5 = {ff ff ff ff 0b 00 00 00 49 50 41 52 4d 4f 52 2e 45 58 45 00 ff ff ff ff 0b 00 00 00 52 41 56 54 41 53 4b 2e 45 58 45 00 ff ff ff ff 07 00 00 00 52 41 56 2e 45 58 45 00 } //1
		$a_00_6 = {45 4c 45 4d 45 4e 54 43 4c 49 45 4e 54 2e 45 58 45 } //1 ELEMENTCLIENT.EXE
		$a_00_7 = {ff ff ff ff 0c 00 00 00 45 58 50 4c 4f 52 45 52 2e 45 58 45 00 00 00 00 ff ff ff ff 0d 00 00 00 77 69 6e 73 6f 63 6b 30 31 2e 64 6c 6c 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=6
 
}