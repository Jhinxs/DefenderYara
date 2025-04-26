
rule Adware_Win32_Aplugger_A{
	meta:
		description = "Adware:Win32/Aplugger.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {33 00 32 00 2e 00 65 00 78 00 65 00 } //1 32.exe
		$a_01_1 = {32 00 55 00 53 00 45 00 52 00 33 00 32 00 2e 00 44 00 4c 00 4c 00 } //1 2USER32.DLL
		$a_01_2 = {73 74 64 6f 6c 65 32 2e 74 6c 62 57 57 57 } //1 stdole2.tlbWWW
		$a_01_3 = {59 66 69 6e 64 43 68 69 6c 64 4e 61 6d 65 57 57 57 } //1 YfindChildNameWWW
		$a_01_4 = {62 73 7a 4f 62 6a 65 63 74 4e 61 6d 65 57 57 57 64 } //1 bszObjectNameWWWd
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}