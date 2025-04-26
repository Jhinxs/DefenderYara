
rule HackTool_Win32_Appcrack{
	meta:
		description = "HackTool:Win32/Appcrack,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {43 72 61 63 6b 49 74 5f 43 6c 69 63 6b } //1 CrackIt_Click
		$a_01_1 = {77 69 6e 72 74 5f 63 72 61 63 6b 69 6e 67 5c } //1 winrt_cracking\
		$a_01_2 = {42 72 75 74 65 44 69 67 5f 43 6c 69 63 6b } //1 BruteDig_Click
		$a_01_3 = {44 00 69 00 67 00 20 00 66 00 6f 00 72 00 20 00 2e 00 61 00 70 00 70 00 78 00 20 00 55 00 52 00 4c 00 73 00 } //1 Dig for .appx URLs
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}
rule HackTool_Win32_Appcrack_2{
	meta:
		description = "HackTool:Win32/Appcrack,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {5b 00 57 00 73 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 43 00 72 00 6b 00 5d 00 20 00 25 00 73 00 } //1 [WsServiceCrk] %s
		$a_01_1 = {57 00 53 00 4c 00 69 00 63 00 65 00 6e 00 73 00 69 00 6e 00 67 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 2d 00 4c 00 4f 00 42 00 53 00 69 00 64 00 65 00 6c 00 6f 00 61 00 64 00 69 00 6e 00 67 00 41 00 63 00 74 00 69 00 76 00 61 00 74 00 65 00 64 00 } //1 WSLicensingService-LOBSideloadingActivated
		$a_01_2 = {66 00 61 00 6b 00 69 00 6e 00 67 00 20 00 44 00 73 00 52 00 6f 00 6c 00 65 00 47 00 65 00 74 00 50 00 72 00 69 00 6d 00 61 00 72 00 79 00 44 00 6f 00 6d 00 61 00 69 00 6e 00 49 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 20 00 72 00 65 00 73 00 75 00 6c 00 74 00 } //1 faking DsRoleGetPrimaryDomainInformation result
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule HackTool_Win32_Appcrack_3{
	meta:
		description = "HackTool:Win32/Appcrack,SIGNATURE_TYPE_PEHSTR,0c 00 0c 00 04 00 00 "
		
	strings :
		$a_01_0 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 53 00 74 00 6f 00 72 00 65 00 20 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 63 00 72 00 61 00 63 00 6b 00 } //1 Windows Store service crack
		$a_01_1 = {57 00 53 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 63 00 72 00 61 00 63 00 6b 00 20 00 77 00 61 00 73 00 20 00 73 00 75 00 63 00 63 00 65 00 73 00 73 00 66 00 75 00 6c 00 6c 00 79 00 20 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 65 00 64 00 20 00 21 00 } //1 WSService crack was successfully installed !
		$a_01_2 = {77 00 73 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 5f 00 63 00 72 00 6b 00 2e 00 64 00 6c 00 6c 00 } //1 wsservice_crk.dll
		$a_01_3 = {73 63 68 74 61 73 6b 73 20 2f 63 68 61 6e 67 65 20 2f 64 69 73 61 62 6c 65 20 2f 54 4e 20 22 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 57 53 5c 4c 69 63 65 6e 73 65 20 56 61 6c 69 64 61 74 69 6f 6e 22 } //10 schtasks /change /disable /TN "\Microsoft\Windows\WS\License Validation"
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*10) >=12
 
}