
rule TrojanSpy_Win32_Keyleto_A{
	meta:
		description = "TrojanSpy:Win32/Keyleto.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {47 65 74 41 73 79 6e 63 4b 65 79 53 74 61 74 65 } //1 GetAsyncKeyState
		$a_00_1 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 } //1 Windows\CurrentVersion\Run\Network
		$a_00_2 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 2e 00 65 00 78 00 65 00 } //1 C:\WINDOWS\Network.exe
		$a_00_3 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 } //1 DisableRegistryTools
		$a_00_4 = {41 00 4e 00 44 00 41 00 20 00 54 00 45 00 52 00 48 00 55 00 42 00 55 00 4e 00 47 00 } //1 ANDA TERHUBUNG
	condition:
		((#a_01_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}