
rule TrojanSpy_Win32_Banker_KH{
	meta:
		description = "TrojanSpy:Win32/Banker.KH,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 4c 6f 63 61 6c 65 73 } //1 Software\Borland\Delphi\Locales
		$a_01_1 = {62 64 65 61 64 6d 69 6e 2e 65 78 65 } //1 bdeadmin.exe
		$a_01_2 = {53 43 52 53 41 56 45 2e 45 58 45 } //1 SCRSAVE.EXE
		$a_01_3 = {62 72 61 64 65 63 6f 2e 63 6f 6d 2e 62 72 2f 61 61 70 70 66 66 2f 64 65 66 61 75 6c 74 } //1 bradeco.com.br/aappff/default
		$a_01_4 = {42 72 61 64 65 73 63 6f 20 4e 65 74 20 45 6d 70 72 65 73 61 } //1 Bradesco Net Empresa
		$a_01_5 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 6c 61 6e 6d 61 6e 73 65 72 76 65 72 5c 70 61 72 61 6d 65 74 65 72 73 } //1 SYSTEM\CurrentControlSet\Services\lanmanserver\parameters
		$a_01_6 = {53 79 73 74 65 6d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 56 78 64 5c 56 4e 45 54 53 55 50 } //1 System\CurrentControlSet\Services\Vxd\VNETSUP
		$a_01_7 = {47 65 74 43 6c 69 70 62 6f 61 72 64 44 61 74 61 } //1 GetClipboardData
		$a_01_8 = {49 6e 74 65 72 6e 65 74 47 65 74 43 6f 6e 6e 65 63 74 65 64 53 74 61 74 65 } //1 InternetGetConnectedState
		$a_01_9 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //1 URLDownloadToFileA
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}