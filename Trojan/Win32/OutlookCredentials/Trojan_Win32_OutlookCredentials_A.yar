
rule Trojan_Win32_OutlookCredentials_A{
	meta:
		description = "Trojan:Win32/OutlookCredentials.A,SIGNATURE_TYPE_CMDHSTR_EXT,64 00 32 00 05 00 00 "
		
	strings :
		$a_00_0 = {61 00 64 00 62 00 2e 00 64 00 6c 00 6c 00 } //10 adb.dll
		$a_00_1 = {43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 5f 00 52 00 75 00 6e 00 44 00 4c 00 4c 00 } //10 Control_RunDLL
		$a_00_2 = {70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //10 password
		$a_00_3 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 4f 00 66 00 66 00 69 00 63 00 65 00 2e 00 49 00 6e 00 74 00 65 00 72 00 6f 00 70 00 2e 00 4f 00 75 00 74 00 6c 00 6f 00 6f 00 6b 00 } //10 Microsoft.Office.Interop.Outlook
		$a_00_4 = {6f 00 75 00 74 00 6c 00 6f 00 6f 00 6b 00 2e 00 61 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //10 outlook.application
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10) >=50
 
}