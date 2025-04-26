
rule Trojan_Win32_Meteit_A{
	meta:
		description = "Trojan:Win32/Meteit.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {57 00 62 00 65 00 6d 00 53 00 63 00 72 00 69 00 70 00 74 00 69 00 6e 00 67 00 2e 00 53 00 57 00 62 00 65 00 6d 00 4c 00 61 00 73 00 74 00 45 00 72 00 72 00 6f 00 72 00 5c 00 43 00 75 00 72 00 56 00 65 00 72 00 } //1 WbemScripting.SWbemLastError\CurVer
		$a_00_1 = {53 70 79 6e 65 74 52 65 70 6f 72 74 53 72 76 63 2e 61 73 6d 78 } //1 SpynetReportSrvc.asmx
		$a_02_2 = {6d 65 67 61 64 6f 6d 65 6e 2e 63 6f 6d 2f 63 6c 61 73 73 [0-02] 2f 73 2e 70 68 70 } //1
		$a_03_3 = {3c 7c 3e 61 64 76 [0-02] 3c 7c 3e } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_02_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}