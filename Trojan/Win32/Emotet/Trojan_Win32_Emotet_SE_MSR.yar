
rule Trojan_Win32_Emotet_SE_MSR{
	meta:
		description = "Trojan:Win32/Emotet.SE!MSR,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {2d 46 55 43 25 } //1 -FUC%
		$a_01_1 = {4c 6f 63 6b 57 69 6e 64 6f 77 55 70 64 61 74 65 } //1 LockWindowUpdate
		$a_01_2 = {43 00 68 00 69 00 6c 00 64 00 43 00 6f 00 75 00 6e 00 74 00 } //1 ChildCount
		$a_01_3 = {4e 6f 4e 65 74 43 6f 6e 6e 65 63 74 44 69 73 63 6f 6e 6e 65 63 74 } //1 NoNetConnectDisconnect
		$a_01_4 = {4c 69 6e 6b 69 6e 67 44 6f 63 } //1 LinkingDoc
		$a_01_5 = {4e 6f 52 65 63 65 6e 74 44 6f 63 73 48 69 73 74 6f 72 79 } //1 NoRecentDocsHistory
		$a_01_6 = {45 00 72 00 61 00 73 00 65 00 20 00 65 00 76 00 65 00 72 00 79 00 74 00 68 00 69 00 6e 00 67 00 } //1 Erase everything
		$a_01_7 = {73 00 70 00 69 00 72 00 6f 00 2e 00 45 00 58 00 45 00 } //1 spiro.EXE
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}