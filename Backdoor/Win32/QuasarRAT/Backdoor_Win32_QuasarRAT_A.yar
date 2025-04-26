
rule Backdoor_Win32_QuasarRAT_A{
	meta:
		description = "Backdoor:Win32/QuasarRAT.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {78 43 6c 69 65 6e 74 2e 43 6f 72 65 2e } //1 xClient.Core.
		$a_01_1 = {47 65 74 4b 65 79 6c 6f 67 67 65 72 4c 6f 67 73 } //1 GetKeyloggerLogs
		$a_01_2 = {44 6f 50 72 6f 63 65 73 73 4b 69 6c 6c } //1 DoProcessKill
		$a_01_3 = {44 6f 56 69 73 69 74 57 65 62 73 69 74 65 } //1 DoVisitWebsite
		$a_01_4 = {44 6f 55 70 6c 6f 61 64 41 6e 64 45 78 65 63 75 74 65 } //1 DoUploadAndExecute
		$a_01_5 = {44 6f 57 65 62 63 61 6d 53 74 6f 70 } //1 DoWebcamStop
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}